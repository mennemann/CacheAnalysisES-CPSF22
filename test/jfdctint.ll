; ModuleID = 'jfdctint.c'
source_filename = "jfdctint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@data = dso_local local_unnamed_addr global [64 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @jpeg_fdct_islow() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 7, %0 ], [ %78, %1 ]
  %3 = phi i32* [ getelementptr inbounds ([64 x i32], [64 x i32]* @data, i64 0, i64 0), %0 ], [ %77, %1 ]
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %3, i64 7
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = add nsw i32 %6, %4
  %8 = sub nsw i32 %4, %6
  %9 = getelementptr inbounds i32, i32* %3, i64 1
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = getelementptr inbounds i32, i32* %3, i64 6
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = add nsw i32 %12, %10
  %14 = sub nsw i32 %10, %12
  %15 = getelementptr inbounds i32, i32* %3, i64 2
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %17 = getelementptr inbounds i32, i32* %3, i64 5
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = add nsw i32 %18, %16
  %20 = sub nsw i32 %16, %18
  %21 = getelementptr inbounds i32, i32* %3, i64 3
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %3, i64 4
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = add nsw i32 %24, %22
  %26 = sub nsw i32 %22, %24
  %27 = add nsw i32 %25, %7
  %28 = sub nsw i32 %7, %25
  %29 = add nsw i32 %19, %13
  %30 = sub nsw i32 %13, %19
  %31 = add nsw i32 %27, %29
  %32 = shl i32 %31, 2
  store i32 %32, i32* %3, align 4, !tbaa !5
  %33 = sub nsw i32 %27, %29
  %34 = shl i32 %33, 2
  store i32 %34, i32* %23, align 4, !tbaa !5
  %35 = add nsw i32 %28, %30
  %36 = mul nsw i32 %35, 4433
  %37 = mul nsw i32 %28, 6270
  %38 = add i32 %36, 1024
  %39 = add i32 %38, %37
  %40 = ashr i32 %39, 11
  store i32 %40, i32* %15, align 4, !tbaa !5
  %41 = mul nsw i32 %30, -15137
  %42 = add i32 %36, 1024
  %43 = add i32 %42, %41
  %44 = ashr i32 %43, 11
  store i32 %44, i32* %11, align 4, !tbaa !5
  %45 = add nsw i32 %26, %8
  %46 = add nsw i32 %20, %14
  %47 = add nsw i32 %26, %14
  %48 = add nsw i32 %20, %8
  %49 = add nsw i32 %47, %48
  %50 = mul nsw i32 %49, 9633
  %51 = mul nsw i32 %26, 2446
  %52 = mul nsw i32 %20, 16819
  %53 = mul nsw i32 %14, 25172
  %54 = mul nsw i32 %8, 12299
  %55 = mul nsw i32 %45, -7373
  %56 = mul nsw i32 %46, -20995
  %57 = mul nsw i32 %47, -16069
  %58 = mul nsw i32 %48, -3196
  %59 = add nsw i32 %50, %57
  %60 = add nsw i32 %50, %58
  %61 = add i32 %55, 1024
  %62 = add i32 %61, %51
  %63 = add i32 %62, %59
  %64 = ashr i32 %63, 11
  store i32 %64, i32* %5, align 4, !tbaa !5
  %65 = add i32 %56, 1024
  %66 = add i32 %65, %52
  %67 = add i32 %66, %60
  %68 = ashr i32 %67, 11
  store i32 %68, i32* %17, align 4, !tbaa !5
  %69 = add i32 %56, 1024
  %70 = add i32 %69, %53
  %71 = add i32 %70, %59
  %72 = ashr i32 %71, 11
  store i32 %72, i32* %21, align 4, !tbaa !5
  %73 = add i32 %55, 1024
  %74 = add i32 %73, %54
  %75 = add i32 %74, %60
  %76 = ashr i32 %75, 11
  store i32 %76, i32* %9, align 4, !tbaa !5
  %77 = getelementptr inbounds i32, i32* %3, i64 8
  %78 = add nsw i32 %2, -1
  %79 = icmp eq i32 %2, 0
  br i1 %79, label %80, label %1, !llvm.loop !9

