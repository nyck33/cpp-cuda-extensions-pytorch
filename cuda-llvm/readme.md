#### use this command to output IR from axpy_device.cu

```bash
clang++ -emit-llvm -S axpy_device.cu --cuda-gpu-arch=sm_75 \
    --cuda-path=/usr/local/'cuda=11.7' \
    --no-cuda-version-check

```

#### for axpy_host.cu after including device code
```bash
clang++ -emit-llvm -S -c ../axpy_host.cu     --cuda-path=/usr/local/'cuda=11.7'     --no-cuda-version-check
``` 

### try to organize into 
```bash
my_project/
|-- src/
|   |-- device/
|   |   |-- axpy_device.cu
|   |-- host/
|   |   |-- axpy_host.cu
|-- include/
|   |-- common_headers.h
|-- build/
|-- CMakeLists.txt

```
### get readable IR for device code
```bash

//-S flag for text based IR
opt -O3 -S axpy_device.ll -o axpy_device_opt.ll

//or backwwards from bitcode
llvm-dis axpy_device_opt.ll -o axpy_device_opt_readable.ll

```
### or backwards from bitcode .bc file
```bash
llvm-dis axpy_device_opt.ll -o axpy_device_opt_readable.ll

```