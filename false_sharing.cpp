#include <benchmark/benchmark.h>
#include <iostream>
#include <thread>
#include <chrono>
#include "core_pinning.h"

struct Padded {
    alignas(64) std::atomic<long> a {0};
    alignas(64) std::atomic<long> b {0};
};

static long N = 1'000'000;

struct Shared {
    std::atomic<long> a {0};
    std::atomic<long> b {0};
};

void worker(std::atomic<long> &counter, int core){
    pin_to_core(core);
    for(long i = 0;i < N; i++){
        counter.fetch_add(1, std::memory_order_relaxed);
    }
}

int main(){
    Shared s;
    // Padded s;
    auto z0 = std::chrono::steady_clock::now();
    std::thread t1(worker, std::ref(s.a), 0);
    std::thread t2(worker, std::ref(s.b), 1);
    t1.join();
    t2.join();

    auto z1 = std::chrono::steady_clock::now();
    std::cout<<" Time: "<<std::chrono::duration_cast<std::chrono::nanoseconds>(z1 - z0).count()<<std::endl;
    std::cout<<"Size: "<< sizeof(s)<<std::endl;
    return 0;
}