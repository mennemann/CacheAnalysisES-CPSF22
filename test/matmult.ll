; ModuleID = 'matmult.c'
source_filename = "matmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ArrayA = dso_local local_unnamed_addr global [20 x [20 x i32]] zeroinitializer, align 16
@ArrayB = dso_local local_unnamed_addr global [20 x [20 x i32]] zeroinitializer, align 16
@ResultArray = dso_local local_unnamed_addr global [20 x [20 x i32]] zeroinitializer, align 16
@Seed = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @main() local_unnamed_addr #0 {
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
  %10 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i64 0, i64 %3, i64 %6
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 20
  br i1 %12, label %13, label %4, !llvm.loop !9

13:                                               ; preds = %4
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 20
  br i1 %15, label %16, label %1, !llvm.loop !12

16:                                               ; preds = %13
  store i32 %9, i32* @Seed, align 4, !tbaa !5
  br label %17

17:                                               ; preds = %16, %29
  %18 = phi i32 [ %25, %29 ], [ %9, %16 ]
  %19 = phi i64 [ %30, %29 ], [ 0, %16 ]
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %18, %17 ], [ %25, %20 ]
  %22 = phi i64 [ 0, %17 ], [ %27, %20 ]
  %23 = mul nsw i32 %21, 133
  %24 = add nsw i32 %23, 81
  %25 = srem i32 %24, 8095
  %26 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i64 0, i64 %19, i64 %22
  store i32 %25, i32* %26, align 4, !tbaa !5
  %27 = add nuw nsw i64 %22, 1
  %28 = icmp eq i64 %27, 20
  br i1 %28, label %29, label %20, !llvm.loop !9

29:                                               ; preds = %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 20
  br i1 %31, label %32, label %17, !llvm.loop !12

32:                                               ; preds = %29
  store i32 %25, i32* @Seed, align 4, !tbaa !5
  br label %33

33:                                               ; preds = %32, %52
  %34 = phi i64 [ %53, %52 ], [ 0, %32 ]
  br label %35

35:                                               ; preds = %49, %33
  %36 = phi i64 [ 0, %33 ], [ %50, %49 ]
  %37 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* @ResultArray, i64 0, i64 %34, i64 %36
  store i32 0, i32* %37, align 4, !tbaa !5
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi i32 [ 0, %35 ], [ %46, %38 ]
  %40 = phi i64 [ 0, %35 ], [ %47, %38 ]
  %41 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* @ArrayA, i64 0, i64 %34, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = getelementptr inbounds [20 x [20 x i32]], [20 x [20 x i32]]* @ArrayB, i64 0, i64 %40, i64 %36
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = mul nsw i32 %44, %42
  %46 = add nsw i32 %39, %45
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, 20
  br i1 %48, label %49, label %38, !llvm.loop !13

49:                                               ; preds = %38
  store i32 %46, i32* %37, align 4, !tbaa !5
  %50 = add nuw nsw i64 %36, 1
  %51 = icmp eq i64 %50, 20
  br i1 %51, label %52, label %35, !llvm.loop !14

52:                                               ; preds = %49
  %53 = add nuw nsw i64 %34, 1
  %54 = icmp eq i64 %53, 20
  br i1 %54, label %55, label %33, !llvm.loop !15

