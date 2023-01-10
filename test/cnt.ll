; ModuleID = 'cnt.c'
source_filename = "cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Array = dso_local local_unnamed_addr global [10 x [10 x i32]] zeroinitializer, align 16
@Seed = dso_local local_unnamed_addr global i32 0, align 4
@Postotal = dso_local local_unnamed_addr global i32 0, align 4
@Poscnt = dso_local local_unnamed_addr global i32 0, align 4
@Negtotal = dso_local local_unnamed_addr global i32 0, align 4
@Negcnt = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  store i32 0, i32* @Seed, align 4, !tbaa !5
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %13 ]
  %3 = phi i64 [ 0, %0 ], [ %14, %13 ]
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %2, %1 ], [ %9, %4 ]
  %6 = phi i64 [ 0, %1 ], [ %11, %4 ]
  %7 = mul nsw i32 %5, 133
  %8 = add nsw i32 %7, 81
  %9 = srem i32 %8, 8095
  %10 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @Array, i64 0, i64 %3, i64 %6
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 10
  br i1 %12, label %13, label %4, !llvm.loop !9

13:                                               ; preds = %4
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %16, label %1, !llvm.loop !12

16:                                               ; preds = %13
  store i32 %9, i32* @Seed, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %16, %45
  %18 = phi i64 [ %46, %45 ], [ 0, %16 ]
  %19 = phi i32 [ %42, %45 ], [ 0, %16 ]
  %20 = phi i32 [ %41, %45 ], [ 0, %16 ]
  %21 = phi i32 [ %40, %45 ], [ 0, %16 ]
  %22 = phi i32 [ %39, %45 ], [ 0, %16 ]
  br label %23

23:                                               ; preds = %38, %17
  %24 = phi i64 [ 0, %17 ], [ %43, %38 ]
  %25 = phi i32 [ %19, %17 ], [ %42, %38 ]
  %26 = phi i32 [ %20, %17 ], [ %41, %38 ]
  %27 = phi i32 [ %21, %17 ], [ %40, %38 ]
  %28 = phi i32 [ %22, %17 ], [ %39, %38 ]
  %29 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @Array, i64 0, i64 %18, i64 %24
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = add nsw i32 %30, %28
  %34 = add nsw i32 %26, 1
  br label %38

35:                                               ; preds = %23
  %36 = add nsw i32 %30, %27
  %37 = add nsw i32 %25, 1
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %33, %32 ], [ %28, %35 ]
  %40 = phi i32 [ %27, %32 ], [ %36, %35 ]
  %41 = phi i32 [ %34, %32 ], [ %26, %35 ]
  %42 = phi i32 [ %25, %32 ], [ %37, %35 ]
  %43 = add nuw nsw i64 %24, 1
  %44 = icmp eq i64 %43, 10
  br i1 %44, label %45, label %23, !llvm.loop !13

45:                                               ; preds = %38
  %46 = add nuw nsw i64 %18, 1
  %47 = icmp eq i64 %46, 10
  br i1 %47, label %48, label %17, !llvm.loop !14

48:                                               ; preds = %45
  store i32 %39, i32* @Postotal, align 4, !tbaa !5
  store i32 %41, i32* @Poscnt, align 4, !tbaa !5
  store i32 %40, i32* @Negtotal, align 4, !tbaa !5
  store i32 %42, i32* @Negcnt, align 4, !tbaa !5
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn writeonly
define dso_local i32 @InitSeed() local_unnamed_addr #1 {
  store i32 0, i32* @Seed, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @Test([10 x i32]* nocapture %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi i64 [ 0, %1 ], [ %14, %13 ]
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = load i32, i32* @Seed, align 4, !tbaa !5
  %7 = mul nsw i32 %6, 133
  %8 = add nsw i32 %7, 81
  %9 = srem i32 %8, 8095
  store i32 %9, i32* @Seed, align 4, !tbaa !5
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %0, i64 %3, i64 %5
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 10
  br i1 %12, label %13, label %4, !llvm.loop !9

13:                                               ; preds = %4
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %16, label %2, !llvm.loop !12

16:                                               ; preds = %13, %44
  %17 = phi i64 [ %45, %44 ], [ 0, %13 ]
  %18 = phi i32 [ %41, %44 ], [ 0, %13 ]
  %19 = phi i32 [ %40, %44 ], [ 0, %13 ]
  %20 = phi i32 [ %39, %44 ], [ 0, %13 ]
  %21 = phi i32 [ %38, %44 ], [ 0, %13 ]
  br label %22

22:                                               ; preds = %37, %16
  %23 = phi i64 [ 0, %16 ], [ %42, %37 ]
  %24 = phi i32 [ %18, %16 ], [ %41, %37 ]
  %25 = phi i32 [ %19, %16 ], [ %40, %37 ]
  %26 = phi i32 [ %20, %16 ], [ %39, %37 ]
  %27 = phi i32 [ %21, %16 ], [ %38, %37 ]
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %0, i64 %17, i64 %23
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = add nsw i32 %29, %27
  %33 = add nsw i32 %25, 1
  br label %37

34:                                               ; preds = %22
  %35 = add nsw i32 %29, %26
  %36 = add nsw i32 %24, 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %32, %31 ], [ %27, %34 ]
  %39 = phi i32 [ %26, %31 ], [ %35, %34 ]
  %40 = phi i32 [ %33, %31 ], [ %25, %34 ]
  %41 = phi i32 [ %24, %31 ], [ %36, %34 ]
  %42 = add nuw nsw i64 %23, 1
  %43 = icmp eq i64 %42, 10
  br i1 %43, label %44, label %22, !llvm.loop !13

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %17, 1
  %46 = icmp eq i64 %45, 10
  br i1 %46, label %47, label %16, !llvm.loop !14

