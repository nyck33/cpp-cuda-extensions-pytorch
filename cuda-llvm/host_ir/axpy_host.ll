; ModuleID = '../axpy_host.cu'
source_filename = "../axpy_host.cu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.dim3 = type { i32, i32, i32 }
%struct.CUstream_st = type opaque

$_ZN4dim3C2Ejjj = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@__const.main.host_x = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [8 x i8] c"Error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"y[\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_axpy_host.cu, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse optnone uwtable
define dso_local void @_Z19__device_stub__axpyfPfS_(float noundef %0, float* noundef %1, float* noundef %2) #4 {
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.dim3, align 8
  %8 = alloca %struct.dim3, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca { i64, i32 }, align 8
  store float %0, float* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %13 = alloca i8*, i64 3, align 16
  %14 = bitcast float* %4 to i8*
  %15 = getelementptr i8*, i8** %13, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast float** %5 to i8*
  %17 = getelementptr i8*, i8** %13, i32 1
  store i8* %16, i8** %17, align 8
  %18 = bitcast float** %6 to i8*
  %19 = getelementptr i8*, i8** %13, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 @__cudaPopCallConfiguration(%struct.dim3* %7, %struct.dim3* %8, i64* %9, i8** %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast { i64, i32 }* %11 to i8*
  %24 = bitcast %struct.dim3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 12, i1 false)
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = bitcast { i64, i32 }* %12 to i8*
  %30 = bitcast %struct.dim3* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 12, i1 false)
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = bitcast i8* %22 to %struct.CUstream_st*
  %36 = call noundef i32 @cudaLaunchKernel(i8* noundef bitcast (void (float, float*, float*)* @_Z19__device_stub__axpyfPfS_ to i8*), i64 %26, i32 %28, i64 %32, i32 %34, i8** noundef %13, i64 noundef %21, %struct.CUstream_st* noundef %35)
  br label %37

37:                                               ; preds = %3
  ret void
}

declare i32 @__cudaPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**)

declare i32 @cudaLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.CUstream_st*)

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main(i32 noundef %0, i8** noundef %1) #6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca %struct.dim3, align 4
  %13 = alloca %struct.dim3, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 4, i32* %6, align 4
  store float 2.000000e+00, float* %7, align 4
  %18 = bitcast [4 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x float]* @__const.main.host_x to i8*), i64 16, i1 false)
  %19 = call noundef i32 @_ZL10cudaMallocIfE9cudaErrorPPT_m(float** noundef %10, i64 noundef 16)
  %20 = call noundef i32 @_ZL10cudaMallocIfE9cudaErrorPPT_m(float** noundef %11, i64 noundef 16)
  %21 = load float*, float** %10, align 8
  %22 = bitcast float* %21 to i8*
  %23 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %24 = bitcast float* %23 to i8*
  %25 = call i32 @cudaMemcpy(i8* noundef %22, i8* noundef %24, i64 noundef 16, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %12, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %13, i32 noundef 4, i32 noundef 1, i32 noundef 1)
  %26 = bitcast { i64, i32 }* %14 to i8*
  %27 = bitcast %struct.dim3* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  %28 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = bitcast { i64, i32 }* %15 to i8*
  %33 = bitcast %struct.dim3* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 12, i1 false)
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %35 = load i64, i64* %34, align 4
  %36 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__cudaPushCallConfiguration(i64 %29, i32 %31, i64 %35, i32 %37, i64 noundef 0, i8* noundef null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %2
  %41 = load float, float* %7, align 4
  %42 = load float*, float** %10, align 8
  %43 = load float*, float** %11, align 8
  call void @_Z19__device_stub__axpyfPfS_(float noundef %41, float* noundef %42, float* noundef %43)
  br label %44

44:                                               ; preds = %40, %2
  %45 = call i32 @cudaGetLastError()
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %16, align 4
  %51 = call i8* @cudaGetErrorString(i32 noundef %50)
  %52 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %49, i8* noundef %51)
  %53 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %52, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %54

54:                                               ; preds = %48, %44
  %55 = call i32 @cudaDeviceSynchronize()
  %56 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 0
  %57 = bitcast float* %56 to i8*
  %58 = load float*, float** %11, align 8
  %59 = bitcast float* %58 to i8*
  %60 = call i32 @cudaMemcpy(i8* noundef %57, i8* noundef %59, i64 noundef 16, i32 noundef 2)
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %75, %54
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %17, align 4
  %67 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %65, i32 noundef %66)
  %68 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %67, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 %70
  %72 = load float, float* %71, align 4
  %73 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %68, float noundef %72)
  %74 = call noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %73, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %61, !llvm.loop !7

78:                                               ; preds = %61
  %79 = call i32 @cudaDeviceReset()
  ret i32 0
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef i32 @_ZL10cudaMallocIfE9cudaErrorPPT_m(float** noundef %0, i64 noundef %1) #7 {
  %3 = alloca float**, align 8
  %4 = alloca i64, align 8
  store float** %0, float*** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load float**, float*** %3, align 8
  %6 = bitcast float** %5 to i8*
  %7 = bitcast i8* %6 to i8**
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @cudaMalloc(i8** noundef %7, i64 noundef %8)
  ret i32 %9
}

declare i32 @cudaMemcpy(i8* noundef, i8* noundef, i64 noundef, i32 noundef) #1

declare i32 @__cudaPushCallConfiguration(i64, i32, i64, i32, i64 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* noundef nonnull align 4 dereferenceable(12) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 comdat align 2 {
  %5 = alloca %struct.dim3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dim3* %0, %struct.dim3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dim3*, %struct.dim3** %5, align 8
  %10 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.dim3, %struct.dim3* %9, i32 0, i32 2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %14, align 4
  ret void
}

declare i32 @cudaGetLastError() #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare i8* @cudaGetErrorString(i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

declare i32 @cudaDeviceSynchronize() #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), float noundef) #1

declare i32 @cudaDeviceReset() #1

declare i32 @cudaMalloc(i8** noundef, i64 noundef) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_axpy_host.cu() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 1}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
