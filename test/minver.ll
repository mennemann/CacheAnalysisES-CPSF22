; ModuleID = 'minver.c'
source_filename = "minver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = internal unnamed_addr global [3 x [3 x double]] [[3 x double] [double 3.000000e+00, double -6.000000e+00, double 7.000000e+00], [3 x double] [double 9.000000e+00, double 0.000000e+00, double -5.000000e+00], [3 x double] [double 5.000000e+00, double -8.000000e+00, double 6.000000e+00]], align 16
@aa = dso_local local_unnamed_addr global [3 x [3 x double]] zeroinitializer, align 16
@a_i = dso_local local_unnamed_addr global [3 x [3 x double]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [3 x [3 x double]] zeroinitializer, align 16
@c = dso_local local_unnamed_addr global [3 x [3 x double]] zeroinitializer, align 16
@det = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@e = dso_local local_unnamed_addr global [3 x [3 x double]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local double @minver_fabs(double %0) local_unnamed_addr #0 {
  %2 = fcmp ult double %0, 0.000000e+00
  %3 = fneg double %0
  %4 = select i1 %2, double %3, double %0
  ret double %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([3 x [3 x double]]* @aa to i8*), i8* noundef nonnull align 16 dereferenceable(72) bitcast ([3 x [3 x double]]* @a to i8*), i64 72, i1 false)
  %1 = call i32 @minver(i32 3, i32 3, double 0x3EB0C6F7A0B5ED8D)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(72) bitcast ([3 x [3 x double]]* @a_i to i8*), i8* noundef nonnull align 16 dereferenceable(72) bitcast ([3 x [3 x double]]* @a to i8*), i64 72, i1 false)
  br label %2

2:                                                ; preds = %0, %21
  %3 = phi i64 [ %22, %21 ], [ 0, %0 ]
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i64 [ 0, %2 ], [ %19, %17 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %15, %6 ]
  %8 = phi double [ 0.000000e+00, %4 ], [ %14, %6 ]
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %3, i64 %7
  %10 = load double, double* %9, align 8, !tbaa !5
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i64 0, i64 %7, i64 %5
  %12 = load double, double* %11, align 8, !tbaa !5
  %13 = fmul double %10, %12
  %14 = fadd double %8, %13
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 3
  br i1 %16, label %17, label %6, !llvm.loop !9

17:                                               ; preds = %6
  %18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @c, i64 0, i64 %3, i64 %5
  store double %14, double* %18, align 8, !tbaa !5
  %19 = add nuw nsw i64 %5, 1
  %20 = icmp eq i64 %19, 3
  br i1 %20, label %21, label %4, !llvm.loop !12

21:                                               ; preds = %17
  %22 = add nuw nsw i64 %3, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %2, !llvm.loop !13

24:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @minver(i32 %0, i32 %1, double %2) local_unnamed_addr #2 {
  %4 = alloca [500 x i32], align 16
  %5 = bitcast [500 x i32]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 2000, i8* nonnull %5) #5
  %6 = add i32 %0, -2
  %7 = icmp ugt i32 %6, 498
  %8 = fcmp ole double %2, 0.000000e+00
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %155, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %0, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = zext i32 %0 to i64
  br label %27

14:                                               ; preds = %27, %10
  %15 = icmp sgt i32 %0, 0
  %16 = icmp sgt i32 %0, 0
  %17 = icmp sgt i32 %0, 0
  %18 = icmp sgt i32 %0, 0
  %19 = icmp sgt i32 %0, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = zext i32 %0 to i64
  %22 = zext i32 %0 to i64
  %23 = zext i32 %0 to i64
  %24 = zext i32 %0 to i64
  %25 = zext i32 %0 to i64
  %26 = zext i32 %0 to i64
  br label %33

27:                                               ; preds = %12, %27
  %28 = phi i64 [ 0, %12 ], [ %31, %27 ]
  %29 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %28
  %30 = trunc i64 %28 to i32
  store i32 %30, i32* %29, align 4, !tbaa !14
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %13
  br i1 %32, label %14, label %27, !llvm.loop !16

33:                                               ; preds = %20, %121
  %34 = phi i64 [ 0, %20 ], [ %124, %121 ]
  %35 = phi double [ 1.000000e+00, %20 ], [ %85, %121 ]
  %36 = phi i32 [ undef, %20 ], [ %54, %121 ]
  br label %43

37:                                               ; preds = %121, %14
  %38 = phi double [ 1.000000e+00, %14 ], [ %85, %121 ]
  %39 = icmp sgt i32 %0, 0
  %40 = icmp sgt i32 %0, 0
  br i1 %40, label %41, label %152

