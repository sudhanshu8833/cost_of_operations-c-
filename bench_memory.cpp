#include <benchmark/benchmark.h>
#include <algorithm>
#include <vector>
#include <chrono>
#include <iostream>
#include <sstream>
#include "core_pinning.h"
#include <unordered_map>
#include <random>

static int SIZE = 10000;
static int ARRAY_SIZE = 1000000;
static int next[1000000] {0};
static std::mt19937 mt{};
static std::uniform_int_distribution v{1, ARRAY_SIZE + 1};
static int head = v(mt);
static int ITERATIONS = 10000;

void do_operation(){
    int iterations = ITERATIONS;
    int temp_head = head;

    while(iterations --){
        temp_head = next[temp_head];
        benchmark::DoNotOptimize(temp_head);
    }
}

void construct_meta_data(){
    std::ostringstream ss;

    ss << "NUMBER OF FILLED SIZE: "<< SIZE<<std::endl;
    ss << "ARRAY SIZE: " << ARRAY_SIZE<<std::endl;
    ss << "ITERATIONS PER LOOP: "<< ITERATIONS; 
    
    std::cout<< ss.str()<<std::endl;

    int next_random_numer = v(mt);
    while(next[next_random_numer]){
        next_random_numer = v(mt);
    }
    next[head] = next_random_numer;

    int local_size = SIZE;
    int temp_head = head;
    int next_number;
    while(local_size--){
        int pointer_to = next[temp_head];
        temp_head = pointer_to;
        next_number = v(mt);
        while(next[next_number]){
            next_number = v(mt);
        }
        next[temp_head] = next_number;
    }
    next[next_number] = head;
}

static void BM_Access(){
    pin_to_core(0);
    std::vector<long long> result;
    int SAMPLE_SIZE = 10000;
    construct_meta_data();
    
    for(int i =0 ;i<SAMPLE_SIZE; ++i){ 
        auto t0 = std::chrono::steady_clock::now();
        do_operation();
        auto t1 = std::chrono::steady_clock::now();
        result.push_back(std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count());
    }

    std::sort(result.begin(), result.end());

    std::unordered_map<std::string, double> m {
        {"50", 0.50 * SAMPLE_SIZE}, 
        {"99", 0.99 * SAMPLE_SIZE},
        {"99.9", 0.999 * SAMPLE_SIZE},
        {"99.99", 0.9999 * SAMPLE_SIZE}
    };

    std::ostringstream ss;
    ss << "P50 is "<< result[int(m["50"])]<<" "<<std::endl; 
    ss << "P99 is " << result[int(m["99"])]<<" "<<std::endl;
    ss << "P99.9 is " << result[int(m["99.9"])]<<" "<<std::endl;
    ss << "P99.99 is " << result[int(m["99.99"])]<<" ";

    std::cout<<ss.str()<<std::endl;
}

int main(){
    BM_Access();
    return 0;
}