80:                                               ; preds = %1, %80
  %81 = phi i32 [ %159, %80 ], [ 7, %1 ]
  %82 = phi i32* [ %158, %80 ], [ getelementptr inbounds ([64 x i32], [64 x i32]* @data, i64 0, i64 0), %1 ]
  %83 = load i32, i32* %82, align 4, !tbaa !5
  %84 = getelementptr inbounds i32, i32* %82, i64 56
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = add nsw i32 %85, %83
  %87 = sub nsw i32 %83, %85
  %88 = getelementptr inbounds i32, i32* %82, i64 8
  %89 = load i32, i32* %88, align 4, !tbaa !5
  %90 = getelementptr inbounds i32, i32* %82, i64 48
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = add nsw i32 %91, %89
  %93 = sub nsw i32 %89, %91
  %94 = getelementptr inbounds i32, i32* %82, i64 16
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = getelementptr inbounds i32, i32* %82, i64 40
  %97 = load i32, i32* %96, align 4, !tbaa !5
  %98 = add nsw i32 %97, %95
  %99 = sub nsw i32 %95, %97
  %100 = getelementptr inbounds i32, i32* %82, i64 24
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = getelementptr inbounds i32, i32* %82, i64 32
  %103 = load i32, i32* %102, align 4, !tbaa !5
  %104 = add nsw i32 %103, %101
  %105 = sub nsw i32 %101, %103
  %106 = add nsw i32 %104, %86
  %107 = sub nsw i32 %86, %104
  %108 = add nsw i32 %98, %92
  %109 = sub nsw i32 %92, %98
  %110 = add i32 %108, 2
  %111 = add i32 %110, %106
  %112 = ashr i32 %111, 2
  store i32 %112, i32* %82, align 4, !tbaa !5
  %113 = sub i32 2, %108
  %114 = add i32 %113, %106
  %115 = ashr i32 %114, 2
  store i32 %115, i32* %102, align 4, !tbaa !5
  %116 = add nsw i32 %107, %109
  %117 = mul nsw i32 %116, 4433
  %118 = mul nsw i32 %107, 6270
  %119 = add i32 %117, 16384
  %120 = add i32 %119, %118
  %121 = ashr i32 %120, 15
  store i32 %121, i32* %94, align 4, !tbaa !5
  %122 = mul nsw i32 %109, -15137
  %123 = add i32 %117, 16384
  %124 = add i32 %123, %122
  %125 = ashr i32 %124, 15
  store i32 %125, i32* %90, align 4, !tbaa !5
  %126 = add nsw i32 %105, %87
  %127 = add nsw i32 %99, %93
  %128 = add nsw i32 %105, %93
  %129 = add nsw i32 %99, %87
  %130 = add nsw i32 %128, %129
  %131 = mul nsw i32 %130, 9633
  %132 = mul nsw i32 %105, 2446
  %133 = mul nsw i32 %99, 16819
  %134 = mul nsw i32 %93, 25172
  %135 = mul nsw i32 %87, 12299
  %136 = mul nsw i32 %126, -7373
  %137 = mul nsw i32 %127, -20995
  %138 = mul nsw i32 %128, -16069
  %139 = mul nsw i32 %129, -3196
  %140 = add nsw i32 %131, %138
  %141 = add nsw i32 %131, %139
  %142 = add i32 %136, 16384
  %143 = add i32 %142, %132
  %144 = add i32 %143, %140
  %145 = ashr i32 %144, 15
  store i32 %145, i32* %84, align 4, !tbaa !5
  %146 = add i32 %137, 16384
  %147 = add i32 %146, %133
  %148 = add i32 %147, %141
  %149 = ashr i32 %148, 15
  store i32 %149, i32* %96, align 4, !tbaa !5
  %150 = add i32 %137, 16384
  %151 = add i32 %150, %134
  %152 = add i32 %151, %140
  %153 = ashr i32 %152, 15
  store i32 %153, i32* %100, align 4, !tbaa !5
  %154 = add i32 %136, 16384
  %155 = add i32 %154, %135
  %156 = add i32 %155, %141
  %157 = ashr i32 %156, 15
  store i32 %157, i32* %88, align 4, !tbaa !5
  %158 = getelementptr inbounds i32, i32* %82, i64 1
  %159 = add nsw i32 %81, -1
  %160 = icmp eq i32 %81, 0
  br i1 %160, label %161, label %80, !llvm.loop !12

161:                                              ; preds = %80
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %3 = phi i32 [ 1, %0 ], [ %6, %1 ]
  %4 = mul nsw i32 %3, 133
  %5 = add nsw i32 %4, 81
  %6 = srem i32 %5, 65535
  %7 = getelementptr inbounds [64 x i32], [64 x i32]* @data, i64 0, i64 %2
  store i32 %6, i32* %7, align 4, !tbaa !5
  %8 = add nuw nsw i64 %2, 1
  %9 = icmp eq i64 %8, 64
  br i1 %9, label %10, label %1, !llvm.loop !13

10:                                               ; preds = %1
  call void @jpeg_fdct_islow()
  ret void
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
!13 = distinct !{!13, !10, !11}
