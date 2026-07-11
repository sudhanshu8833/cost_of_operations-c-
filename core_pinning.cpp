#include <iostream>
#include <pthread.h>
#include "core_pinning.h"

void pin_to_core(int core_id){
    cpu_set_t cpuset;
    CPU_ZERO(&cpuset);
    CPU_SET(core_id, &cpuset);

    pthread_t self = pthread_self();
    int rc = pthread_setaffinity_np(self, sizeof(cpu_set_t), &cpuset);
    if (rc !=0){
        std::cout<<"Error occured while setting the thread on the cpu core"<<std::endl;
        exit(1);
    }
}