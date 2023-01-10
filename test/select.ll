; ModuleID = 'select.c'
source_filename = "select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arr = dso_local local_unnamed_addr global [20 x float] [float 5.000000e+00, float 4.000000e+00, float 0x40249999A0000000, float 0x3FF19999A0000000, float 0x4016CCCCC0000000, float 1.000000e+02, float 2.310000e+02, float 1.110000e+02, float 4.950000e+01, float 9.900000e+01, float 1.000000e+01, float 1.500000e+02, float 0x406BC70A40000000, float 1.010000e+02, float 7.700000e+01, float 4.400000e+01, float 3.500000e+01, float 0x40348A3D80000000, float 0x4058FF5C20000000, float 0x408BC70A40000000], align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local float @select(i64 %0, i64 %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %2, %79
  %4 = phi i32 [ 0, %2 ], [ %83, %79 ]
  %5 = phi i64 [ %1, %2 ], [ %81, %79 ]
  %6 = phi i64 [ 1, %2 ], [ %80, %79 ]
  %7 = add i64 %6, 1
  %8 = icmp ugt i64 %5, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = icmp eq i64 %5, %7
  br i1 %10, label %11, label %79

11:                                               ; preds = %9
  %12 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %5
  %13 = load float, float* %12, align 4, !tbaa !5
  %14 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %6
  %15 = load float, float* %14, align 4, !tbaa !5
  %16 = fcmp olt float %13, %15
  br i1 %16, label %17, label %79

17:                                               ; preds = %11
  store float %13, float* %14, align 4, !tbaa !5
  store float %15, float* %12, align 4, !tbaa !5
  br label %79

18:                                               ; preds = %3
  %19 = add i64 %5, %6
  %20 = lshr i64 %19, 1
  %21 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %7
  %24 = load float, float* %23, align 4, !tbaa !5
  store float %24, float* %21, align 4, !tbaa !5
  store float %22, float* %23, align 4, !tbaa !5
  %25 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %5
  %26 = load float, float* %25, align 4, !tbaa !5
  %27 = fcmp ogt float %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store float %26, float* %23, align 4, !tbaa !5
  store float %22, float* %25, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %28, %18
  %30 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %6
  %31 = load float, float* %30, align 4, !tbaa !5
  %32 = load float, float* %25, align 4, !tbaa !5
  %33 = fcmp ogt float %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store float %32, float* %30, align 4, !tbaa !5
  store float %31, float* %25, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi float [ %31, %34 ], [ %22, %29 ]
  %37 = load float, float* %23, align 4, !tbaa !5
  %38 = load float, float* %30, align 4, !tbaa !5
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store float %38, float* %23, align 4, !tbaa !5
  store float %37, float* %30, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %40, %35
  %42 = phi float [ %37, %40 ], [ %36, %35 ]
  %43 = load float, float* %30, align 4, !tbaa !5
  %44 = icmp eq i32 %4, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %41, %62
  %46 = phi i32 [ %64, %62 ], [ %4, %41 ]
  %47 = phi float [ %66, %62 ], [ %42, %41 ]
  %48 = phi i64 [ %52, %62 ], [ %7, %41 ]
  %49 = phi i64 [ %58, %62 ], [ %5, %41 ]
  br label %50

50:                                               ; preds = %45, %50
  %51 = phi i64 [ %52, %50 ], [ %48, %45 ]
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %52
  %54 = load float, float* %53, align 4, !tbaa !5
  %55 = fcmp olt float %54, %43
  br i1 %55, label %50, label %56, !llvm.loop !9

56:                                               ; preds = %50, %56
  %57 = phi i64 [ %58, %56 ], [ %49, %50 ]
  %58 = add i64 %57, -1
  %59 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !5
  %61 = fcmp ogt float %60, %43
  br i1 %61, label %56, label %62, !llvm.loop !12

62:                                               ; preds = %56
  %63 = icmp ult i64 %58, %52
  %64 = select i1 %63, i32 1, i32 %46
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, float %54, float %47
  store float %60, float* %53, align 4, !tbaa !5
  store float %66, float* %59, align 4, !tbaa !5
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %45, label %68, !llvm.loop !13

68:                                               ; preds = %62, %41
  %69 = phi i64 [ %5, %41 ], [ %58, %62 ]
  %70 = phi i64 [ %7, %41 ], [ %52, %62 ]
  %71 = phi i32 [ %4, %41 ], [ %64, %62 ]
  %72 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %69
  %73 = load float, float* %72, align 4, !tbaa !5
  store float %73, float* %30, align 4, !tbaa !5
  store float %43, float* %72, align 4, !tbaa !5
  %74 = icmp ult i64 %69, %0
  %75 = add i64 %69, -1
  %76 = select i1 %74, i64 %5, i64 %75
  %77 = icmp ugt i64 %69, %0
  %78 = select i1 %77, i64 %6, i64 %70
  br label %79

79:                                               ; preds = %68, %9, %17, %11
  %80 = phi i64 [ %6, %11 ], [ %6, %17 ], [ %6, %9 ], [ %78, %68 ]
  %81 = phi i64 [ %5, %11 ], [ %5, %17 ], [ %5, %9 ], [ %76, %68 ]
  %82 = phi i1 [ false, %11 ], [ false, %17 ], [ false, %9 ], [ true, %68 ]
  %83 = phi i32 [ %4, %11 ], [ %4, %17 ], [ %4, %9 ], [ %71, %68 ]
  br i1 %82, label %3, label %84, !llvm.loop !14

84:                                               ; preds = %79
  %85 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %0
  %86 = load float, float* %85, align 4, !tbaa !5
  ret float %86
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = call float @select(i64 10, i64 20)
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
