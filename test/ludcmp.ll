; ModuleID = 'ludcmp.c'
source_filename = "ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [50 x [50 x double]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [50 x double] zeroinitializer, align 16
@x = dso_local local_unnamed_addr global [50 x double] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %17
  %2 = phi i64 [ 0, %0 ], [ %3, %17 ]
  %3 = add nuw nsw i64 %2, 1
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  %6 = phi double [ 0.000000e+00, %1 ], [ %15, %4 ]
  %7 = add nuw nsw i64 %5, 1
  %8 = add nuw nsw i64 %3, %7
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %2, i64 %5
  %12 = icmp eq i64 %2, %5
  %13 = fmul double %10, 1.000000e+01
  %14 = select i1 %12, double %13, double %10
  store double %14, double* %11, align 8, !tbaa !5
  %15 = fadd double %6, %14
  %16 = icmp eq i64 %7, 6
  br i1 %16, label %17, label %4, !llvm.loop !9

17:                                               ; preds = %4
  %18 = getelementptr inbounds [50 x double], [50 x double]* @b, i64 0, i64 %2
  store double %15, double* %18, align 8, !tbaa !5
  %19 = icmp eq i64 %3, 6
  br i1 %19, label %20, label %1, !llvm.loop !12

20:                                               ; preds = %17
  %21 = call i32 @ludcmp(i32 5, double 0x3EB0C6F7A0B5ED8D)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @ludcmp(i32 %0, double %1) local_unnamed_addr #0 {
  %3 = alloca [100 x double], align 16
  %4 = bitcast [100 x double]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %4) #2
  %5 = icmp sgt i32 %0, 99
  %6 = fcmp ole double %1, 0.000000e+00
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %133, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %0, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %8
  %11 = add i32 %0, 1
  %12 = zext i32 %0 to i64
  %13 = zext i32 %11 to i64
  %14 = zext i32 %11 to i64
  br label %18

15:                                               ; preds = %66
  %16 = add nuw nsw i64 %20, 1
  %17 = icmp eq i64 %28, %12
  br i1 %17, label %69, label %18, !llvm.loop !13

18:                                               ; preds = %10, %15
  %19 = phi i64 [ 0, %10 ], [ %28, %15 ]
  %20 = phi i64 [ 1, %10 ], [ %16, %15 ]
  %21 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %19, i64 %19
  %22 = load double, double* %21, align 8, !tbaa !5
  %23 = fcmp ult double %22, 0.000000e+00
  %24 = fneg double %22
  %25 = select i1 %23, double %24, double %22
  %26 = fcmp ugt double %25, %1
  br i1 %26, label %27, label %133

27:                                               ; preds = %18
  %28 = add nuw nsw i64 %19, 1
  %29 = icmp eq i64 %19, 0
  br label %30

30:                                               ; preds = %27, %45
  %31 = phi i64 [ %20, %27 ], [ %49, %45 ]
  %32 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %31, i64 %19
  %33 = load double, double* %32, align 8, !tbaa !5
  br i1 %29, label %45, label %34

34:                                               ; preds = %30, %34
  %35 = phi i64 [ %43, %34 ], [ 0, %30 ]
  %36 = phi double [ %42, %34 ], [ %33, %30 ]
  %37 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %31, i64 %35
  %38 = load double, double* %37, align 8, !tbaa !5
  %39 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %35, i64 %19
  %40 = load double, double* %39, align 8, !tbaa !5
  %41 = fmul double %38, %40
  %42 = fsub double %36, %41
  %43 = add nuw nsw i64 %35, 1
  %44 = icmp eq i64 %43, %19
  br i1 %44, label %45, label %34, !llvm.loop !14

45:                                               ; preds = %34, %30
  %46 = phi double [ %33, %30 ], [ %42, %34 ]
  %47 = load double, double* %21, align 8, !tbaa !5
  %48 = fdiv double %46, %47
  store double %48, double* %32, align 8, !tbaa !5
  %49 = add nuw nsw i64 %31, 1
  %50 = icmp eq i64 %49, %13
  br i1 %50, label %51, label %30, !llvm.loop !15

51:                                               ; preds = %45, %66
  %52 = phi i64 [ %67, %66 ], [ %20, %45 ]
  %53 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %28, i64 %52
  %54 = load double, double* %53, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %51, %55
  %56 = phi i64 [ 0, %51 ], [ %64, %55 ]
  %57 = phi double [ %54, %51 ], [ %63, %55 ]
  %58 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %28, i64 %56
  %59 = load double, double* %58, align 8, !tbaa !5
  %60 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %56, i64 %52
  %61 = load double, double* %60, align 8, !tbaa !5
  %62 = fmul double %59, %61
  %63 = fsub double %57, %62
  %64 = add nuw nsw i64 %56, 1
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %66, label %55, !llvm.loop !16

