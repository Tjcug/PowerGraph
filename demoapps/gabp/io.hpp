#include "linear.h"
#include "../../libs/matrixmarket/mmio.h"
#include "advanced_config.h"

extern problem_setup ps;
extern advanced_config config;
extern const char * runmodesnames[];

void save_matrix_market_format();
void write_output_itpp();
void write_vec(FILE * f, int len, double * array);
FILE * load_matrix_metadata(const char * filename);
template <typename graph_type, typename vertex_data, typename edge_data>
void load_square_matrix(FILE * f, graph_type& graph, advanced_config & config);
template<typename graph_type, typename vertex_data, typename edge_data>
void load_non_square_matrix(FILE * f, graph_type& graph, advanced_config & config);


extern graphlab::glshared<double> RELATIVE_NORM_KEY;


void fill_output(graph_type * g){

  double diff = 0;
  int start = ps.m;
  if (config.square) 
    start = 0;
  for (size_t i = start; i < g->num_vertices(); i++){
    const vertex_data& vdata = g->vertex_data(i);
     if (config.algorithm == JACOBI || config.algorithm == GaBP){
       diff += pow(vdata.real - vdata.cur_mean,2);
       ps.means.push_back(vdata.cur_mean);
       ps.prec.push_back(vdata.cur_prec);
     }
     //TODO: else if (algorithm == CONJUGATE_GRADIENT)
     //   diff += pow(means[i-m] - vdata.real,2);
  }
  assert(ps.means.size() > 0);
   if (config.algorithm == JACOBI || config.algorithm == GaBP){
  std::cout << "Assuming the linear system is Ax=y, and the correct solution is x*," << runmodesnames[config.algorithm] << " converged to an accuracy norm(x-x*) of " << diff
            << " msg norm is: " << RELATIVE_NORM_KEY.get_val() << std::endl;
   }
}
void fill_output(graph_type_inv * g){

  double diff = 0;
  for (size_t i = 0; i < g->num_vertices(); i++){
    const vertex_data_inv& vdata = g->vertex_data(i);
       for (size_t j=0; j< g->num_vertices(); j++){
	 ps.means.push_back(vdata.cur_mean[j]);
       }  
       ps.prec.push_back(vdata.cur_prec);
  }
}


void write_output(){

   if (config.matrixmarket)
      save_matrix_market_format();
   else write_output_itpp();
}

void write_output_itpp(){

   FILE * f = fopen((config.datafile+".out").c_str(), "w");
   assert(f!= NULL);

   std::cout<<"Writing result to file: "<<config.datafile<<".out"<<std::endl;
   std::cout<<"You can read the file in Matlab using the load_c_gl.m matlab script"<<std::endl;
   write_vec(f, ps.means.size(), &ps.means[0]);
   if (config.algorithm == GaBP)
     write_vec(f, ps.prec.size(), &ps.prec[0]);

   fclose(f);




}


/* handle reading diagonal entries of square matrix, which are usually not edges! */
void init_prior_prec(vertex_data & data, double val){
   data.prior_prec = val;
}
void init_prior_prec(vertex_data_inv & data, double val){
   data.prior_prec = val;
}
void init_prior_prec(vertex_data_shotgun & data, double val){
  //TODOw
}




void init_vertex_data(vertex_data_inv & data, double val, int offset, int nodes, int i){
      assert(config.square);
      data.prior_mean = new sdouble[nodes];
      memset(data.prior_mean, 0, nodes*sizeof(sdouble));
      data.prior_mean[i] = 1;
      data.cur_mean = new sdouble[nodes];
      memset(data.cur_mean, 0, nodes*sizeof(sdouble));
      data.prev_mean = new sdouble[nodes];
      memset(data.prev_mean, 1, nodes*sizeof(sdouble));
}

void init_vertex_data(vertex_data_shotgun & data, double val, int offset, int nodes, int i){
      //TODO data.y = val;
      
}

