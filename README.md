# C++/CUDA Extensions in PyTorch

An example of writing a C++ extension for PyTorch. See
[here](http://pytorch.org/tutorials/advanced/cpp_extension.html) for the accompanying tutorial.

There are a few "sights" you can metaphorically visit in this repository:

- Inspect the C++ and CUDA extensions in the `cpp/` and `cuda/` folders,
- Build C++ and/or CUDA extensions by going into the `cpp/` or `cuda/` folder and executing `python setup.py install`,
- JIT-compile C++ and/or CUDA extensions by going into the `cpp/` or `cuda/` folder and calling `python jit.py`, which will JIT-compile the extension and load it,
- Benchmark Python vs. C++ vs. CUDA by running `python benchmark.py {py, cpp, cuda} [--cuda]`,
- Run gradient checks on the code by running `python grad_check.py {py, cpp, cuda} [--cuda]`.
- Run output checks on the code by running `python check.py {forward, backward} [--cuda]`.

## Authors

[Peter Goldsborough](https://github.com/goldsborough)


# ChatGPT instructions

Great, let's go step-by-step to optimize the code from the PyTorch tutorial using LLVM. I'll assume you have basic familiarity with Git, CMake, and the Linux command line, as well as LLVM 14 installed on your WSL2.

### Step 1: Clone the Repository
First, clone the GitHub repository to your local machine.
```bash
git clone https://github.com/pytorch/extension-cpp.git
```

### Step 2: Navigate to the Directory
Navigate to the directory where the code resides.
```bash
cd extension-cpp
```

### Step 3: Inspect the Code
Before we proceed with LLVM optimizations, take a moment to inspect the code. You'll likely find `.cpp` and `.cu` files that contain the C++ and CUDA code, respectively.

### Step 4: Generate LLVM Intermediate Representation (IR)
LLVM operates on a form of Intermediate Representation (IR). To generate the IR for a C++ file, you can use the `clang` compiler that comes with LLVM.
```bash
clang++ -S -emit-llvm your_file.cpp -o your_file.ll
```
Replace `your_file.cpp` with the actual C++ file you want to optimize.

### Step 5: Apply LLVM Optimizations
Once you have the `.ll` file, you can use LLVM's optimization tool `opt` to apply various optimization passes.
```bash
opt -O3 your_file.ll -o your_file_optimized.ll
```
Here, `-O3` applies all optimization passes for the best performance.

### Step 6: Generate Optimized Object Code
After optimization, you'll need to generate the optimized object code from the optimized IR.
```bash
llc your_file_optimized.ll -o your_file_optimized.o
```

### Step 7: Link the Object Code
Finally, link the optimized object code to create the executable.
```bash
clang++ your_file_optimized.o -o your_executable
```
Replace `your_executable` with the name you want for the executable file.

### Step 8: Test the Optimized Code
Run the optimized code to make sure it works as expected.
```bash
./your_executable
```

### Step 9: Integrate with PyTorch
If the code involves PyTorch, you'll need to ensure that the optimized code is properly linked with PyTorch libraries. This might involve modifying the `CMakeLists.txt` or the build script.

### Step 10: Profile and Iterate
Use profiling tools to measure the performance of your optimized code. If it's not up to your expectations, you may need to go back to Step 4 and try different LLVM optimization passes.

And that's it! You've applied LLVM optimizations to the code from the PyTorch tutorial. Would you like to know more about any of these steps?