47:                                               ; preds = %44
  store i32 %38, i32* @Postotal, align 4, !tbaa !5
  store i32 %40, i32* @Poscnt, align 4, !tbaa !5
  store i32 %39, i32* @Negtotal, align 4, !tbaa !5
  store i32 %41, i32* @Negcnt, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @Initialize([10 x i32]* nocapture %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %13
  %3 = phi i64 [ 0, %1 ], [ %14, %13 ]
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %11, %4 ]
  %6 = load i32, i32* @Seed, align 4, !tbaa !5
  %7 = mul nsw i32 %6, 133
  %8 = add nsw i32 %7, 81
  %9 = srem i32 %8, 8095
  store i32 %9, i32* @Seed, align 4, !tbaa !5
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %0, i64 %3, i64 %5
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 10
  br i1 %12, label %13, label %4, !llvm.loop !9

13:                                               ; preds = %4
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %16, label %2, !llvm.loop !12

16:                                               ; preds = %13
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @Sum([10 x i32]* nocapture readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %30
  %3 = phi i64 [ 0, %1 ], [ %31, %30 ]
  %4 = phi i32 [ 0, %1 ], [ %27, %30 ]
  %5 = phi i32 [ 0, %1 ], [ %26, %30 ]
  %6 = phi i32 [ 0, %1 ], [ %25, %30 ]
  %7 = phi i32 [ 0, %1 ], [ %24, %30 ]
  br label %8

8:                                                ; preds = %2, %23
  %9 = phi i64 [ 0, %2 ], [ %28, %23 ]
  %10 = phi i32 [ %4, %2 ], [ %27, %23 ]
  %11 = phi i32 [ %5, %2 ], [ %26, %23 ]
  %12 = phi i32 [ %6, %2 ], [ %25, %23 ]
  %13 = phi i32 [ %7, %2 ], [ %24, %23 ]
  %14 = getelementptr inbounds [10 x i32], [10 x i32]* %0, i64 %3, i64 %9
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = add nsw i32 %15, %13
  %19 = add nsw i32 %11, 1
  br label %23

20:                                               ; preds = %8
  %21 = add nsw i32 %15, %12
  %22 = add nsw i32 %10, 1
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi i32 [ %18, %17 ], [ %13, %20 ]
  %25 = phi i32 [ %12, %17 ], [ %21, %20 ]
  %26 = phi i32 [ %19, %17 ], [ %11, %20 ]
  %27 = phi i32 [ %10, %17 ], [ %22, %20 ]
  %28 = add nuw nsw i64 %9, 1
  %29 = icmp eq i64 %28, 10
  br i1 %29, label %30, label %8, !llvm.loop !13

30:                                               ; preds = %23
  %31 = add nuw nsw i64 %3, 1
  %32 = icmp eq i64 %31, 10
  br i1 %32, label %33, label %2, !llvm.loop !14

33:                                               ; preds = %30
  store i32 %24, i32* @Postotal, align 4, !tbaa !5
  store i32 %26, i32* @Poscnt, align 4, !tbaa !5
  store i32 %25, i32* @Negtotal, align 4, !tbaa !5
  store i32 %27, i32* @Negcnt, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local i32 @RandomInteger() local_unnamed_addr #2 {
  %1 = load i32, i32* @Seed, align 4, !tbaa !5
  %2 = mul nsw i32 %1, 133
  %3 = add nsw i32 %2, 81
  %4 = srem i32 %3, 8095
  store i32 %4, i32* @Seed, align 4, !tbaa !5
  ret i32 %4
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
