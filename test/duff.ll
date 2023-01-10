; ModuleID = 'duff.c'
source_filename = "duff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@source = dso_local local_unnamed_addr global [100 x i8] zeroinitializer, align 16
@target = dso_local local_unnamed_addr global [100 x i8] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @duffcopy(i8* nocapture %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %2, 7
  %5 = sdiv i32 %4, 8
  %6 = srem i32 %2, 8
  switch i32 %6, label %65 [
    i32 0, label %7
    i32 7, label %14
    i32 6, label %21
    i32 5, label %28
    i32 4, label %35
    i32 3, label %42
    i32 2, label %49
    i32 1, label %56
  ]

7:                                                ; preds = %3, %56
  %8 = phi i8* [ %60, %56 ], [ %1, %3 ]
  %9 = phi i8* [ %62, %56 ], [ %0, %3 ]
  %10 = phi i32 [ %63, %56 ], [ %5, %3 ]
  %11 = getelementptr inbounds i8, i8* %8, i64 1
  %12 = load i8, i8* %8, align 1, !tbaa !5
  %13 = getelementptr inbounds i8, i8* %9, i64 1
  store i8 %12, i8* %9, align 1, !tbaa !5
  br label %14

14:                                               ; preds = %3, %7
  %15 = phi i8* [ %11, %7 ], [ %1, %3 ]
  %16 = phi i8* [ %13, %7 ], [ %0, %3 ]
  %17 = phi i32 [ %10, %7 ], [ %5, %3 ]
  %18 = getelementptr inbounds i8, i8* %15, i64 1
  %19 = load i8, i8* %15, align 1, !tbaa !5
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %19, i8* %16, align 1, !tbaa !5
  br label %21

21:                                               ; preds = %3, %14
  %22 = phi i8* [ %18, %14 ], [ %1, %3 ]
  %23 = phi i8* [ %20, %14 ], [ %0, %3 ]
  %24 = phi i32 [ %17, %14 ], [ %5, %3 ]
  %25 = getelementptr inbounds i8, i8* %22, i64 1
  %26 = load i8, i8* %22, align 1, !tbaa !5
  %27 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 %26, i8* %23, align 1, !tbaa !5
  br label %28

28:                                               ; preds = %3, %21
  %29 = phi i8* [ %25, %21 ], [ %1, %3 ]
  %30 = phi i8* [ %27, %21 ], [ %0, %3 ]
  %31 = phi i32 [ %24, %21 ], [ %5, %3 ]
  %32 = getelementptr inbounds i8, i8* %29, i64 1
  %33 = load i8, i8* %29, align 1, !tbaa !5
  %34 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %33, i8* %30, align 1, !tbaa !5
  br label %35

35:                                               ; preds = %3, %28
  %36 = phi i8* [ %32, %28 ], [ %1, %3 ]
  %37 = phi i8* [ %34, %28 ], [ %0, %3 ]
  %38 = phi i32 [ %31, %28 ], [ %5, %3 ]
  %39 = getelementptr inbounds i8, i8* %36, i64 1
  %40 = load i8, i8* %36, align 1, !tbaa !5
  %41 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %40, i8* %37, align 1, !tbaa !5
  br label %42

42:                                               ; preds = %3, %35
  %43 = phi i8* [ %39, %35 ], [ %1, %3 ]
  %44 = phi i8* [ %41, %35 ], [ %0, %3 ]
  %45 = phi i32 [ %38, %35 ], [ %5, %3 ]
  %46 = getelementptr inbounds i8, i8* %43, i64 1
  %47 = load i8, i8* %43, align 1, !tbaa !5
  %48 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %47, i8* %44, align 1, !tbaa !5
  br label %49

49:                                               ; preds = %3, %42
  %50 = phi i8* [ %46, %42 ], [ %1, %3 ]
  %51 = phi i8* [ %48, %42 ], [ %0, %3 ]
  %52 = phi i32 [ %45, %42 ], [ %5, %3 ]
  %53 = getelementptr inbounds i8, i8* %50, i64 1
  %54 = load i8, i8* %50, align 1, !tbaa !5
  %55 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %54, i8* %51, align 1, !tbaa !5
  br label %56

56:                                               ; preds = %3, %49
  %57 = phi i8* [ %1, %3 ], [ %53, %49 ]
  %58 = phi i8* [ %0, %3 ], [ %55, %49 ]
  %59 = phi i32 [ %5, %3 ], [ %52, %49 ]
  %60 = getelementptr inbounds i8, i8* %57, i64 1
  %61 = load i8, i8* %57, align 1, !tbaa !5
  %62 = getelementptr inbounds i8, i8* %58, i64 1
  store i8 %61, i8* %58, align 1, !tbaa !5
  %63 = add nsw i32 %59, -1
  %64 = icmp sgt i32 %59, 1
  br i1 %64, label %7, label %65, !llvm.loop !8

65:                                               ; preds = %56, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable writeonly
define dso_local void @initialize(i8* nocapture %0, i32 %1) local_unnamed_addr #1 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %12, %6 ]
  %8 = trunc i64 %7 to i32
  %9 = sub nsw i32 %1, %8
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, i8* %0, i64 %7
  store i8 %10, i8* %11, align 1, !tbaa !5
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %14, label %6, !llvm.loop !11

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = trunc i64 %2 to i8
  %4 = sub i8 100, %3
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* @source, i64 0, i64 %2
  store i8 %4, i8* %5, align 1, !tbaa !5
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 100
  br i1 %7, label %8, label %1, !llvm.loop !11

8:                                                ; preds = %1
  %9 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @target, i64 0, i64 0), align 16, !tbaa !5
  store i8 %9, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @source, i64 0, i64 0), align 16, !tbaa !5
  %10 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @target, i64 0, i64 1), align 1, !tbaa !5
  store i8 %10, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @source, i64 0, i64 1), align 1, !tbaa !5
  %11 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @target, i64 0, i64 2), align 2, !tbaa !5
  store i8 %11, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @source, i64 0, i64 2), align 2, !tbaa !5
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i32 [ 6, %8 ], [ %18, %12 ]
  %14 = phi i8* [ getelementptr inbounds ([100 x i8], [100 x i8]* @source, i64 0, i64 0), %8 ], [ %33, %12 ]
  %15 = phi i8* [ getelementptr inbounds ([100 x i8], [100 x i8]* @target, i64 0, i64 0), %8 ], [ %31, %12 ]
  %16 = getelementptr inbounds i8, i8* %14, i64 3
  %17 = getelementptr inbounds i8, i8* %15, i64 3
  %18 = add nsw i32 %13, -1
  %19 = getelementptr inbounds i8, i8* %15, i64 4
  %20 = load i8, i8* %17, align 1, !tbaa !5
  %21 = getelementptr inbounds i8, i8* %14, i64 4
  store i8 %20, i8* %16, align 1, !tbaa !5
  %22 = getelementptr inbounds i8, i8* %15, i64 5
  %23 = load i8, i8* %19, align 1, !tbaa !5
  %24 = getelementptr inbounds i8, i8* %14, i64 5
  store i8 %23, i8* %21, align 1, !tbaa !5
  %25 = getelementptr inbounds i8, i8* %15, i64 6
  %26 = load i8, i8* %22, align 1, !tbaa !5
  %27 = getelementptr inbounds i8, i8* %14, i64 6
  store i8 %26, i8* %24, align 1, !tbaa !5
  %28 = getelementptr inbounds i8, i8* %15, i64 7
  %29 = load i8, i8* %25, align 1, !tbaa !5
  %30 = getelementptr inbounds i8, i8* %14, i64 7
  store i8 %29, i8* %27, align 1, !tbaa !5
  %31 = getelementptr inbounds i8, i8* %15, i64 8
  %32 = load i8, i8* %28, align 1, !tbaa !5
  %33 = getelementptr inbounds i8, i8* %14, i64 8
  store i8 %32, i8* %30, align 1, !tbaa !5
  %34 = getelementptr inbounds i8, i8* %15, i64 9
  %35 = load i8, i8* %31, align 1, !tbaa !5
  %36 = getelementptr inbounds i8, i8* %14, i64 9
  store i8 %35, i8* %33, align 1, !tbaa !5
  %37 = getelementptr inbounds i8, i8* %15, i64 10
  %38 = load i8, i8* %34, align 1, !tbaa !5
  %39 = getelementptr inbounds i8, i8* %14, i64 10
  store i8 %38, i8* %36, align 1, !tbaa !5
  %40 = load i8, i8* %37, align 1, !tbaa !5
  store i8 %40, i8* %39, align 1, !tbaa !5
  %41 = icmp ugt i32 %13, 2
  br i1 %41, label %12, label %42, !llvm.loop !8

42:                                               ; preds = %12
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