55:                                               ; preds = %52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn writeonly
define dso_local void @InitSeed() local_unnamed_addr #1 {
  store i32 0, i32* @Seed, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @Test([20 x i32]* nocapture %0, [20 x i32]* nocapture %1, [20 x i32]* nocapture %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %15, %3
  %5 = phi i64 [ 0, %3 ], [ %16, %15 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = load i32, i32* @Seed, align 4, !tbaa !5
  %9 = mul nsw i32 %8, 133
  %10 = add nsw i32 %9, 81
  %11 = srem i32 %10, 8095
  store i32 %11, i32* @Seed, align 4, !tbaa !5
  %12 = getelementptr inbounds [20 x i32], [20 x i32]* %0, i64 %5, i64 %7
  store i32 %11, i32* %12, align 4, !tbaa !5
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 20
  br i1 %14, label %15, label %6, !llvm.loop !9

15:                                               ; preds = %6
  %16 = add nuw nsw i64 %5, 1
  %17 = icmp eq i64 %16, 20
  br i1 %17, label %18, label %4, !llvm.loop !12

18:                                               ; preds = %15, %29
  %19 = phi i64 [ %30, %29 ], [ 0, %15 ]
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %27, %20 ]
  %22 = load i32, i32* @Seed, align 4, !tbaa !5
  %23 = mul nsw i32 %22, 133
  %24 = add nsw i32 %23, 81
  %25 = srem i32 %24, 8095
  store i32 %25, i32* @Seed, align 4, !tbaa !5
  %26 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 %19, i64 %21
  store i32 %25, i32* %26, align 4, !tbaa !5
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, 20
  br i1 %28, label %29, label %20, !llvm.loop !9

29:                                               ; preds = %20
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 20
  br i1 %31, label %32, label %18, !llvm.loop !12

32:                                               ; preds = %29, %51
  %33 = phi i64 [ %52, %51 ], [ 0, %29 ]
  br label %34

34:                                               ; preds = %48, %32
  %35 = phi i64 [ 0, %32 ], [ %49, %48 ]
  %36 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 %33, i64 %35
  store i32 0, i32* %36, align 4, !tbaa !5
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i64 [ 0, %34 ], [ %46, %37 ]
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %0, i64 %33, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 %38, i64 %35
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = mul nsw i32 %42, %40
  %44 = load i32, i32* %36, align 4, !tbaa !5
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %36, align 4, !tbaa !5
  %46 = add nuw nsw i64 %38, 1
  %47 = icmp eq i64 %46, 20
  br i1 %47, label %48, label %37, !llvm.loop !13

48:                                               ; preds = %37
  %49 = add nuw nsw i64 %35, 1
  %50 = icmp eq i64 %49, 20
  br i1 %50, label %51, label %34, !llvm.loop !14

51:                                               ; preds = %48
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, 20
  br i1 %53, label %54, label %32, !llvm.loop !15

54:                                               ; preds = %51
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @Initialize([20 x i32]* nocapture %0) local_unnamed_addr #0 {
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
  %10 = getelementptr inbounds [20 x i32], [20 x i32]* %0, i64 %3, i64 %5
  store i32 %9, i32* %10, align 4, !tbaa !5
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 20
  br i1 %12, label %13, label %4, !llvm.loop !9

13:                                               ; preds = %4
  %14 = add nuw nsw i64 %3, 1
  %15 = icmp eq i64 %14, 20
  br i1 %15, label %16, label %2, !llvm.loop !12

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @Multiply([20 x i32]* nocapture readonly %0, [20 x i32]* nocapture readonly %1, [20 x i32]* nocapture %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %23
  %5 = phi i64 [ 0, %3 ], [ %24, %23 ]
  br label %6

6:                                                ; preds = %4, %20
  %7 = phi i64 [ 0, %4 ], [ %21, %20 ]
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 %5, i64 %7
  store i32 0, i32* %8, align 4, !tbaa !5
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %18, %9 ]
  %11 = getelementptr inbounds [20 x i32], [20 x i32]* %0, i64 %5, i64 %10
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 %10, i64 %7
  %14 = load i32, i32* %13, align 4, !tbaa !5
  %15 = mul nsw i32 %14, %12
  %16 = load i32, i32* %8, align 4, !tbaa !5
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %8, align 4, !tbaa !5
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, 20
  br i1 %19, label %20, label %9, !llvm.loop !13

20:                                               ; preds = %9
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, 20
  br i1 %22, label %23, label %6, !llvm.loop !14

23:                                               ; preds = %20
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 20
  br i1 %25, label %26, label %4, !llvm.loop !15

26:                                               ; preds = %23
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
!15 = distinct !{!15, !10, !11}
