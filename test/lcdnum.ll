; ModuleID = 'lcdnum.c'
source_filename = "lcdnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@IN = dso_local global i8 0, align 1
@OUT = dso_local global i8 0, align 1
@switch.table.main = private unnamed_addr constant [15 x i8] c"$]m.]{%\7Fo?zS|[\1B", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local zeroext i8 @num_to_lcd(i8 zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  %3 = icmp ult i8 %2, 15
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = sext i8 %2 to i64
  %6 = getelementptr inbounds [15 x i8], [15 x i8]* @switch.table.main, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %0, %15
  %2 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %3 = load volatile i8, i8* @IN, align 1, !tbaa !5
  %4 = icmp ult i32 %2, 5
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = and i8 %3, 15
  %7 = add nsw i8 %6, -1
  %8 = icmp ult i8 %7, 15
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = sext i8 %7 to i64
  %11 = getelementptr inbounds [15 x i8], [15 x i8]* @switch.table.main, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i8 [ 0, %5 ], [ %12, %9 ]
  store volatile i8 %14, i8* @OUT, align 1, !tbaa !5
  br label %15

15:                                               ; preds = %1, %13
  %16 = add nuw nsw i32 %2, 1
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %1, !llvm.loop !8

18:                                               ; preds = %15
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
