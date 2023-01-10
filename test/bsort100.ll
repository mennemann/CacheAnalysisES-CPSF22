; ModuleID = 'bsort100.c'
source_filename = "bsort100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Array = dso_local local_unnamed_addr global [101 x i32] zeroinitializer, align 16
@factor = dso_local local_unnamed_addr global i32 0, align 4
@Seed = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  store i32 -1, i32* @factor, align 4, !tbaa !5
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 1, %0 ], [ %9, %1 ]
  %3 = load i8, i8* inttoptr (i64 2149580801 to i8*), align 1, !tbaa !9
  %4 = sext i8 %3 to i32
  %5 = trunc i64 %2 to i32
  %6 = mul i32 %5, %4
  %7 = sub i32 0, %6
  %8 = getelementptr inbounds [101 x i32], [101 x i32]* @Array, i64 0, i64 %2
  store i32 %7, i32* %8, align 4, !tbaa !5
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 101
  br i1 %10, label %15, label %1, !llvm.loop !10

11:                                               ; preds = %31
  %12 = add nuw nsw i32 %17, 1
  %13 = add nsw i64 %16, -1
  %14 = icmp eq i32 %12, 100
  br i1 %14, label %33, label %15, !llvm.loop !13

15:                                               ; preds = %1, %11
  %16 = phi i64 [ %13, %11 ], [ 100, %1 ]
  %17 = phi i32 [ %12, %11 ], [ 1, %1 ]
  br label %18

18:                                               ; preds = %28, %15
  %19 = phi i64 [ 1, %15 ], [ %23, %28 ]
  %20 = phi i32 [ 1, %15 ], [ %29, %28 ]
  %21 = getelementptr inbounds [101 x i32], [101 x i32]* @Array, i64 0, i64 %19
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = add nuw nsw i64 %19, 1
  %24 = getelementptr inbounds [101 x i32], [101 x i32]* @Array, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 %25, i32* %21, align 4, !tbaa !5
  store i32 %22, i32* %24, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %27, %18
  %29 = phi i32 [ 0, %27 ], [ %20, %18 ]
  %30 = icmp eq i64 %23, %16
  br i1 %30, label %31, label %18, !llvm.loop !14

31:                                               ; preds = %28
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %11, label %33

33:                                               ; preds = %11, %31
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @ttime() local_unnamed_addr #1 {
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @Initialize(i32* nocapture %0) local_unnamed_addr #0 {
  store i32 -1, i32* @factor, align 4, !tbaa !5
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 1, %1 ], [ %10, %2 ]
  %4 = load i8, i8* inttoptr (i64 2149580801 to i8*), align 1, !tbaa !9
  %5 = sext i8 %4 to i32
  %6 = trunc i64 %3 to i32
  %7 = mul i32 %6, %5
  %8 = sub i32 0, %7
  %9 = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %8, i32* %9, align 4, !tbaa !5
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 101
  br i1 %11, label %12, label %2, !llvm.loop !10

12:                                               ; preds = %2
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @BubbleSort(i32* nocapture %0) local_unnamed_addr #0 {
  br label %6

2:                                                ; preds = %22
  %3 = add nuw nsw i32 %8, 1
  %4 = add nsw i64 %7, -1
  %5 = icmp eq i32 %3, 100
  br i1 %5, label %24, label %6, !llvm.loop !13

6:                                                ; preds = %1, %2
  %7 = phi i64 [ 100, %1 ], [ %4, %2 ]
  %8 = phi i32 [ 1, %1 ], [ %3, %2 ]
  br label %9

9:                                                ; preds = %6, %19
  %10 = phi i64 [ 1, %6 ], [ %14, %19 ]
  %11 = phi i32 [ 1, %6 ], [ %20, %19 ]
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = add nuw nsw i64 %10, 1
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 %16, i32* %12, align 4, !tbaa !5
  store i32 %13, i32* %15, align 4, !tbaa !5
  br label %19

19:                                               ; preds = %9, %18
  %20 = phi i32 [ 0, %18 ], [ %11, %9 ]
  %21 = icmp eq i64 %14, %7
  br i1 %21, label %22, label %9, !llvm.loop !14

22:                                               ; preds = %19
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %2, label %24

24:                                               ; preds = %22, %2
  ret i32 undef
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
