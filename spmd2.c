#include<stdio.h>
#include<omp.h>
#include<stdlib.h>
int main(int argc, char** argv)
   {
   int id, numThreads;
   printf("\n");
   if(argc > 1) {
      omp_set_num_threads( atoi(argv[1]));
   }
   #pragma omp parallel
   {
      id = omp_get_thread_num();
      numThreads = omp_get_num_threads();
      printf("Hello from thread %d of %d\n", id, numThreads);
   }
   printf("\n");
   return 0;
}
