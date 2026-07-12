#include <benchmark/benchmark.h>
#include <iostream>
#include <algorithm>
#include <chrono>
#include <vector>
#include <random>
#define SIZE 1'000'000

int main(){
    std::mt19937 mt{};
    std::uniform_int_distribution v{1, SIZE};

    int arr[SIZE] {0};

    for(int i =0; i < SIZE; i++){
        arr[i]  = v(mt);
    }
    // std::sort(arr, arr + SIZE);
    auto t0 = std::chrono::steady_clock::now();
    long long sum = 0;

    for (int i = 0 ; i < SIZE ; i ++){
        if (arr[i] > 5'00'000){
            sum += arr[i];
            benchmark::DoNotOptimize(arr[i]);
            benchmark::DoNotOptimize(sum);
        }
    }
    auto t1 = std::chrono::steady_clock::now();

    auto time = std::chrono::duration_cast<std::chrono::nanoseconds>(t1 - t0).count();
    std::cout<<"Time is: "<<time<<std::endl;
    std::cout<<sum<<std::endl;

    return 0;
}