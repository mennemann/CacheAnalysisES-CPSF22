; ModuleID = 'cover.c'
source_filename = "cover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i32 @swi120(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %4 = phi i32 [ %0, %1 ], [ %7, %2 ]
  %5 = icmp ult i32 %3, 120
  %6 = select i1 %5, i32 1, i32 -1
  %7 = add nsw i32 %4, %6
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 120
  br i1 %9, label %10, label %2, !llvm.loop !5

10:                                               ; preds = %2
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i32 @swi50(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %4 = phi i32 [ %0, %1 ], [ %7, %2 ]
  %5 = icmp ult i32 %3, 60
  %6 = select i1 %5, i32 1, i32 -1
  %7 = add nsw i32 %4, %6
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 50
  br i1 %9, label %10, label %2, !llvm.loop !8

10:                                               ; preds = %2
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i32 @swi10(i32 %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %4 = phi i32 [ %0, %1 ], [ %7, %2 ]
  %5 = icmp ult i32 %3, 10
  %6 = select i1 %5, i32 1, i32 -1
  %7 = add nsw i32 %4, %6
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 10
  br i1 %9, label %10, label %2, !llvm.loop !9

10:                                               ; preds = %2
  ret i32 %7
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2)
  store volatile i32 0, i32* %1, align 4, !tbaa !10
  %3 = load volatile i32, i32* %1, align 4, !tbaa !10
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %10, %4 ]
  %6 = phi i32 [ %3, %0 ], [ %9, %4 ]
  %7 = icmp ult i32 %5, 10
  %8 = select i1 %7, i32 1, i32 -1
  %9 = add nsw i32 %6, %8
  %10 = add nuw nsw i32 %5, 1
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %4, !llvm.loop !9

12:                                               ; preds = %4
  store volatile i32 %9, i32* %1, align 4, !tbaa !10
  %13 = load volatile i32, i32* %1, align 4, !tbaa !10
  %14 = call i32 @swi50(i32 %13)
  store volatile i32 %14, i32* %1, align 4, !tbaa !10
  %15 = load volatile i32, i32* %1, align 4, !tbaa !10
  %16 = call i32 @swi120(i32 %15)
  store volatile i32 %16, i32* %1, align 4, !tbaa !10
  %17 = load volatile i32, i32* %1, align 4, !tbaa !10
  %18 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18)
  ret i32 %17
}

attributes #0 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !6, !7}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