41:                                               ; preds = %37
  %42 = zext i32 %0 to i64
  br label %126

43:                                               ; preds = %33, %43
  %44 = phi i64 [ %34, %33 ], [ %56, %43 ]
  %45 = phi double [ 0.000000e+00, %33 ], [ %55, %43 ]
  %46 = phi i32 [ %36, %33 ], [ %54, %43 ]
  %47 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %44, i64 %34
  %48 = load double, double* %47, align 8, !tbaa !5
  %49 = fcmp ult double %48, 0.000000e+00
  %50 = fneg double %48
  %51 = select i1 %49, double %50, double %48
  %52 = fcmp ogt double %51, %45
  %53 = trunc i64 %44 to i32
  %54 = select i1 %52, i32 %53, i32 %46
  %55 = select i1 %52, double %51, double %45
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, %22
  br i1 %57, label %58, label %43, !llvm.loop !17

58:                                               ; preds = %43
  %59 = sext i32 %54 to i64
  %60 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %59, i64 %34
  %61 = load double, double* %60, align 8, !tbaa !5
  %62 = fcmp ult double %61, 0.000000e+00
  %63 = fneg double %61
  %64 = select i1 %62, double %63, double %61
  %65 = fcmp ugt double %64, %2
  br i1 %65, label %66, label %152

66:                                               ; preds = %58
  %67 = fmul double %35, %61
  %68 = zext i32 %54 to i64
  %69 = icmp eq i64 %34, %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = fneg double %51
  %72 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %34
  %73 = load i32, i32* %72, align 4, !tbaa !14
  %74 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %59
  %75 = load i32, i32* %74, align 4, !tbaa !14
  store i32 %75, i32* %72, align 4, !tbaa !14
  store i32 %73, i32* %74, align 4, !tbaa !14
  br i1 %15, label %76, label %84

76:                                               ; preds = %70, %76
  %77 = phi i64 [ %82, %76 ], [ 0, %70 ]
  %78 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %34, i64 %77
  %79 = load double, double* %78, align 8, !tbaa !5
  %80 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %59, i64 %77
  %81 = load double, double* %80, align 8, !tbaa !5
  store double %81, double* %78, align 8, !tbaa !5
  store double %79, double* %80, align 8, !tbaa !5
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, %23
  br i1 %83, label %84, label %76, !llvm.loop !18

84:                                               ; preds = %76, %70, %66
  %85 = phi double [ %67, %66 ], [ %71, %70 ], [ %71, %76 ]
  br i1 %16, label %87, label %86

86:                                               ; preds = %87, %84
  br i1 %18, label %94, label %121

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %92, %87 ], [ 0, %84 ]
  %89 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %34, i64 %88
  %90 = load double, double* %89, align 8, !tbaa !5
  %91 = fdiv double %90, %61
  store double %91, double* %89, align 8, !tbaa !5
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %24
  br i1 %93, label %86, label %87, !llvm.loop !19

94:                                               ; preds = %86, %118
  %95 = phi i64 [ %119, %118 ], [ 0, %86 ]
  %96 = icmp eq i64 %95, %34
  br i1 %96, label %118, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %95, i64 %34
  %99 = load double, double* %98, align 8, !tbaa !5
  %100 = fcmp une double %99, 0.000000e+00
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  br i1 %17, label %102, label %115

102:                                              ; preds = %101, %112
  %103 = phi i64 [ %113, %112 ], [ 0, %101 ]
  %104 = icmp eq i64 %103, %34
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %34, i64 %103
  %107 = load double, double* %106, align 8, !tbaa !5
  %108 = fmul double %99, %107
  %109 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %95, i64 %103
  %110 = load double, double* %109, align 8, !tbaa !5
  %111 = fsub double %110, %108
  store double %111, double* %109, align 8, !tbaa !5
  br label %112

112:                                              ; preds = %102, %105
  %113 = add nuw nsw i64 %103, 1
  %114 = icmp eq i64 %113, %26
  br i1 %114, label %115, label %102, !llvm.loop !20

115:                                              ; preds = %112, %101
  %116 = fneg double %99
  %117 = fdiv double %116, %61
  store double %117, double* %98, align 8, !tbaa !5
  br label %118

118:                                              ; preds = %94, %115, %97
  %119 = add nuw nsw i64 %95, 1
  %120 = icmp eq i64 %119, %25
  br i1 %120, label %121, label %94, !llvm.loop !21

