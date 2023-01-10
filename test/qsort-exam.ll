; ModuleID = 'qsort-exam.c'
source_filename = "qsort-exam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@arr = dso_local local_unnamed_addr global [20 x float] [float 5.000000e+00, float 4.000000e+00, float 0x40249999A0000000, float 0x3FF19999A0000000, float 0x4016CCCCC0000000, float 1.000000e+02, float 2.310000e+02, float 1.110000e+02, float 4.950000e+01, float 9.900000e+01, float 1.000000e+01, float 1.500000e+02, float 0x406BC70A40000000, float 1.010000e+02, float 7.700000e+01, float 4.400000e+01, float 3.500000e+01, float 0x40348A3D80000000, float 0x4058FF5C20000000, float 0x40563851E0000000], align 16
@istack = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @sort(i64 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %50, %1
  %3 = phi i64 [ %0, %1 ], [ %51, %50 ]
  %4 = phi i64 [ 1, %1 ], [ %52, %50 ]
  %5 = phi i32 [ 0, %1 ], [ %53, %50 ]
  %6 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %3
  br label %7

7:                                                ; preds = %2, %111
  %8 = phi i64 [ %84, %111 ], [ %4, %2 ]
  %9 = phi i32 [ %98, %111 ], [ %5, %2 ]
  %10 = sub i64 %3, %8
  %11 = icmp ult i64 %10, 7
  br i1 %11, label %12, label %54

12:                                               ; preds = %7
  %13 = add i64 %8, 1
  %14 = icmp ugt i64 %13, %3
  br i1 %14, label %37, label %15

15:                                               ; preds = %12, %31
  %16 = phi i64 [ %35, %31 ], [ %13, %12 ]
  %17 = phi i64 [ %16, %31 ], [ %8, %12 ]
  %18 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %16
  %19 = load float, float* %18, align 4, !tbaa !5
  %20 = icmp ult i64 %17, %8
  br i1 %20, label %31, label %21

21:                                               ; preds = %15, %26
  %22 = phi i64 [ %29, %26 ], [ %17, %15 ]
  %23 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %22
  %24 = load float, float* %23, align 4, !tbaa !5
  %25 = fcmp ugt float %24, %19
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = add i64 %22, 1
  %28 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %27
  store float %24, float* %28, align 4, !tbaa !5
  %29 = add i64 %22, -1
  %30 = icmp ult i64 %29, %8
  br i1 %30, label %31, label %21, !llvm.loop !9

31:                                               ; preds = %26, %21, %15
  %32 = phi i64 [ %17, %15 ], [ %29, %26 ], [ %22, %21 ]
  %33 = add i64 %32, 1
  %34 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %33
  store float %19, float* %34, align 4, !tbaa !5
  %35 = add i64 %16, 1
  %36 = icmp ugt i64 %35, %3
  br i1 %36, label %37, label %15, !llvm.loop !12

37:                                               ; preds = %31, %12
  %38 = icmp eq i32 %9, 0
  br i1 %38, label %120, label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %9, -1
  %41 = sext i32 %9 to i64
  %42 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !13
  %44 = sext i32 %43 to i64
  %45 = add nsw i32 %9, -2
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !13
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %39, %102
  %51 = phi i64 [ %110, %102 ], [ %44, %39 ]
  %52 = phi i64 [ %8, %102 ], [ %49, %39 ]
  %53 = phi i32 [ %98, %102 ], [ %45, %39 ]
  br label %2, !llvm.loop !15

54:                                               ; preds = %7
  %55 = add i64 %8, %3
  %56 = lshr i64 %55, 1
  %57 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %56
  %58 = load float, float* %57, align 4, !tbaa !5
  %59 = add i64 %8, 1
  %60 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !5
  store float %61, float* %57, align 4, !tbaa !5
  store float %58, float* %60, align 4, !tbaa !5
  %62 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %8
  %63 = load float, float* %62, align 4, !tbaa !5
  %64 = load float, float* %6, align 4, !tbaa !5
  %65 = fcmp ogt float %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store float %64, float* %62, align 4, !tbaa !5
  store float %63, float* %6, align 4, !tbaa !5
  br label %67

67:                                               ; preds = %66, %54
  %68 = load float, float* %60, align 4, !tbaa !5
  %69 = load float, float* %6, align 4, !tbaa !5
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store float %69, float* %60, align 4, !tbaa !5
  store float %68, float* %6, align 4, !tbaa !5
  br label %72

72:                                               ; preds = %71, %67
  %73 = load float, float* %62, align 4, !tbaa !5
  %74 = load float, float* %60, align 4, !tbaa !5
  %75 = fcmp ogt float %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store float %74, float* %62, align 4, !tbaa !5
  store float %73, float* %60, align 4, !tbaa !5
  br label %77

77:                                               ; preds = %76, %72
  %78 = load float, float* %60, align 4, !tbaa !5
  br label %79

79:                                               ; preds = %96, %77
  %80 = phi i64 [ %3, %77 ], [ %90, %96 ]
  %81 = phi i64 [ %59, %77 ], [ %84, %96 ]
  br label %82

82:                                               ; preds = %82, %79
  %83 = phi i64 [ %81, %79 ], [ %84, %82 ]
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %84
  %86 = load float, float* %85, align 4, !tbaa !5
  %87 = fcmp olt float %86, %78
  br i1 %87, label %82, label %88, !llvm.loop !16

88:                                               ; preds = %82, %88
  %89 = phi i64 [ %90, %88 ], [ %80, %82 ]
  %90 = add i64 %89, -1
  %91 = getelementptr inbounds [20 x float], [20 x float]* @arr, i64 0, i64 %90
  %92 = load float, float* %91, align 4, !tbaa !5
  %93 = fcmp ogt float %92, %78
  br i1 %93, label %88, label %94, !llvm.loop !17

94:                                               ; preds = %88
  %95 = icmp ult i64 %90, %84
  br i1 %95, label %97, label %96

96:                                               ; preds = %94
  store float %92, float* %85, align 4, !tbaa !5
  store float %86, float* %91, align 4, !tbaa !5
  br label %79, !llvm.loop !18

97:                                               ; preds = %94
  store float %92, float* %60, align 4, !tbaa !5
  store float %78, float* %91, align 4, !tbaa !5
  %98 = add nsw i32 %9, 2
  %99 = sub i64 %3, %83
  %100 = sub i64 %90, %8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = trunc i64 %3 to i32
  %104 = sext i32 %98 to i64
  %105 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i64 0, i64 %104
  store i32 %103, i32* %105, align 4, !tbaa !13
  %106 = trunc i64 %84 to i32
  %107 = add nsw i32 %9, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i64 0, i64 %108
  store i32 %106, i32* %109, align 4, !tbaa !13
  %110 = add i64 %89, -2
  br label %50

111:                                              ; preds = %97
  %112 = trunc i64 %89 to i32
  %113 = add i32 %112, -2
  %114 = sext i32 %98 to i64
  %115 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i64 0, i64 %114
  store i32 %113, i32* %115, align 4, !tbaa !13
  %116 = trunc i64 %8 to i32
  %117 = add nsw i32 %9, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [100 x i32], [100 x i32]* @istack, i64 0, i64 %118
  store i32 %116, i32* %119, align 4, !tbaa !13
  br label %7, !llvm.loop !15

120:                                              ; preds = %37
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void @sort(i64 20)
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
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !11}
