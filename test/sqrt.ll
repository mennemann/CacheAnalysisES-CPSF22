; ModuleID = 'sqrt.c'
source_filename = "sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local float @fabs(float %0) local_unnamed_addr #0 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = fneg float %0
  %4 = select i1 %2, float %3, float %0
  ret float %4
}

; Function Attrs: nofree nosync nounwind readnone sspstrong uwtable
define dso_local float @sqrtfcn(float %0) local_unnamed_addr #1 {
  %2 = fcmp oeq float %0, 0.000000e+00
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = fdiv float %0, 1.000000e+01
  br label %5

5:                                                ; preds = %3, %25
  %6 = phi i32 [ 0, %3 ], [ %27, %25 ]
  %7 = phi i32 [ 1, %3 ], [ %28, %25 ]
  %8 = phi float [ %4, %3 ], [ %26, %25 ]
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = fmul float %8, %8
  %12 = fsub float %0, %11
  %13 = fpext float %12 to double
  %14 = fpext float %8 to double
  %15 = fmul double %14, 2.000000e+00
  %16 = fdiv double %13, %15
  %17 = fptrunc double %16 to float
  %18 = fadd float %8, %17
  %19 = fmul float %18, %18
  %20 = fsub float %0, %19
  %21 = call float @llvm.fabs.f32(float %20)
  %22 = fpext float %21 to double
  %23 = fcmp ugt double %22, 1.000000e-05
  br i1 %23, label %25, label %24

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24, %10, %5
  %26 = phi float [ %8, %5 ], [ %18, %24 ], [ %18, %10 ]
  %27 = phi i32 [ 1, %5 ], [ 1, %24 ], [ 0, %10 ]
  %28 = add nuw nsw i32 %7, 1
  %29 = icmp eq i32 %28, 20
  br i1 %29, label %30, label %5, !llvm.loop !5

30:                                               ; preds = %25, %1
  %31 = phi float [ 0.000000e+00, %1 ], [ %26, %25 ]
  ret float %31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