void init_vertex_data(vertex_data & data, double val, int offset, int nodes, int i){
   if (offset == GABP_PRIOR_MEAN_OFFSET)
          data.prior_mean = val;
   else if (offset == GABP_REAL_OFFSET)
          data.real = val;
   else assert(false);
}

template <typename graph_type, typename vertex_data>
void load_matrix_market_vector(graph_type * g)
{
    int ret_code;
    MM_typecode matcode;
    int M, N, nz;   
    int i;

    FILE * f = fopen((config.datafile + "v").c_str(), "r");
    if (f== NULL){
	logstream(LOG_ERROR) << " can not find input file. aborting " << std::endl;
	exit(1);
    }

    if (mm_read_banner(f, &matcode) != 0)
    {
        logstream(LOG_ERROR) << "Could not process Matrix Market banner." << std::endl;
        exit(1);
    }

    /*  This is how one can screen matrix types if their application */
    /*  only supports a subset of the Matrix Market data types.      */

    if (mm_is_complex(matcode) && mm_is_matrix(matcode) && 
            mm_is_sparse(matcode) )
    {
        logstream(LOG_ERROR) << "sorry, this application does not support " << std::endl << 
          "Market Market type: " << mm_typecode_to_str(matcode) << std::endl;
        exit(1);
    }

    /* find out size of sparse matrix .... */

    if ((ret_code = mm_read_mtx_crd_size(f, &M, &N, &nz)) !=0){
       logstream(LOG_ERROR) << "failed to read matrix market cardinality size " << std::endl; 
       exit(1);
    }


    /* NOTE: when reading in doubles, ANSI C requires the use of the "l"  */
    /*   specifier as in "%lg", "%lf", "%le", otherwise errors will occur */
    /*  (ANSI C X3.159-1989, Sec. 4.9.6.2, p. 136 lines 13-15)            */

    int I,J; 
    double val;


    for (i=0; i<nz; i++)
    {
        fscanf(f, "%d %d %lg\n", &I, &J, &val);
        I--;  /* adjust from 1-based to 0-based */
        J--;
         if (config.scalerating != 1.0)
	     val /= config.scalerating;
         if (!config.zero)
	   assert(val!=0 );
        
        assert(I< M);
        assert(J< N);
        vertex_data & vdata = g->vertex_data(I);
        int offset = GABP_PRIOR_MEAN_OFFSET;
        if (!config.square && I >= (int)ps.m)
	  offset = GABP_REAL_OFFSET;
        init_vertex_data(vdata, val, offset, config.square ? ps.n : ps.m+ps.n, I);
    }
    fclose(f);

}

