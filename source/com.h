#include <stdlib.h> 

#ifndef COM_H
#define COM_H

/*new typedef for using by povray*/
typedef struct {
    int rank;           
    int start_line;     
    int num_lines;   
} ChunkHeader;

/*new varibales for using by povray*/
extern int global_my_rank;
extern void *worker_shm_buffer;

void com_initialize(int nr_proc, int *rank);
void com_finalize(void);

void* com_alloc_msg(size_t size);
void com_free_msg(void *msg);

void com_recv(void **msg, size_t *size);
void com_send(int rank, void *msg, size_t size);
void com_mcast(void *msg, size_t size);
#endif
