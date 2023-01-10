; ModuleID = 'fdct.c'
source_filename = "fdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@block = dso_local global [64 x i16] [i16 99, i16 104, i16 109, i16 113, i16 115, i16 115, i16 55, i16 55, i16 104, i16 111, i16 113, i16 116, i16 119, i16 56, i16 56, i16 56, i16 110, i16 115, i16 120, i16 119, i16 118, i16 56, i16 56, i16 56, i16 119, i16 121, i16 122, i16 120, i16 120, i16 59, i16 59, i16 59, i16 119, i16 120, i16 121, i16 122, i16 122, i16 55, i16 55, i16 55, i16 121, i16 121, i16 121, i16 121, i16 60, i16 57, i16 57, i16 57, i16 122, i16 122, i16 61, i16 63, i16 62, i16 57, i16 57, i16 57, i16 62, i16 62, i16 61, i16 61, i16 63, i16 58, i16 58, i16 58], align 16
@out = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @fdct(i16* nocapture %0, i32 %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  br label %18

4:                                                ; preds = %18
  %5 = mul nsw i32 %1, 7
  %6 = sext i32 %5 to i64
  %7 = sext i32 %1 to i64
  %8 = mul nsw i32 %1, 6
  %9 = sext i32 %8 to i64
  %10 = shl nsw i32 %1, 1
  %11 = sext i32 %10 to i64
  %12 = mul nsw i32 %1, 5
  %13 = sext i32 %12 to i64
  %14 = mul nsw i32 %1, 3
  %15 = sext i32 %14 to i64
  %16 = shl nsw i32 %1, 2
  %17 = sext i32 %16 to i64
  br label %107

18:                                               ; preds = %2, %18
  %19 = phi i16* [ %0, %2 ], [ %104, %18 ]
  %20 = phi i32 [ 0, %2 ], [ %105, %18 ]
  %21 = load i16, i16* %19, align 2, !tbaa !5
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds i16, i16* %19, i64 7
  %24 = load i16, i16* %23, align 2, !tbaa !5
  %25 = sext i16 %24 to i32
  %26 = add nsw i32 %25, %22
  %27 = sub nsw i32 %22, %25
  %28 = getelementptr inbounds i16, i16* %19, i64 1
  %29 = load i16, i16* %28, align 2, !tbaa !5
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds i16, i16* %19, i64 6
  %32 = load i16, i16* %31, align 2, !tbaa !5
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, %30
  %35 = sub nsw i32 %30, %33
  %36 = getelementptr inbounds i16, i16* %19, i64 2
  %37 = load i16, i16* %36, align 2, !tbaa !5
  %38 = sext i16 %37 to i32
  %39 = getelementptr inbounds i16, i16* %19, i64 5
  %40 = load i16, i16* %39, align 2, !tbaa !5
  %41 = sext i16 %40 to i32
  %42 = add nsw i32 %41, %38
  %43 = sub nsw i32 %38, %41
  %44 = getelementptr inbounds i16, i16* %19, i64 3
  %45 = load i16, i16* %44, align 2, !tbaa !5
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds i16, i16* %19, i64 4
  %48 = load i16, i16* %47, align 2, !tbaa !5
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, %46
  %51 = sub nsw i32 %46, %49
  %52 = add nsw i32 %50, %26
  %53 = sub nsw i32 %26, %50
  %54 = add nsw i32 %42, %34
  %55 = sub nsw i32 %34, %42
  %56 = add nsw i32 %52, %54
  %57 = trunc i32 %56 to i16
  %58 = shl i16 %57, 2
  store i16 %58, i16* %19, align 2, !tbaa !5
  %59 = sub nsw i32 %52, %54
  %60 = trunc i32 %59 to i16
  %61 = shl i16 %60, 2
  store i16 %61, i16* %47, align 2, !tbaa !5
  %62 = add nsw i32 %53, %55
  %63 = mul nsw i32 %62, 4433
  %64 = mul nsw i32 %53, 6270
  %65 = add nsw i32 %63, %64
  %66 = lshr i32 %65, 11
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %36, align 2, !tbaa !5
  %68 = mul nsw i32 %55, -15137
  %69 = add nsw i32 %63, %68
  %70 = lshr i32 %69, 11
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %31, align 2, !tbaa !5
  %72 = add nsw i32 %51, %27
  %73 = add nsw i32 %43, %35
  %74 = add nsw i32 %51, %35
  %75 = add nsw i32 %43, %27
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 %76, 9633
  %78 = mul nsw i32 %51, 2446
  %79 = mul nsw i32 %43, 16819
  %80 = mul nsw i32 %35, 25172
  %81 = mul nsw i32 %27, 12299
  %82 = mul nsw i32 %72, -7373
  %83 = mul nsw i32 %73, -20995
  %84 = mul nsw i32 %74, -16069
  %85 = mul nsw i32 %75, -3196
  %86 = add nsw i32 %77, %84
  %87 = add nsw i32 %77, %85
  %88 = add nsw i32 %82, %78
  %89 = add nsw i32 %88, %86
  %90 = lshr i32 %89, 11
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %23, align 2, !tbaa !5
  %92 = add nsw i32 %83, %79
  %93 = add nsw i32 %92, %87
  %94 = lshr i32 %93, 11
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %39, align 2, !tbaa !5
  %96 = add nsw i32 %83, %80
  %97 = add nsw i32 %96, %86
  %98 = lshr i32 %97, 11
  %99 = trunc i32 %98 to i16
  store i16 %99, i16* %44, align 2, !tbaa !5
  %100 = add nsw i32 %82, %81
  %101 = add nsw i32 %100, %87
  %102 = lshr i32 %101, 11
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %28, align 2, !tbaa !5
  %104 = getelementptr inbounds i16, i16* %19, i64 %3
  %105 = add nuw nsw i32 %20, 1
  %106 = icmp eq i32 %105, 8
  br i1 %106, label %4, label %18, !llvm.loop !9

107:                                              ; preds = %4, %107
  %108 = phi i16* [ %0, %4 ], [ %193, %107 ]
  %109 = phi i32 [ 0, %4 ], [ %194, %107 ]
  %110 = load i16, i16* %108, align 2, !tbaa !5
  %111 = sext i16 %110 to i32
  %112 = getelementptr inbounds i16, i16* %108, i64 %6
  %113 = load i16, i16* %112, align 2, !tbaa !5
  %114 = sext i16 %113 to i32
  %115 = add nsw i32 %114, %111
  %116 = sub nsw i32 %111, %114
  %117 = getelementptr inbounds i16, i16* %108, i64 %7
  %118 = load i16, i16* %117, align 2, !tbaa !5
  %119 = sext i16 %118 to i32
  %120 = getelementptr inbounds i16, i16* %108, i64 %9
  %121 = load i16, i16* %120, align 2, !tbaa !5
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %122, %119
  %124 = sub nsw i32 %119, %122
  %125 = getelementptr inbounds i16, i16* %108, i64 %11
  %126 = load i16, i16* %125, align 2, !tbaa !5
  %127 = sext i16 %126 to i32
  %128 = getelementptr inbounds i16, i16* %108, i64 %13
  %129 = load i16, i16* %128, align 2, !tbaa !5
  %130 = sext i16 %129 to i32
  %131 = add nsw i32 %130, %127
  %132 = sub nsw i32 %127, %130
  %133 = getelementptr inbounds i16, i16* %108, i64 %15
  %134 = load i16, i16* %133, align 2, !tbaa !5
  %135 = sext i16 %134 to i32
  %136 = getelementptr inbounds i16, i16* %108, i64 %17
  %137 = load i16, i16* %136, align 2, !tbaa !5
  %138 = sext i16 %137 to i32
  %139 = add nsw i32 %138, %135
  %140 = sub nsw i32 %135, %138
  %141 = add nsw i32 %139, %115
  %142 = sub nsw i32 %115, %139
  %143 = add nsw i32 %131, %123
  %144 = sub nsw i32 %123, %131
  %145 = add nsw i32 %141, %143
  %146 = ashr i32 %145, 5
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %108, align 2, !tbaa !5
  %148 = sub nsw i32 %141, %143
  %149 = ashr i32 %148, 5
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %136, align 2, !tbaa !5
  %151 = add nsw i32 %142, %144
  %152 = mul nsw i32 %151, 4433
  %153 = mul nsw i32 %142, 6270
  %154 = add nsw i32 %152, %153
  %155 = ashr i32 %154, 18
  %156 = trunc i32 %155 to i16
  store i16 %156, i16* %125, align 2, !tbaa !5
  %157 = mul nsw i32 %144, -15137
  %158 = add nsw i32 %152, %157
  %159 = ashr i32 %158, 18
  %160 = trunc i32 %159 to i16
  store i16 %160, i16* %120, align 2, !tbaa !5
  %161 = add nsw i32 %140, %116
  %162 = add nsw i32 %132, %124
  %163 = add nsw i32 %140, %124
  %164 = add nsw i32 %132, %116
  %165 = add nsw i32 %163, %164
  %166 = mul nsw i32 %165, 9633
  %167 = mul nsw i32 %140, 2446
  %168 = mul nsw i32 %132, 16819
  %169 = mul nsw i32 %124, 25172
  %170 = mul nsw i32 %116, 12299
  %171 = mul nsw i32 %161, -7373
  %172 = mul nsw i32 %162, -20995
  %173 = mul nsw i32 %163, -16069
  %174 = mul nsw i32 %164, -3196
  %175 = add nsw i32 %166, %173
  %176 = add nsw i32 %166, %174
  %177 = add nsw i32 %171, %167
  %178 = add nsw i32 %177, %175
  %179 = ashr i32 %178, 18
  %180 = trunc i32 %179 to i16
  store i16 %180, i16* %112, align 2, !tbaa !5
  %181 = add nsw i32 %172, %168
  %182 = add nsw i32 %181, %176
  %183 = ashr i32 %182, 18
  %184 = trunc i32 %183 to i16
  store i16 %184, i16* %128, align 2, !tbaa !5
  %185 = add nsw i32 %172, %169
  %186 = add nsw i32 %185, %175
  %187 = ashr i32 %186, 18
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %133, align 2, !tbaa !5
  %189 = add nsw i32 %171, %170
  %190 = add nsw i32 %189, %176
  %191 = ashr i32 %190, 18
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %117, align 2, !tbaa !5
  %193 = getelementptr inbounds i16, i16* %108, i64 1
  %194 = add nuw nsw i32 %109, 1
  %195 = icmp eq i32 %194, 8
  br i1 %195, label %196, label %107, !llvm.loop !12

196:                                              ; preds = %107
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  call void @fdct(i16* getelementptr inbounds ([64 x i16], [64 x i16]* @block, i64 0, i64 0), i32 8)
  %1 = load i16, i16* getelementptr inbounds ([64 x i16], [64 x i16]* @block, i64 0, i64 0), align 16, !tbaa !5
  %2 = sext i16 %1 to i32
  ret i32 %2
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
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
