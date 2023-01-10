; ModuleID = 'ud.c'
source_filename = "ud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@a = dso_local local_unnamed_addr global [50 x [50 x i64]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [50 x i64] zeroinitializer, align 16
@x = dso_local local_unnamed_addr global [50 x i64] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %16
  %2 = phi i64 [ 0, %0 ], [ %3, %16 ]
  %3 = add nuw nsw i64 %2, 1
  br label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ 0, %1 ], [ %7, %4 ]
  %6 = phi i64 [ 0, %1 ], [ %14, %4 ]
  %7 = add nuw nsw i64 %5, 1
  %8 = add nuw nsw i64 %3, %7
  %9 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %2, i64 %5
  %10 = icmp eq i64 %2, %5
  %11 = shl nuw i64 %8, 1
  %12 = and i64 %11, 8589934590
  %13 = select i1 %10, i64 %12, i64 %8
  store i64 %13, i64* %9, align 8, !tbaa !5
  %14 = add nuw nsw i64 %13, %6
  %15 = icmp eq i64 %7, 6
  br i1 %15, label %16, label %4, !llvm.loop !9

16:                                               ; preds = %4
  %17 = getelementptr inbounds [50 x i64], [50 x i64]* @b, i64 0, i64 %2
  store i64 %14, i64* %17, align 8, !tbaa !5
  %18 = icmp eq i64 %3, 6
  br i1 %18, label %19, label %1, !llvm.loop !12

19:                                               ; preds = %16
  %20 = call i32 @ludcmp(i32 undef, i32 5)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @ludcmp(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = alloca [100 x i64], align 16
  %4 = bitcast [100 x i64]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 800, i8* nonnull %4) #2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = add i32 %1, 1
  %8 = zext i32 %1 to i64
  %9 = zext i32 %7 to i64
  %10 = zext i32 %7 to i64
  br label %14

11:                                               ; preds = %56
  %12 = add nuw nsw i64 %16, 1
  %13 = icmp eq i64 %17, %8
  br i1 %13, label %59, label %14, !llvm.loop !13

14:                                               ; preds = %6, %11
  %15 = phi i64 [ 0, %6 ], [ %17, %11 ]
  %16 = phi i64 [ 1, %6 ], [ %12, %11 ]
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %15, 0
  %19 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %15, i64 %15
  br label %20

20:                                               ; preds = %14, %35
  %21 = phi i64 [ %16, %14 ], [ %39, %35 ]
  %22 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %21, i64 %15
  %23 = load i64, i64* %22, align 8, !tbaa !5
  br i1 %18, label %35, label %24

24:                                               ; preds = %20, %24
  %25 = phi i64 [ %33, %24 ], [ 0, %20 ]
  %26 = phi i64 [ %32, %24 ], [ %23, %20 ]
  %27 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %21, i64 %25
  %28 = load i64, i64* %27, align 8, !tbaa !5
  %29 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %25, i64 %15
  %30 = load i64, i64* %29, align 8, !tbaa !5
  %31 = mul nsw i64 %30, %28
  %32 = sub nsw i64 %26, %31
  %33 = add nuw nsw i64 %25, 1
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %35, label %24, !llvm.loop !14

35:                                               ; preds = %24, %20
  %36 = phi i64 [ %23, %20 ], [ %32, %24 ]
  %37 = load i64, i64* %19, align 8, !tbaa !5
  %38 = sdiv i64 %36, %37
  store i64 %38, i64* %22, align 8, !tbaa !5
  %39 = add nuw nsw i64 %21, 1
  %40 = icmp eq i64 %39, %9
  br i1 %40, label %41, label %20, !llvm.loop !15

41:                                               ; preds = %35, %56
  %42 = phi i64 [ %57, %56 ], [ %16, %35 ]
  %43 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %17, i64 %42
  %44 = load i64, i64* %43, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %41, %45
  %46 = phi i64 [ 0, %41 ], [ %54, %45 ]
  %47 = phi i64 [ %44, %41 ], [ %53, %45 ]
  %48 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %17, i64 %46
  %49 = load i64, i64* %48, align 8, !tbaa !5
  %50 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %46, i64 %42
  %51 = load i64, i64* %50, align 8, !tbaa !5
  %52 = mul nsw i64 %51, %49
  %53 = sub nsw i64 %47, %52
  %54 = add nuw nsw i64 %46, 1
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %56, label %45, !llvm.loop !16

56:                                               ; preds = %45
  store i64 %53, i64* %43, align 8, !tbaa !5
  %57 = add nuw nsw i64 %42, 1
  %58 = icmp eq i64 %57, %10
  br i1 %58, label %11, label %41, !llvm.loop !17