template<typename graph_type, typename vertex_data, typename edge_data>
void load_matrix_market_matrix(graph_type * g)
{
    int ret_code;
    MM_typecode matcode;
    int M, N, nz;   
    int i;

    FILE * f = fopen(config.datafile.c_str(), "r");
    if (f== NULL){
	logstream(LOG_ERROR) << " can not find input file. aborting " << std::endl;
	exit(1);
    }

    if (mm_read_banner(f, &matcode) != 0)
    {
        logstream(LOG_ERROR) << "Could not process Matrix Market banner." << std::endl;
        exit(1);
    }

    /*  This is how one can screen matrix types if their application */
    /*  only supports a subset of the Matrix Market data types.      */

    if (mm_is_complex(matcode) && mm_is_matrix(matcode) && 
            mm_is_sparse(matcode) )
    {
        logstream(LOG_ERROR) << "sorry, this application does not support " << std::endl << 
          "Market Market type: " << mm_typecode_to_str(matcode) << std::endl;
        exit(1);
    }

    /* find out size of sparse matrix .... */

    if ((ret_code = mm_read_mtx_crd_size(f, &M, &N, &nz)) !=0){
       logstream(LOG_ERROR) << "failed to read matrix market cardinality size " << std::endl; 
       exit(1);
    }

    ps.m = M; ps.n = N; 
    if (ps.m == ps.n)
       config.square = true;
    else 
       config.square = false;

    /* NOTE: when reading in doubles, ANSI C requires the use of the "l"  */
    /*   specifier as in "%lg", "%lf", "%le", otherwise errors will occur */
    /*  (ANSI C X3.159-1989, Sec. 4.9.6.2, p. 136 lines 13-15)            */

    int I,J; 
    double val;

    int offset = 0;
    if (!config.square)
	offset = ps.m;

    for (i=0; i<nz; i++)
    {
        fscanf(f, "%d %d %lg\n", &I, &J, &val);
        I--;  /* adjust from 1-based to 0-based */
        J--;
         if (config.scalerating != 1.0)
	     val /= config.scalerating;
         if (!config.zero)
	   assert(val!=0 );
        
        assert(I< M);
        assert(J< N);
     
        if (config.square && I == J){
	   vertex_data & data = g->vertex_data(I);
           init_prior_prec(data, val);
        }
	else {
          edge_data edge;
          init_edge_data(edge, val);
          g->add_edge(I, J+offset, edge);
          if (!config.square) { //add the reverse edge as well
        // Matlab export has ids starting from 1, ours start from 0
            g->add_edge(J+offset, I, edge);
          }
        }
        
   }
    ps.e = nz;
    fclose(f);

}

void save_matrix_market_format()
{
    MM_typecode matcode;                        
    int i,j;

    mm_initialize_typecode(&matcode);
    mm_set_matrix(&matcode);
    mm_set_coordinate(&matcode);
    mm_set_real(&matcode);

    FILE * f = fopen((config.datafile + ".x.mtx").c_str(),"w");
    assert(f != NULL);
    mm_write_banner(f, matcode); 
    mm_write_mtx_crd_size(f, ps.n, 1, ps.n);

    for (j=0; j<(int)ps.means.size(); j++)
        fprintf(f, "%d %d %10.3g\n", i+1, j+1, ps.means[j]);

    fclose(f);

    if (ps.prec.size() > 0){
      f = fopen((config.datafile + ".prec.mtx").c_str(),"w");
      assert(f != NULL);
      mm_write_banner(f, matcode); 

      mm_write_mtx_crd_size(f, ps.n, 1, ps.n);

    for (j=0; j< (int)ps.prec.size(); j++)
        if (ps.prec[j] > 0)
          fprintf(f, "%d %d %10.3g\n", i+1, j+1, ps.prec[j]);

    fclose(f);
    }

}


template<typename graph_type, typename vertex_data, typename edge_data>
void load_data(graph_type * g){

  if (config.matrixmarket){
     load_matrix_market_vector<graph_type, vertex_data>(g);
     load_matrix_market_matrix<graph_type, vertex_data, edge_data>(g);
     return; 
 }

  // Load the graph --------------------------------------------------
  FILE * f = load_matrix_metadata(config.datafile.c_str());
  if (ps.m == ps.n){ //square matrix
     config.square = true;
     load_square_matrix<graph_type, vertex_data, edge_data>(f, *g, config);
  }
  else {
     config.square = false;
     if (config.algorithm == JACOBI || config.algorithm == GaBP_INV){
        logstream(LOG_ERROR)<<" Jacobi/GaBP-INV can not run with non-square mastrix." << std::endl;
        exit(1);
     }

     load_non_square_matrix<graph_type, vertex_data, edge_data>(f, *g, config);
  }
}



#define BUFSIZE 500000
template <typename graph_type, typename vertex_data>
void read_nodes(FILE * f, int len, int offset, int nodes,
                graph_type * g){

  assert(offset>=0 && offset < len);
  assert(nodes>0);

  int toread = nodes;
  if (nodes > BUFSIZE)
    toread = BUFSIZE;
  int remain = nodes;

  while(remain > 0){
    double * temp = new double[remain];
    toread = (remain < BUFSIZE)?remain:toread;
    int rc = (int)fread(temp, sizeof(double), toread, f);
    //assert(rc == toread);
    remain -= rc;
    vertex_data data;
    for (int i=0; i< rc; i++){
      init_vertex_data(data, temp[i], offset, nodes, i);     
      g->add_vertex(data);
    }
    delete [] temp;
  }
}



