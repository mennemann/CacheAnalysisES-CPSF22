; ModuleID = 'fibcall.c'
source_filename = "fibcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i32 @fib(i32 %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 1
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = add i32 %0, -2
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 28)
  %6 = add nuw nsw i32 %5, 2
  br label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %12, %7 ], [ 2, %3 ]
  %9 = phi i32 [ %11, %7 ], [ 1, %3 ]
  %10 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %11 = add nsw i32 %9, %10
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %8, %6
  br i1 %13, label %14, label %7, !llvm.loop !5

14:                                               ; preds = %7, %1
  %15 = phi i32 [ 1, %1 ], [ %11, %7 ]
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  ret i32 30
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