59:                                               ; preds = %11, %2
  %60 = load i64, i64* getelementptr inbounds ([50 x i64], [50 x i64]* @b, i64 0, i64 0), align 16, !tbaa !5
  %61 = getelementptr inbounds [100 x i64], [100 x i64]* %3, i64 0, i64 0
  store i64 %60, i64* %61, align 16, !tbaa !5
  %62 = icmp slt i32 %1, 1
  br i1 %62, label %85, label %63

63:                                               ; preds = %59
  %64 = add i32 %1, 1
  %65 = zext i32 %64 to i64
  br label %66

66:                                               ; preds = %63, %81
  %67 = phi i64 [ 1, %63 ], [ %83, %81 ]
  %68 = getelementptr inbounds [50 x i64], [50 x i64]* @b, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8, !tbaa !5
  br label %70

70:                                               ; preds = %66, %70
  %71 = phi i64 [ 0, %66 ], [ %79, %70 ]
  %72 = phi i64 [ %69, %66 ], [ %78, %70 ]
  %73 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %67, i64 %71
  %74 = load i64, i64* %73, align 8, !tbaa !5
  %75 = getelementptr inbounds [100 x i64], [100 x i64]* %3, i64 0, i64 %71
  %76 = load i64, i64* %75, align 8, !tbaa !5
  %77 = mul nsw i64 %76, %74
  %78 = sub nsw i64 %72, %77
  %79 = add nuw nsw i64 %71, 1
  %80 = icmp eq i64 %79, %67
  br i1 %80, label %81, label %70, !llvm.loop !18

81:                                               ; preds = %70
  %82 = getelementptr inbounds [100 x i64], [100 x i64]* %3, i64 0, i64 %67
  store i64 %78, i64* %82, align 8, !tbaa !5
  %83 = add nuw nsw i64 %67, 1
  %84 = icmp eq i64 %83, %65
  br i1 %84, label %85, label %66, !llvm.loop !19

85:                                               ; preds = %81, %59
  %86 = sext i32 %1 to i64
  %87 = getelementptr inbounds [100 x i64], [100 x i64]* %3, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8, !tbaa !5
  %89 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %86, i64 %86
  %90 = load i64, i64* %89, align 8, !tbaa !5
  %91 = sdiv i64 %88, %90
  %92 = getelementptr inbounds [50 x i64], [50 x i64]* @x, i64 0, i64 %86
  store i64 %91, i64* %92, align 8, !tbaa !5
  %93 = icmp sgt i32 %1, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %85
  %95 = sext i32 %1 to i64
  %96 = add i32 %1, 1
  %97 = sext i32 %1 to i64
  br label %98

98:                                               ; preds = %94, %116
  %99 = phi i64 [ %95, %94 ], [ %100, %116 ]
  %100 = add nsw i64 %99, -1
  %101 = getelementptr inbounds [100 x i64], [100 x i64]* %3, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8, !tbaa !5
  %103 = icmp sgt i64 %99, %97
  br i1 %103, label %116, label %104

104:                                              ; preds = %98, %104
  %105 = phi i64 [ %113, %104 ], [ %99, %98 ]
  %106 = phi i64 [ %112, %104 ], [ %102, %98 ]
  %107 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %100, i64 %105
  %108 = load i64, i64* %107, align 8, !tbaa !5
  %109 = getelementptr inbounds [50 x i64], [50 x i64]* @x, i64 0, i64 %105
  %110 = load i64, i64* %109, align 8, !tbaa !5
  %111 = mul nsw i64 %110, %108
  %112 = sub nsw i64 %106, %111
  %113 = add nsw i64 %105, 1
  %114 = trunc i64 %113 to i32
  %115 = icmp eq i32 %96, %114
  br i1 %115, label %116, label %104, !llvm.loop !20

116:                                              ; preds = %104, %98
  %117 = phi i64 [ %102, %98 ], [ %112, %104 ]
  %118 = getelementptr inbounds [50 x [50 x i64]], [50 x [50 x i64]]* @a, i64 0, i64 %100, i64 %100
  %119 = load i64, i64* %118, align 8, !tbaa !5
  %120 = sdiv i64 %117, %119
  %121 = getelementptr inbounds [50 x i64], [50 x i64]* @x, i64 0, i64 %100
  store i64 %120, i64* %121, align 8, !tbaa !5
  %122 = icmp sgt i64 %99, 1
  br i1 %122, label %98, label %123, !llvm.loop !21

123:                                              ; preds = %116, %85
  call void @llvm.lifetime.end.p0i8(i64 800, i8* nonnull %4) #2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"clang version 13.0.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