121:                                              ; preds = %118, %86
  %122 = fdiv double 1.000000e+00, %61
  %123 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %34, i64 %34
  store double %122, double* %123, align 8, !tbaa !5
  %124 = add nuw nsw i64 %34, 1
  %125 = icmp eq i64 %124, %21
  br i1 %125, label %37, label %33, !llvm.loop !22

126:                                              ; preds = %41, %149
  %127 = phi i64 [ 0, %41 ], [ %150, %149 ]
  %128 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4, !tbaa !14
  %130 = zext i32 %129 to i64
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %149, label %136

132:                                              ; preds = %143, %136
  %133 = load i32, i32* %128, align 4, !tbaa !14
  %134 = zext i32 %133 to i64
  %135 = icmp eq i64 %127, %134
  br i1 %135, label %149, label %136, !llvm.loop !23

136:                                              ; preds = %126, %132
  %137 = phi i32 [ %133, %132 ], [ %129, %126 ]
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [500 x i32], [500 x i32]* %4, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !14
  store i32 %137, i32* %139, align 4, !tbaa !14
  store i32 %140, i32* %128, align 4, !tbaa !14
  %141 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %138, i64 %127
  %142 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %138, i64 %138
  br i1 %39, label %143, label %132

143:                                              ; preds = %136, %143
  %144 = phi i32 [ %147, %143 ], [ 0, %136 ]
  %145 = load double, double* %141, align 8, !tbaa !5
  %146 = load double, double* %142, align 8, !tbaa !5
  store double %146, double* %141, align 8, !tbaa !5
  store double %145, double* %142, align 8, !tbaa !5
  %147 = add nuw nsw i32 %144, 1
  %148 = icmp eq i32 %147, %0
  br i1 %148, label %132, label %143, !llvm.loop !24

149:                                              ; preds = %132, %126
  %150 = add nuw nsw i64 %127, 1
  %151 = icmp eq i64 %150, %42
  br i1 %151, label %152, label %126, !llvm.loop !25

152:                                              ; preds = %58, %149, %37
  %153 = phi double [ %38, %37 ], [ %38, %149 ], [ %35, %58 ]
  %154 = phi i32 [ 0, %37 ], [ 0, %149 ], [ 1, %58 ]
  store double %153, double* @det, align 8, !tbaa !5
  br label %155

155:                                              ; preds = %152, %3
  %156 = phi i32 [ 999, %3 ], [ %154, %152 ]
  call void @llvm.lifetime.end.p0i8(i64 2000, i8* nonnull %5) #5
  ret i32 %156
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @mmul(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #3 {
  %5 = icmp sgt i32 %0, 0
  %6 = icmp sgt i32 %2, 0
  %7 = select i1 %5, i1 %6, i1 false
  %8 = icmp sgt i32 %3, 0
  %9 = select i1 %7, i1 %8, i1 false
  %10 = icmp eq i32 %1, %2
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = zext i32 %0 to i64
  %14 = zext i32 %3 to i64
  %15 = zext i32 %2 to i64
  br label %16

16:                                               ; preds = %12, %35
  %17 = phi i64 [ 0, %12 ], [ %36, %35 ]
  br label %18

18:                                               ; preds = %16, %31
  %19 = phi i64 [ 0, %16 ], [ %33, %31 ]
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i64 [ 0, %18 ], [ %29, %20 ]
  %22 = phi double [ 0.000000e+00, %18 ], [ %28, %20 ]
  %23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @a, i64 0, i64 %17, i64 %21
  %24 = load double, double* %23, align 8, !tbaa !5
  %25 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @b, i64 0, i64 %21, i64 %19
  %26 = load double, double* %25, align 8, !tbaa !5
  %27 = fmul double %24, %26
  %28 = fadd double %22, %27
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %15
  br i1 %30, label %31, label %20, !llvm.loop !9

31:                                               ; preds = %20
  %32 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* @c, i64 0, i64 %17, i64 %19
  store double %28, double* %32, align 8, !tbaa !5
  %33 = add nuw nsw i64 %19, 1
  %34 = icmp eq i64 %33, %14
  br i1 %34, label %35, label %18, !llvm.loop !12

35:                                               ; preds = %31
  %36 = add nuw nsw i64 %17, 1
  %37 = icmp eq i64 %36, %13
  br i1 %37, label %38, label %16, !llvm.loop !13

38:                                               ; preds = %35, %4
  %39 = phi i32 [ 999, %4 ], [ 0, %35 ]
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
