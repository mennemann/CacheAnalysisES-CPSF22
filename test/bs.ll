; ModuleID = 'bs.c'
source_filename = "bs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DATA = type { i32, i32 }

@data = dso_local local_unnamed_addr global [15 x %struct.DATA] [%struct.DATA { i32 1, i32 100 }, %struct.DATA { i32 5, i32 200 }, %struct.DATA { i32 6, i32 300 }, %struct.DATA { i32 7, i32 700 }, %struct.DATA { i32 8, i32 900 }, %struct.DATA { i32 9, i32 250 }, %struct.DATA { i32 10, i32 400 }, %struct.DATA { i32 11, i32 600 }, %struct.DATA { i32 12, i32 800 }, %struct.DATA { i32 13, i32 1500 }, %struct.DATA { i32 14, i32 1200 }, %struct.DATA { i32 15, i32 110 }, %struct.DATA { i32 16, i32 140 }, %struct.DATA { i32 17, i32 133 }, %struct.DATA { i32 18, i32 10 }], align 16

; Function Attrs: nofree norecurse nosync nounwind readonly sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind readonly sspstrong uwtable
define dso_local i32 @binary_search(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %22
  %3 = phi i32 [ 0, %1 ], [ %25, %22 ]
  %4 = phi i32 [ 14, %1 ], [ %24, %22 ]
  %5 = phi i32 [ -1, %1 ], [ %23, %22 ]
  %6 = add nsw i32 %3, %4
  %7 = ashr i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i64 0, i64 %8, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = add nsw i32 %3, -1
  %14 = getelementptr inbounds [15 x %struct.DATA], [15 x %struct.DATA]* @data, i64 0, i64 %8, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !10
  br label %22

16:                                               ; preds = %2
  %17 = icmp sgt i32 %10, %0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = add nsw i32 %7, -1
  br label %22

20:                                               ; preds = %16
  %21 = add nsw i32 %7, 1
  br label %22

22:                                               ; preds = %18, %20, %12
  %23 = phi i32 [ %15, %12 ], [ %5, %18 ], [ %5, %20 ]
  %24 = phi i32 [ %13, %12 ], [ %19, %18 ], [ %4, %20 ]
  %25 = phi i32 [ %3, %12 ], [ %3, %18 ], [ %21, %20 ]
  %26 = icmp sgt i32 %25, %24
  br i1 %26, label %27, label %2, !llvm.loop !11

27:                                               ; preds = %22
  ret i32 %23
}

attributes #0 = { nofree norecurse nosync nounwind readonly sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"DATA", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
