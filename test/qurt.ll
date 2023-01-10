; ModuleID = 'qurt.c'
source_filename = "qurt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@flag = dso_local local_unnamed_addr global i32 0, align 4
@x1 = dso_local local_unnamed_addr global [2 x double] zeroinitializer, align 16
@x2 = dso_local local_unnamed_addr global [2 x double] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local double @qurt_fabs(double %0) local_unnamed_addr #0 {
  %2 = fcmp ult double %0, 0.000000e+00
  %3 = fneg double %0
  %4 = select i1 %2, double %3, double %0
  ret double %4
}

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local double @qurt_sqrt(double %0) local_unnamed_addr #1 {
  %2 = fcmp oeq double %0, 0.000000e+00
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = fdiv double %0, 1.000000e+01
  br label %5

5:                                                ; preds = %3, %23
  %6 = phi i32 [ 0, %3 ], [ %25, %23 ]
  %7 = phi i32 [ 1, %3 ], [ %26, %23 ]
  %8 = phi double [ %4, %3 ], [ %24, %23 ]
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = fmul double %8, %8
  %12 = fsub double %0, %11
  %13 = fmul double %8, 2.000000e+00
  %14 = fdiv double %12, %13
  %15 = fadd double %8, %14
  %16 = fmul double %15, %15
  %17 = fsub double %0, %16
  %18 = fcmp ult double %17, 0.000000e+00
  %19 = fneg double %17
  %20 = select i1 %18, double %19, double %17
  %21 = fcmp ugt double %20, 1.000000e-05
  br i1 %21, label %23, label %22

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %10, %5
  %24 = phi double [ %8, %5 ], [ %15, %22 ], [ %15, %10 ]
  %25 = phi i32 [ 1, %5 ], [ 1, %22 ], [ 0, %10 ]
  %26 = add nuw nsw i32 %7, 1
  %27 = icmp eq i32 %26, 20
  br i1 %27, label %28, label %5, !llvm.loop !5

28:                                               ; preds = %23, %1
  %29 = phi double [ 0.000000e+00, %1 ], [ %24, %23 ]
  ret double %29
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16, !tbaa !8
  store double -3.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8, !tbaa !8
  store double 2.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16, !tbaa !8
  %1 = call i32 @qurt()
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16, !tbaa !8
  store double -2.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8, !tbaa !8
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16, !tbaa !8
  %2 = call i32 @qurt()
  store double 1.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16, !tbaa !8
  store double -4.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8, !tbaa !8
  store double 8.000000e+00, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16, !tbaa !8
  %3 = call i32 @qurt()
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @qurt() local_unnamed_addr #2 {
  %1 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 0), align 16, !tbaa !8
  %2 = fcmp oeq double %1, 0.000000e+00
  br i1 %2, label %61, label %3

3:                                                ; preds = %0
  %4 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 1), align 8, !tbaa !8
  %5 = fmul double %4, %4
  %6 = fmul double %1, 4.000000e+00
  %7 = load double, double* getelementptr inbounds ([3 x double], [3 x double]* @a, i64 0, i64 2), align 16, !tbaa !8
  %8 = fmul double %6, %7
  %9 = fsub double %5, %8
  %10 = fmul double %1, 2.000000e+00
  %11 = fcmp ult double %9, 0.000000e+00
  %12 = fneg double %9
  %13 = select i1 %11, double %12, double %9
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %40, label %15

15:                                               ; preds = %3
  %16 = fdiv double %13, 1.000000e+01
  br label %17

17:                                               ; preds = %35, %15
  %18 = phi i32 [ 0, %15 ], [ %37, %35 ]
  %19 = phi i32 [ 1, %15 ], [ %38, %35 ]
  %20 = phi double [ %16, %15 ], [ %36, %35 ]
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = fmul double %20, %20
  %24 = fsub double %13, %23
  %25 = fmul double %20, 2.000000e+00
  %26 = fdiv double %24, %25
  %27 = fadd double %20, %26
  %28 = fmul double %27, %27
  %29 = fsub double %13, %28
  %30 = fcmp ult double %29, 0.000000e+00
  %31 = fneg double %29
  %32 = select i1 %30, double %31, double %29
  %33 = fcmp ugt double %32, 1.000000e-05
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %22, %17
  %36 = phi double [ %20, %17 ], [ %27, %34 ], [ %27, %22 ]
  %37 = phi i32 [ 1, %17 ], [ 1, %34 ], [ 0, %22 ]
  %38 = add nuw nsw i32 %19, 1
  %39 = icmp eq i32 %38, 20
  br i1 %39, label %40, label %17, !llvm.loop !5

40:                                               ; preds = %35, %3
  %41 = phi double [ 0.000000e+00, %3 ], [ %36, %35 ]
  %42 = fcmp ogt double %9, 0.000000e+00
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  store i32 1, i32* @flag, align 4, !tbaa !12
  %44 = fsub double %41, %4
  %45 = fdiv double %44, %10
  store double %45, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16, !tbaa !8
  store double 0.000000e+00, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 1), align 8, !tbaa !8
  %46 = fneg double %4
  %47 = fsub double %46, %41
  %48 = fdiv double %47, %10
  store double %48, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 0), align 16, !tbaa !8
  br label %59

49:                                               ; preds = %40
  %50 = fcmp oeq double %9, 0.000000e+00
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  store i32 0, i32* @flag, align 4, !tbaa !12
  %52 = fneg double %4
  %53 = fdiv double %52, %10
  store double %53, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16, !tbaa !8
  store double 0.000000e+00, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 1), align 8, !tbaa !8
  store double %53, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 0), align 16, !tbaa !8
  br label %59

54:                                               ; preds = %49
  store i32 -1, i32* @flag, align 4, !tbaa !12
  %55 = fdiv double %41, %10
  %56 = fneg double %4
  %57 = fdiv double %56, %10
  store double %57, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 0), align 16, !tbaa !8
  store double %55, double* getelementptr inbounds ([2 x double], [2 x double]* @x1, i64 0, i64 1), align 8, !tbaa !8
  store double %57, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 0), align 16, !tbaa !8
  %58 = fneg double %55
  br label %59

59:                                               ; preds = %43, %51, %54
  %60 = phi double [ %58, %54 ], [ 0.000000e+00, %51 ], [ 0.000000e+00, %43 ]
  store double %60, double* getelementptr inbounds ([2 x double], [2 x double]* @x2, i64 0, i64 1), align 8, !tbaa !8
  br label %61

61:                                               ; preds = %59, %0
  %62 = phi i32 [ 999, %0 ], [ 0, %59 ]
  ret i32 %62
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