//read a vector from file and return an array
double * read_vec(FILE * f, size_t len){
  double * vec = new double[len];
  assert(vec != NULL);
  fread(vec, len, sizeof(double), f);
  return vec;
}
//write an output vector to file
void write_vec(FILE * f, int len, double * array){
  assert(f != NULL && array != NULL);
  fwrite(array, len, sizeof(double), f);
}


template<typename graph>
void dispatch_vec(int start_pos, int end_pos, int offset,
                  graph * g, double * vec, int len,
                  bool free_vec = false, int d = 1){
  assert(end_pos - start_pos > 1);
  assert(len == end_pos - start_pos);
  assert(vec != NULL);
  assert(offset>=0 && offset < len);
  for (int i=start_pos; i < end_pos; i++){
    sdouble * data = (sdouble*)&g->vertex_data(i);
    for (int j=0; j<d; j++){
      data[offset+d*j] = vec[d*(i-start_pos)+j];
    }
  }
  if (free_vec)
    delete [] vec;
}

template<typename graph>
void dispatch_vec(int start_pos, int end_pos, int offset,
                  graph * g,sdouble val,int d = 1){
  assert(end_pos - start_pos > 1);
  for (int i=start_pos; i < end_pos; i++){
    sdouble * data = (sdouble*)&g->vertex_data(i);
    for (int j=0; j<d; j++)
      data[offset+d*j] = val;
  }
}



//struct for holding edge data in file
struct edata{
  float from;
  float to;
  float weight;
};

struct graphlab_cf_format{
  float from;
  float to;
  float time;
  float weight;
};

struct graphlab_old_format{
  int from;
  int to; 
  double weight;
};

void init_edge_data(edge_data & data, double val){
   data.weight = val;
   if (!config.zero)
      assert(val != 0);
}
void init_edge_data(edge_data_inv & data, double val){
      data.mean = new sdouble[ps.m];
      memset(data.mean, 0, sizeof(sdouble)*ps.m);
      data.weight =  val;
      if (!config.zero)
        assert(val != 0);
}

void init_edge_data(edge_data_shotgun & data, double val){

}

//read edges from file into the graph
template<typename edatatype, typename graph_type, typename vertex_data, typename edge_data>
int read_edges(FILE * f, int len, int offset, int nodes,
               graph_type * g, advanced_config & config, bool symmetry = false){
  assert(offset>=0 && offset < len);
  assert(nodes > 0);

  unsigned int e,g0;
  int rc = fread(&e,1,4,f);
  assert(rc == 4);
  if (!config.supportgraphlabcf){
    rc = fread(&g0,1,4,f); //zero pad
    assert(rc == 4);
    assert(g0 == 0);
  }
  printf("Creating %d edges...\n", e);
  assert(e>0);
  int total = 0;
  edatatype* ed = new edatatype[200000];
  printf("symmetry: %d\n", symmetry);
  int edgecount_in_file = e;
  if (symmetry) edgecount_in_file /= 2;
  while(true){
    memset(ed, 0, 200000*sizeof(edatatype));
    rc = (int)fread(ed, sizeof(edatatype),
                    std::min(200000, edgecount_in_file - total), f);
    total += rc;
   
    for (int i=0; i<rc; i++){
      edge_data edge; 
      init_edge_data(edge, ed[i].weight);
      assert(ed[i].from >= 1 && ed[i].from <= nodes);
      assert(ed[i].to >= 1 && ed[i].to <= nodes);
      assert(ed[i].to != ed[i].from);
  
    // Matlab export has ids starting from 1, ours start from 0
      g->add_edge(ed[i].from-1, ed[i].to-1, edge);
      if (!config.square) { //add the reverse edge as well
        // Matlab export has ids starting from 1, ours start from 0
        g->add_edge(ed[i].to-1, ed[i].from-1, edge);
      }
    }
    printf(".");
    fflush(0);
    if (rc == 0 || total >= edgecount_in_file)
      break;
  }
  delete [] ed; ed = NULL;
  return e;
}

