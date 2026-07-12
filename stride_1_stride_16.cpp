#include <benchmark/benchmark.h>
#include <algorithm>
#include <vector>
#include <chrono>
#include <iostream>
#include <numeric>
#include <sstream>
#include "core_pinning.h"
#include <unordered_map>
#include <random>
#define array_size 1'000'000'00

static int arr[array_size]{0};
static std::mt19937 mt{};
static std::uniform_int_distribution v{1, 1'000'000};
static std::uniform_int_distribution v_jump {17, 23};
static int jump = 1;

int do_operation(){
    // STRIDE 1
    auto t0 = std::chrono::steady_clock::now();
    for(int i =0; i < array_size; i+=jump){
        int val = arr[i];
        benchmark::DoNotOptimize(val);
    }
    auto t1 = std::chrono::steady_clock::now();

    return std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
}

void construct_meta_data(){
    std::ostringstream ss;

    ss<< "ARRAY SIZE: "<< array_size<<std::endl;
    ss<< "JUMP LENGHTL: "<< jump<<std::endl;

    std::cout<<ss.str()<<std::endl;

    int size = array_size - 1;

    while(size--){
        arr[size] = v(mt);
    }
}

static void BM_Access(){
    pin_to_core(0);
    std::vector<long long> result;
    // int SAMPLE_SIZE = 1;
    construct_meta_data();
    
    // for(int i =0 ;i<SAMPLE_SIZE; ++i){ 
    //     auto t0 = std::chrono::steady_clock::now();
    //     do_operation();
    //     auto t1 = std::chrono::steady_clock::now();
    //     result.push_back(std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count());
    // }
    int sum_of_operations = do_operation();
    std::cout<<"Time: "<< sum_of_operations * jump;

    // std::accumulate(result.begin(), result.end(), 0);

    // std::unordered_map<std::string, double> m {
    //     {"50", 0.50 * SAMPLE_SIZE}, 
    //     {"99", 0.99 * SAMPLE_SIZE},
    //     {"99.9", 0.999 * SAMPLE_SIZE},
    //     {"99.99", 0.9999 * SAMPLE_SIZE}
    // };

    // std::ostringstream ss;
    // ss << "P50 is "<< result[int(m["50"])]<<" "<<std::endl; 
    // ss << "P99 is " << result[int(m["99"])]<<" "<<std::endl;
    // ss << "P99.9 is " << result[int(m["99.9"])]<<" "<<std::endl;
    // ss << "P99.99 is " << result[int(m["99.99"])]<<" ";
    // std::cout<<ss.str()<<std::endl;
}

int main(){
    BM_Access();
    return 0;
}