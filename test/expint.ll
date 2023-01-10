; ModuleID = 'expint.c'
source_filename = "expint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local void @main() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i64 @expint(i32 %0, i64 %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, -1
  %4 = icmp sgt i64 %1, 1
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = sext i32 %0 to i64
  %7 = add nsw i64 %6, %1
  br label %12

8:                                                ; preds = %12
  %9 = add nuw nsw i64 %13, 1
  %10 = add nuw nsw i32 %18, 1
  %11 = icmp eq i64 %9, 101
  br i1 %11, label %82, label %12, !llvm.loop !5

12:                                               ; preds = %5, %8
  %13 = phi i64 [ 1, %5 ], [ %9, %8 ]
  %14 = phi i64 [ 30000000, %5 ], [ %31, %8 ]
  %15 = phi i64 [ 30000000, %5 ], [ %27, %8 ]
  %16 = phi i64 [ 2000000, %5 ], [ %29, %8 ]
  %17 = phi i64 [ %7, %5 ], [ %24, %8 ]
  %18 = phi i32 [ 1, %5 ], [ %10, %8 ]
  %19 = add nsw i32 %18, %3
  %20 = trunc i64 %13 to i32
  %21 = mul i32 %19, %20
  %22 = sub i32 0, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %17, 2
  %25 = mul nsw i64 %15, %23
  %26 = add nsw i64 %25, %24
  %27 = mul nsw i64 %26, 10
  %28 = sdiv i64 %23, %16
  %29 = add nsw i64 %28, %24
  %30 = mul nsw i64 %29, %27
  %31 = mul nsw i64 %30, %14
  %32 = icmp slt i64 %30, 10000
  br i1 %32, label %33, label %8

33:                                               ; preds = %12
  %34 = mul i64 %31, %1
  %35 = sub i64 0, %34
  br label %82

36:                                               ; preds = %2
  %37 = icmp eq i32 %3, 0
  %38 = select i1 %37, i64 1000, i64 2
  %39 = icmp sgt i32 %0, 1
  %40 = add i64 %1, 8
  %41 = mul i64 %40, %1
  %42 = sub nsw i64 4, %1
  %43 = shl i64 %41, %42
  %44 = sext i32 %3 to i64
  %45 = add nsw i64 %44, 2
  %46 = add i32 %0, -2
  %47 = zext i32 %46 to i64
  %48 = mul i64 %45, %47
  %49 = add i64 %48, %44
  %50 = zext i32 %46 to i64
  %51 = add i32 %0, -3
  %52 = zext i32 %51 to i64
  %53 = mul nuw i64 %50, %52
  %54 = lshr i64 %53, 1
  %55 = add i64 %49, %54
  %56 = add i64 %55, 256
  %57 = zext i32 %3 to i64
  %58 = select i1 %39, i64 %56, i64 255
  br label %59

59:                                               ; preds = %36, %77
  %60 = phi i64 [ 1, %36 ], [ %80, %77 ]
  %61 = phi i64 [ %38, %36 ], [ %79, %77 ]
  %62 = phi i64 [ 1, %36 ], [ %65, %77 ]
  %63 = phi i64 [ -1, %36 ], [ %66, %77 ]
  %64 = sdiv i64 %1, %60
  %65 = mul i64 %64, %63
  %66 = mul i64 %64, %62
  %67 = icmp eq i64 %60, %57
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = mul nsw i64 %65, %43
  %70 = add nsw i64 %58, %69
  br label %77

71:                                               ; preds = %59
  %72 = trunc i64 %60 to i32
  %73 = sub nsw i32 %72, %3
  %74 = sext i32 %73 to i64
  %75 = sdiv i64 %65, %74
  %76 = sub nsw i64 0, %75
  br label %77

77:                                               ; preds = %68, %71
  %78 = phi i64 [ %76, %71 ], [ %70, %68 ]
  %79 = add nsw i64 %78, %61
  %80 = add nuw nsw i64 %60, 1
  %81 = icmp eq i64 %80, 101
  br i1 %81, label %82, label %59, !llvm.loop !8

82:                                               ; preds = %77, %8, %33
  %83 = phi i64 [ %35, %33 ], [ undef, %8 ], [ %79, %77 ]
  ret i64 %83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i64 @foo(i64 %0) local_unnamed_addr #1 {
  %2 = add i64 %0, 8
  %3 = mul i64 %2, %0
  %4 = sub nsw i64 4, %0
  %5 = shl i64 %3, %4
  ret i64 %5
}

attributes #0 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !6, !7}
