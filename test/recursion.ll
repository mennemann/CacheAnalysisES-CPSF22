; ModuleID = 'recursion.c'
source_filename = "recursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@In = external global i32, align 4

; Function Attrs: nofree nosync nounwind readnone sspstrong uwtable
define dso_local i32 @fib(i32 %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, -1
  %5 = call i32 @fib(i32 %4)
  %6 = add nsw i32 %0, -2
  %7 = call i32 @fib(i32 %6)
  %8 = add nsw i32 %7, %5
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: nofree nosync nounwind readnone sspstrong uwtable
define dso_local i32 @kalle(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %0, -2
  %7 = call i32 @kalle(i32 %6) #2
  br label %8

8:                                                ; preds = %5, %3, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %5 ], [ 1, %3 ]
  ret i32 %9
}

; Function Attrs: nofree nosync nounwind readnone sspstrong uwtable
define dso_local i32 @anka(i32 %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, -1
  %5 = call i32 @kalle(i32 %4)
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 1, %1 ]
  ret i32 %7
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @main() local_unnamed_addr #1 {
  %1 = call i32 @fib(i32 10)
  store volatile i32 %1, i32* @In, align 4, !tbaa !5
  ret void
}

attributes #0 = { nofree nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