66:                                               ; preds = %55
  store double %63, double* %53, align 8, !tbaa !5
  %67 = add nuw nsw i64 %52, 1
  %68 = icmp eq i64 %67, %14
  br i1 %68, label %15, label %51, !llvm.loop !17

69:                                               ; preds = %15, %8
  %70 = load double, double* getelementptr inbounds ([50 x double], [50 x double]* @b, i64 0, i64 0), align 16, !tbaa !5
  %71 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 0
  store double %70, double* %71, align 16, !tbaa !5
  %72 = icmp slt i32 %0, 1
  br i1 %72, label %95, label %73

73:                                               ; preds = %69
  %74 = add i32 %0, 1
  %75 = zext i32 %74 to i64
  br label %76

76:                                               ; preds = %73, %91
  %77 = phi i64 [ 1, %73 ], [ %93, %91 ]
  %78 = getelementptr inbounds [50 x double], [50 x double]* @b, i64 0, i64 %77
  %79 = load double, double* %78, align 8, !tbaa !5
  br label %80

80:                                               ; preds = %76, %80
  %81 = phi i64 [ 0, %76 ], [ %89, %80 ]
  %82 = phi double [ %79, %76 ], [ %88, %80 ]
  %83 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %77, i64 %81
  %84 = load double, double* %83, align 8, !tbaa !5
  %85 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 %81
  %86 = load double, double* %85, align 8, !tbaa !5
  %87 = fmul double %84, %86
  %88 = fsub double %82, %87
  %89 = add nuw nsw i64 %81, 1
  %90 = icmp eq i64 %89, %77
  br i1 %90, label %91, label %80, !llvm.loop !18

91:                                               ; preds = %80
  %92 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 %77
  store double %88, double* %92, align 8, !tbaa !5
  %93 = add nuw nsw i64 %77, 1
  %94 = icmp eq i64 %93, %75
  br i1 %94, label %95, label %76, !llvm.loop !19

95:                                               ; preds = %91, %69
  %96 = sext i32 %0 to i64
  %97 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 %96
  %98 = load double, double* %97, align 8, !tbaa !5
  %99 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %96, i64 %96
  %100 = load double, double* %99, align 8, !tbaa !5
  %101 = fdiv double %98, %100
  %102 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %96
  store double %101, double* %102, align 8, !tbaa !5
  %103 = icmp sgt i32 %0, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %95
  %105 = sext i32 %0 to i64
  %106 = add i32 %0, 1
  %107 = sext i32 %0 to i64
  br label %108

108:                                              ; preds = %104, %126
  %109 = phi i64 [ %105, %104 ], [ %110, %126 ]
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds [100 x double], [100 x double]* %3, i64 0, i64 %110
  %112 = load double, double* %111, align 8, !tbaa !5
  %113 = icmp sgt i64 %109, %107
  br i1 %113, label %126, label %114

114:                                              ; preds = %108, %114
  %115 = phi i64 [ %123, %114 ], [ %109, %108 ]
  %116 = phi double [ %122, %114 ], [ %112, %108 ]
  %117 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %110, i64 %115
  %118 = load double, double* %117, align 8, !tbaa !5
  %119 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %115
  %120 = load double, double* %119, align 8, !tbaa !5
  %121 = fmul double %118, %120
  %122 = fsub double %116, %121
  %123 = add nsw i64 %115, 1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %106, %124
  br i1 %125, label %126, label %114, !llvm.loop !20

126:                                              ; preds = %114, %108
  %127 = phi double [ %112, %108 ], [ %122, %114 ]
  %128 = getelementptr inbounds [50 x [50 x double]], [50 x [50 x double]]* @a, i64 0, i64 %110, i64 %110
  %129 = load double, double* %128, align 8, !tbaa !5
  %130 = fdiv double %127, %129
  %131 = getelementptr inbounds [50 x double], [50 x double]* @x, i64 0, i64 %110
  store double %130, double* %131, align 8, !tbaa !5
  %132 = icmp sgt i64 %109, 1
  br i1 %132, label %108, label %133, !llvm.loop !21

133:                                              ; preds = %18, %126, %95, %2
  %134 = phi i32 [ 999, %2 ], [ 0, %95 ], [ 0, %126 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %4) #2
  ret i32 %134
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
