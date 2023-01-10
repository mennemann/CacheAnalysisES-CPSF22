; ModuleID = 'insertsort.c'
source_filename = "insertsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [11 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  store i32 0, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 0), align 16, !tbaa !5
  store i32 11, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 1), align 4, !tbaa !5
  store i32 10, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 2), align 8, !tbaa !5
  store i32 9, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 3), align 4, !tbaa !5
  store i32 8, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 4), align 16, !tbaa !5
  store i32 7, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 5), align 4, !tbaa !5
  store i32 6, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 6), align 8, !tbaa !5
  store i32 5, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 7), align 4, !tbaa !5
  store i32 4, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 8), align 16, !tbaa !5
  store i32 3, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 9), align 4, !tbaa !5
  store i32 2, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @a, i64 0, i64 10), align 8, !tbaa !5
  br label %1

1:                                                ; preds = %0, %22
  %2 = phi i64 [ 2, %0 ], [ %23, %22 ]
  %3 = phi i64 [ 1, %0 ], [ %24, %22 ]
  %4 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %2
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %6 = add nsw i64 %2, -1
  %7 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1, %10
  %11 = phi i64 [ %18, %10 ], [ %3, %1 ]
  %12 = phi i32 [ %20, %10 ], [ %8, %1 ]
  %13 = phi i32* [ %19, %10 ], [ %7, %1 ]
  %14 = phi i32 [ %17, %10 ], [ %5, %1 ]
  %15 = phi i32* [ %16, %10 ], [ %4, %1 ]
  store i32 %12, i32* %15, align 4, !tbaa !5
  store i32 %14, i32* %13, align 4, !tbaa !5
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %11
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = add nsw i64 %11, -1
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* @a, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %10, label %22, !llvm.loop !9

22:                                               ; preds = %10, %1
  %23 = add nuw nsw i64 %2, 1
  %24 = add nuw nsw i64 %3, 1
  %25 = icmp eq i64 %23, 11
  br i1 %25, label %26, label %1, !llvm.loop !12

26:                                               ; preds = %22
  ret i32 1
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
