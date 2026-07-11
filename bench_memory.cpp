#include <benchmark/benchmark.h>
#include <vector>
#include <chrono>
#include <iostream>
#include <sstream>
#include "core_pinning.h"
#include <unordered_map>

static void BM_Access(){
    pin_to_core(0);
    std::vector<long long> result;
    volatile int x = 7;
    int SAMPLE_SIZE = 1000000;
    
    for(int i =0 ;i<SAMPLE_SIZE; ++i){ 
        auto t0 = std::chrono::steady_clock::now();
        int y = x * x;
        int z = x * x * x;
        benchmark::DoNotOptimize(y);
        benchmark::DoNotOptimize(z);
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
    ss << "P50 is "<< int(int(m["50"])) << result[int(m["50"])]<<" "<<std::endl; 
    ss << "P99 is " << result[int(m["99"])]<<" "<<std::endl;
    ss << "P99.9 is " << result[int(m["99.9"])]<<" "<<std::endl;
    ss << "P99.99 is " << result[int(m["99.9"])]<<" ";

    std::cout<<ss.str()<<std::endl;
}

int main(){
    BM_Access();
    return 0;
}