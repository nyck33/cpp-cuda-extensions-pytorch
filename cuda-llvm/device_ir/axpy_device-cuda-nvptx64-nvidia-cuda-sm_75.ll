; ModuleID = 'axpy_device.cu'
source_filename = "axpy_device.cu"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

%struct.__cuda_builtin_threadIdx_t = type { i8 }

@threadIdx = extern_weak dso_local addrspace(1) global %struct.__cuda_builtin_threadIdx_t, align 1

; Function Attrs: convergent mustprogress noinline norecurse nounwind optnone
define dso_local void @_Z4axpyfPfS_(float noundef %0, float* noundef %1, float* noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  store float %0, float* %4, align 4
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float, float* %4, align 4
  %8 = load float*, float** %5, align 8
  %9 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds float, float* %8, i64 %10
  %12 = load float, float* %11, align 4
  %13 = fmul contract float %7, %12
  %14 = load float*, float** %6, align 8
  %15 = call i32 @llvm.nvvm.read.ptx.sreg.tid.x() #2
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  store float %13, float* %17, align 4
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.nvvm.read.ptx.sreg.tid.x() #1

attributes #0 = { convergent mustprogress noinline norecurse nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="sm_75" "target-features"="+ptx75,+sm_75" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!nvvm.annotations = !{!4}
!llvm.ident = !{!5, !6}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 11, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{void (float, float*, float*)* @_Z4axpyfPfS_, !"kernel", i32 1}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
