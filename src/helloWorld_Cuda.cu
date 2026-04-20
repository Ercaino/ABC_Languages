/*
 * Hello World in CUDA
 * Requirements: NVIDIA GPU and CUDA Toolkit (nvcc)
 * Execution: nvcc helloWorld_Cuda.cu -o helloWorld_Cuda && ./helloWorld_Cuda
 */

#include <stdio.h>
#include <cuda_runtime.h>

// Kernel function that runs on the GPU
__global__ void helloFromGPU() {
    printf("Hello, World from GPU!\n");
}

int main() {
    // Launch the kernel with 1 block and 1 thread
    helloFromGPU<<<1, 1>>>();
    
    // Wait for the GPU to finish before exiting
    cudaDeviceSynchronize();
    
    printf("Hello, World from CPU!\n");
    
    return 0;
}