/*
//read edges from file into the graph
template<typename edatatype>
int read_edges(FILE * f, int len, int offset, int nodes,
               graph_type * g, advanced_config & config, bool symmetry = false){
  assert(offset>=0 && offset < len);


  unsigned int e,g0;
  int rc = fread(&e,1,4,f);
  assert(rc == 4);
  if (!config.supportgraphlabcf){
    rc = fread(&g0,1,4,f); //zero pad
    assert(rc == 4);
    assert(g0 == 0);
  }
  printf("Creating %d edges...\n", e);
  assert(e>0);
  int total = 0;
  edatatype* ed = new edatatype[200000];
  printf("symmetry: %d\n", symmetry);
  int edgecount_in_file = e;
  if (symmetry) edgecount_in_file /= 2;
  while(true){
    memset(ed, 0, 200000*sizeof(edatatype));
    rc = (int)fread(ed, sizeof(edatatype),
                    std::min(200000, edgecount_in_file - total), f);
    total += rc;

    for (int i=0; i<rc; i++){
      //memset(tmp, 0, len/sizeof(sdouble));
      edge_data tmp;
      tmp.weight =  ed[i].weight;
      if (!config.zero)
        assert(ed[i].weight != 0);
      assert(ed[i].from >= 1 && ed[i].from <= nodes);
      assert(ed[i].to >= 1 && ed[i].to <= nodes);
      assert(ed[i].to != ed[i].from);
      // Matlab export has ids starting from 1, ours start from 0
      g->add_edge(ed[i].from-1, ed[i].to-1, tmp);
      if (!config.square) { //add the reverse edge as well
        // Matlab export has ids starting from 1, ours start from 0
        g->add_edge(ed[i].to-1, ed[i].from-1, tmp);
      }
    }
    printf(".");
    fflush(0);
    if (rc == 0 || total >= edgecount_in_file)
      break;
  }
  delete [] ed; ed = NULL;
  return e;
}*/

FILE * load_matrix_metadata(const char * filename){
   printf("Loading %s\n", filename);
   FILE * f = fopen(filename, "r");
   assert(f!= NULL);

   fread(&ps.m, 1, 4, f);
   fread(&ps.n, 1, 4, f);
   if (ps.n == 0) 
      ps.n=ps.m; //compatability with older file format, will be removed later
   return f;
}

/*
 *  READ A SQUARE INVERSE COV MATRIX A of size nxn
 *  Where the main digonal is the precision vector
 * */

template <typename graph_type, typename vertex_data, typename edge_data>
void load_square_matrix(FILE * f, graph_type& graph, advanced_config & config) {

  assert(ps.m == ps.n);
  assert(ps.n > 0);
  //read the observation vector y of size n
  read_nodes<graph_type,vertex_data>(f, sizeof(vertex_data)/sizeof(sdouble), GABP_PRIOR_MEAN_OFFSET,
             ps.n, &graph);

  //read the real solution of size n (if given, otherwise it is zero)
  double * real = read_vec(f, ps.n);
  if (config.algorithm == GaBP || config.algorithm == JACOBI || config.algorithm == CONJUGATE_GRADIENT)
    dispatch_vec(0,ps.n,GABP_REAL_OFFSET, &graph, real, ps.n, true);
  else delete [] real;

  //read the precition of size n (the main diagonal of the matrix A)
  double * prec = read_vec(f, ps.n);
  dispatch_vec(0,ps.n,GABP_PRIOR_PREC_OFFSET, &graph, prec, ps.n, true);

  if (config.oldformat)
    ps.e = read_edges<graphlab_old_format,graph_type, vertex_data, edge_data>(f, sizeof(edge_data)/sizeof(sdouble), 0, ps.n, &graph, config);
  else
    ps.e = read_edges<edata,graph_type, vertex_data, edge_data>(f, sizeof(edge_data)/sizeof(sdouble), 0, ps.n, &graph, config);
  fclose(f);
}

