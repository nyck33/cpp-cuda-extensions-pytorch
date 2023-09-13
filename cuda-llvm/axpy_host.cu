#include <iostream>
#include "axpy_device.cu"

int main(int argc, char* argv[]) {
  const int kDataLen = 4;

  float a = 2.0f;
  float host_x[kDataLen] = {1.0f, 2.0f, 3.0f, 4.0f};
  float host_y[kDataLen];

  // Copy input data to device.
  float* device_x;
  float* device_y;
  cudaMalloc(&device_x, kDataLen * sizeof(float));
  cudaMalloc(&device_y, kDataLen * sizeof(float));
  cudaMemcpy(device_x, host_x, kDataLen * sizeof(float),
             cudaMemcpyHostToDevice);

  // Launch the kernel.
  axpy<<<1, kDataLen>>>(a, device_x, device_y);

  cudaError_t err = cudaGetLastError();

  if(err != cudaSuccess)
  {
    std::cout << "Error: " << cudaGetErrorString(err) << std::endl;
  }

  // Copy output data to host.
  cudaDeviceSynchronize();
  cudaMemcpy(host_y, device_y, kDataLen * sizeof(float),
             cudaMemcpyDeviceToHost);

  // Print the results.
  for (int i = 0; i < kDataLen; ++i) {
    std::cout << "y[" << i << "] = " << host_y[i] << "\n";
  }

  cudaDeviceReset();
  return 0;
}

