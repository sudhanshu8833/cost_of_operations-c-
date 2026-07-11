FROM ubuntu:24.04

RUN apt-get update && apt-get install -y g++ cmake make git

# Build Google Benchmark from source, forcing Release
RUN git clone --depth 1 https://github.com/google/benchmark.git /tmp/benchmark && \
    cmake -S /tmp/benchmark -B /tmp/benchmark/build \
        -DCMAKE_BUILD_TYPE=Release \
        -DBENCHMARK_ENABLE_TESTING=OFF && \
    cmake --build /tmp/benchmark/build --target install && \
    rm -rf /tmp/benchmark

WORKDIR /app
COPY . .

RUN cmake -S . -B build && cmake --build build

CMD ["./build/bench_memory"]