/*
 *  READ A SQUARE INVERSE COV MATRIX A of size nxn
 *  Where the main digonal is the precision vector
 * */
/*
void load_square_matrix(FILE * f, graph_type_inv& graph, advanced_config & config) {

  assert(m == n);
  assert(n > 0);
  //read the observation vector y of size n
  read_nodes(f, sizeof(vertex_data)/sizeof(sdouble), GABP_PRIOR_MEAN_OFFSET,
             n, &graph);

  //unused, skip this vector to be in the right file offset
  double * real = read_vec(f, n);
  delete[] real;

  //read the precition of size n (the main diagonal of the matrix A)
  double * prec = read_vec(f, n);
  assert(n == graph.num_vertices());
  for (int i=0; i< (int)n; i++){
     vertex_data_inv &data= graph.vertex_data(i);
     data.prior_prec = prec[i];
  }
  delete[] prec;

  e = read_edges<edata>(f, sizeof(edge_data)/sizeof(sdouble), 0, n, &graph, config);
  fclose(f);
}*/


/**
 * READ A NON-SQUARE matrix of size m rows x n cols 
 * Where the observation y is a vector of size m, the solution vector x=A\y is 
 * a vector of size n.
 */
template<typename graph_type, typename vertex_data, typename edge_data>
void load_non_square_matrix(FILE * f, graph_type& graph, advanced_config & config) {
  
  assert( ps.n > 0);
  assert(!config.square);  

  printf("Loading a non-square matrix A of size %d x %d\n", ps.m,ps.n);

  if (config.supportgraphlabcf){ //read matrix factorization file (GraphLab collabrative filtering format)
     int tmp;
     fread(&tmp, 1, 4, f); //skip over time bin number 
     vertex_data data;
     for (int i=0; i< (int)(ps.m+ps.n); i++){
       graph.add_vertex(data);
     }
     ps.e = read_edges<graphlab_cf_format, graph_type, vertex_data, edge_data>(f, sizeof(edge_data), 0, ps.n+ps.m, &graph, config);
  }
  else { //read A, x, y, from file
  
    //read y (the observation) of size m
    read_nodes<graph_type, vertex_data>(f, sizeof(vertex_data)/sizeof(sdouble),
             GABP_PRIOR_MEAN_OFFSET,ps.m,&graph);
    
    //read x (the real solution, if given) of size n
    read_nodes<graph_type, vertex_data>(f, sizeof(vertex_data)/sizeof(sdouble),
             GABP_REAL_OFFSET,ps.n,&graph);
    //read the precision vector of size m+n (of both solution and observation)
    double * prec = read_vec(f, ps.n+ps.m);
    dispatch_vec(0,ps.n+ps.m,GABP_PRIOR_PREC_OFFSET, &graph, prec, ps.n+ps.m, true);
    dispatch_vec(0,ps.n+ps.m,GABP_PREV_MEAN_OFFSET, &graph, 1);
    dispatch_vec(0,ps.n+ps.m,GABP_PREV_PREC_OFFSET, &graph, 1);
    if (config.oldformat)
       ps.e = read_edges<graphlab_old_format,graph_type, vertex_data, edge_data>(f, sizeof(edge_data), 0, ps.n+ps.m, &graph,config);
    else
       ps.e = read_edges<edata,graph_type, vertex_data, edge_data>(f, sizeof(edge_data), 0, ps.n+ps.m, &graph,config);
  } 
  fclose(f);
}

