; ModuleID = 'edn.c'
source_filename = "edn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.a = private unnamed_addr constant [200 x i16] [i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024], align 16
@__const.main.b = private unnamed_addr constant [200 x i16] [i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096], align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @vec_mpy1(i16* nocapture %0, i16* nocapture readonly %1, i16 signext %2) local_unnamed_addr #0 {
  %4 = sext i16 %2 to i32
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %16, %5 ]
  %7 = getelementptr inbounds i16, i16* %1, i64 %6
  %8 = load i16, i16* %7, align 2, !tbaa !5
  %9 = sext i16 %8 to i32
  %10 = mul nsw i32 %9, %4
  %11 = lshr i32 %10, 15
  %12 = getelementptr inbounds i16, i16* %0, i64 %6
  %13 = load i16, i16* %12, align 2, !tbaa !5
  %14 = trunc i32 %11 to i16
  %15 = add i16 %13, %14
  store i16 %15, i16* %12, align 2, !tbaa !5
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 150
  br i1 %17, label %18, label %5, !llvm.loop !9

18:                                               ; preds = %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i64 @mac(i16* nocapture readonly %0, i16* nocapture readonly %1, i64 %2, i64* nocapture %3) local_unnamed_addr #0 {
  %5 = load i64, i64* %3, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %5, %4 ], [ %18, %6 ]
  %8 = phi i64 [ 0, %4 ], [ %22, %6 ]
  %9 = phi i64 [ %2, %4 ], [ %21, %6 ]
  %10 = getelementptr inbounds i16, i16* %1, i64 %8
  %11 = load i16, i16* %10, align 2, !tbaa !5
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds i16, i16* %0, i64 %8
  %14 = load i16, i16* %13, align 2, !tbaa !5
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, %12
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %7, %17
  %19 = mul nsw i32 %12, %12
  %20 = zext i32 %19 to i64
  %21 = add nsw i64 %9, %20
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, 150
  br i1 %23, label %24, label %6, !llvm.loop !14

24:                                               ; preds = %6
  store i64 %18, i64* %3, align 8, !tbaa !12
  ret i64 %21
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @fir(i16* nocapture readonly %0, i16* nocapture readonly %1, i64* nocapture %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %20
  %5 = phi i64 [ 0, %3 ], [ %23, %20 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %17, %6 ]
  %8 = phi i64 [ 0, %4 ], [ %18, %6 ]
  %9 = add nuw nsw i64 %8, %5
  %10 = getelementptr inbounds i16, i16* %0, i64 %9
  %11 = load i16, i16* %10, align 2, !tbaa !5
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds i16, i16* %1, i64 %8
  %14 = load i16, i16* %13, align 2, !tbaa !5
  %15 = sext i16 %14 to i64
  %16 = mul nsw i64 %15, %12
  %17 = add nsw i64 %16, %7
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, 50
  br i1 %19, label %20, label %6, !llvm.loop !15

20:                                               ; preds = %6
  %21 = ashr i64 %17, 15
  %22 = getelementptr inbounds i64, i64* %2, i64 %5
  store i64 %21, i64* %22, align 8, !tbaa !12
  %23 = add nuw nsw i64 %5, 1
  %24 = icmp eq i64 %23, 50
  br i1 %24, label %25, label %4, !llvm.loop !16

25:                                               ; preds = %20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @fir_no_red_ld(i16* nocapture readonly %0, i16* nocapture readonly %1, i64* nocapture %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %44
  %5 = phi i64 [ 0, %3 ], [ %50, %44 ]
  %6 = getelementptr inbounds i16, i16* %0, i64 %5
  %7 = load i16, i16* %6, align 2, !tbaa !5
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %42, %8 ]
  %10 = phi i64 [ 0, %4 ], [ %37, %8 ]
  %11 = phi i16 [ %7, %4 ], [ %30, %8 ]
  %12 = phi i64 [ 0, %4 ], [ %41, %8 ]
  %13 = add nuw nsw i64 %9, %5
  %14 = or i64 %13, 1
  %15 = getelementptr inbounds i16, i16* %0, i64 %14
  %16 = load i16, i16* %15, align 2, !tbaa !5
  %17 = getelementptr inbounds i16, i16* %1, i64 %9
  %18 = load i16, i16* %17, align 2, !tbaa !5
  %19 = sext i16 %11 to i32
  %20 = sext i16 %18 to i32
  %21 = mul nsw i32 %20, %19
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %10, %22
  %24 = sext i16 %16 to i32
  %25 = mul nsw i32 %20, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %12, %26
  %28 = add nuw nsw i64 %13, 2
  %29 = getelementptr inbounds i16, i16* %0, i64 %28
  %30 = load i16, i16* %29, align 2, !tbaa !5
  %31 = or i64 %9, 1
  %32 = getelementptr inbounds i16, i16* %1, i64 %31
  %33 = load i16, i16* %32, align 2, !tbaa !5
  %34 = sext i16 %33 to i32
  %35 = mul nsw i32 %34, %24
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %23, %36
  %38 = sext i16 %30 to i32
  %39 = mul nsw i32 %34, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %27, %40
  %42 = add nuw nsw i64 %9, 2
  %43 = icmp ult i64 %9, 30
  br i1 %43, label %8, label %44, !llvm.loop !17

44:                                               ; preds = %8
  %45 = ashr i64 %37, 15
  %46 = getelementptr inbounds i64, i64* %2, i64 %5
  store i64 %45, i64* %46, align 8, !tbaa !12
  %47 = ashr i64 %41, 15
  %48 = or i64 %5, 1
  %49 = getelementptr inbounds i64, i64* %2, i64 %48
  store i64 %47, i64* %49, align 8, !tbaa !12
  %50 = add nuw nsw i64 %5, 2
  %51 = icmp ult i64 %5, 98
  br i1 %51, label %4, label %52, !llvm.loop !18

52:                                               ; preds = %44
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i64 @latsynth(i16* nocapture %0, i16* nocapture readonly %1, i64 %2, i64 %3) local_unnamed_addr #0 {
  %5 = add nsw i64 %2, -1
  %6 = getelementptr inbounds i16, i16* %0, i64 %5
  %7 = load i16, i16* %6, align 2, !tbaa !5
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds i16, i16* %1, i64 %5
  %10 = load i16, i16* %9, align 2, !tbaa !5
  %11 = sext i16 %10 to i64
  %12 = mul nsw i64 %11, %8
  %13 = sub nsw i64 %3, %12
  %14 = icmp sgt i64 %2, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %4
  %16 = add nsw i64 %2, -2
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %35, %17 ], [ %16, %15 ]
  %19 = phi i64 [ %27, %17 ], [ %13, %15 ]
  %20 = getelementptr inbounds i16, i16* %0, i64 %18
  %21 = load i16, i16* %20, align 2, !tbaa !5
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds i16, i16* %1, i64 %18
  %24 = load i16, i16* %23, align 2, !tbaa !5
  %25 = sext i16 %24 to i64
  %26 = mul nsw i64 %25, %22
  %27 = sub nsw i64 %19, %26
  %28 = ashr i64 %27, 16
  %29 = mul nsw i64 %28, %25
  %30 = lshr i64 %29, 16
  %31 = trunc i64 %30 to i16
  %32 = add i16 %21, %31
  %33 = add nsw i64 %18, 1
  %34 = getelementptr inbounds i16, i16* %0, i64 %33
  store i16 %32, i16* %34, align 2, !tbaa !5
  %35 = add nsw i64 %18, -1
  %36 = icmp sgt i64 %18, 0
  br i1 %36, label %17, label %37, !llvm.loop !19

37:                                               ; preds = %17, %4
  %38 = phi i64 [ %13, %4 ], [ %27, %17 ]
  %39 = lshr i64 %38, 16
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* %0, align 2, !tbaa !5
  ret i64 %38
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @iir1(i16* nocapture readonly %0, i16* nocapture readonly %1, i64* nocapture %2, i64* nocapture %3) local_unnamed_addr #0 {
  %5 = load i16, i16* %1, align 2, !tbaa !5
  %6 = sext i16 %5 to i64
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %38, %7 ]
  %9 = phi i16* [ %0, %4 ], [ %36, %7 ]
  %10 = phi i64 [ %6, %4 ], [ %35, %7 ]
  %11 = phi i64* [ %3, %4 ], [ %37, %7 ]
  %12 = getelementptr inbounds i16, i16* %9, i64 2
  %13 = load i16, i16* %12, align 2, !tbaa !5
  %14 = sext i16 %13 to i64
  %15 = load i64, i64* %11, align 8, !tbaa !12
  %16 = mul nsw i64 %15, %14
  %17 = getelementptr inbounds i16, i16* %9, i64 3
  %18 = load i16, i16* %17, align 2, !tbaa !5
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds i64, i64* %11, i64 1
  %21 = load i64, i64* %20, align 8, !tbaa !12
  %22 = mul nsw i64 %21, %19
  %23 = add nsw i64 %22, %16
  %24 = ashr i64 %23, 15
  %25 = add nsw i64 %24, %10
  %26 = load i16, i16* %9, align 2, !tbaa !5
  %27 = sext i16 %26 to i64
  %28 = mul nsw i64 %15, %27
  %29 = getelementptr inbounds i16, i16* %9, i64 1
  %30 = load i16, i16* %29, align 2, !tbaa !5
  %31 = sext i16 %30 to i64
  %32 = mul nsw i64 %21, %31
  %33 = add nsw i64 %32, %28
  %34 = ashr i64 %33, 15
  %35 = add nsw i64 %34, %25
  store i64 %15, i64* %20, align 8, !tbaa !12
  store i64 %25, i64* %11, align 8, !tbaa !12
  %36 = getelementptr inbounds i16, i16* %9, i64 4
  %37 = getelementptr inbounds i64, i64* %11, i64 2
  %38 = add nuw nsw i64 %8, 1
  %39 = icmp eq i64 %38, 50
  br i1 %39, label %40, label %7, !llvm.loop !20

40:                                               ; preds = %7
  store i64 %35, i64* %2, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local i64 @codebook(i64 %0, i64 %1, i64 %2, i64 %3, i64 returned %4, i16* nocapture readnone %5, i16 signext %6, i16 signext %7) local_unnamed_addr #2 {
  ret i64 %4
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @jpegdct(i16* nocapture %0, i16* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = alloca [12 x i64], align 16
  %4 = bitcast [12 x i64]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 96, i8* nonnull %4) #5
  %5 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 0
  %6 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 3
  %7 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 8
  %8 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 9
  %9 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 1
  %10 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 2
  %11 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 10
  %12 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 11
  %13 = getelementptr inbounds i16, i16* %1, i64 10
  %14 = getelementptr inbounds i16, i16* %1, i64 9
  %15 = getelementptr inbounds i16, i16* %1, i64 11
  %16 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 4
  %17 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 7
  %18 = getelementptr inbounds i16, i16* %1, i64 2
  %19 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 5
  %20 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 6
  %21 = getelementptr inbounds i16, i16* %1, i64 8
  %22 = getelementptr inbounds i16, i16* %1, i64 1
  %23 = getelementptr inbounds i16, i16* %1, i64 3
  %24 = getelementptr inbounds i16, i16* %1, i64 4
  %25 = getelementptr inbounds i16, i16* %1, i64 6
  %26 = getelementptr inbounds i16, i16* %1, i64 5
  %27 = getelementptr inbounds i16, i16* %1, i64 7
  br label %28

28:                                               ; preds = %2, %204
  %29 = phi i64 [ 13, %2 ], [ %207, %204 ]
  %30 = phi i64 [ 0, %2 ], [ %206, %204 ]
  %31 = phi i64 [ 8, %2 ], [ %208, %204 ]
  %32 = phi i32 [ 1, %2 ], [ %210, %204 ]
  %33 = phi i16* [ %0, %2 ], [ %209, %204 ]
  %34 = shl nuw nsw i32 %32, 2
  %35 = zext i32 %34 to i64
  %36 = shl nuw nsw i32 %32, 1
  %37 = zext i32 %36 to i64
  %38 = mul nuw nsw i32 %32, 6
  %39 = zext i32 %38 to i64
  %40 = mul nuw nsw i32 %32, 7
  %41 = zext i32 %40 to i64
  %42 = mul nuw nsw i32 %32, 5
  %43 = zext i32 %42 to i64
  %44 = mul nuw nsw i32 %32, 3
  %45 = zext i32 %44 to i64
  %46 = zext i32 %32 to i64
  %47 = zext i32 %32 to i64
  %48 = zext i32 %32 to i64
  %49 = trunc i64 %29 to i32
  %50 = trunc i64 %29 to i32
  %51 = trunc i64 %29 to i32
  %52 = trunc i64 %29 to i32
  br label %53

53:                                               ; preds = %28, %73
  %54 = phi i16 [ 0, %28 ], [ %201, %73 ]
  %55 = phi i16* [ %33, %28 ], [ %202, %73 ]
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %71, %56 ]
  %58 = mul nuw nsw i64 %57, %47
  %59 = getelementptr inbounds i16, i16* %55, i64 %58
  %60 = load i16, i16* %59, align 2, !tbaa !5
  %61 = sext i16 %60 to i64
  %62 = sub nuw nsw i64 7, %57
  %63 = mul nsw i64 %62, %48
  %64 = getelementptr inbounds i16, i16* %55, i64 %63
  %65 = load i16, i16* %64, align 2, !tbaa !5
  %66 = sext i16 %65 to i64
  %67 = add nsw i64 %66, %61
  %68 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 %57
  store i64 %67, i64* %68, align 8, !tbaa !12
  %69 = sub nsw i64 %61, %66
  %70 = getelementptr inbounds [12 x i64], [12 x i64]* %3, i64 0, i64 %62
  store i64 %69, i64* %70, align 8, !tbaa !12
  %71 = add nuw nsw i64 %57, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %56, !llvm.loop !21

73:                                               ; preds = %56
  %74 = load i64, i64* %5, align 16, !tbaa !12
  %75 = load i64, i64* %6, align 8, !tbaa !12
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %7, align 16, !tbaa !12
  %77 = sub nsw i64 %74, %75
  store i64 %77, i64* %8, align 8, !tbaa !12
  %78 = load i64, i64* %9, align 8, !tbaa !12
  %79 = load i64, i64* %10, align 16, !tbaa !12
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %11, align 16, !tbaa !12
  %81 = sub nsw i64 %78, %79
  store i64 %81, i64* %12, align 8, !tbaa !12
  %82 = add nsw i64 %80, %76
  %83 = ashr i64 %82, %30
  %84 = trunc i64 %83 to i16
  store i16 %84, i16* %55, align 2, !tbaa !5
  %85 = sub nsw i64 %76, %80
  %86 = ashr i64 %85, %30
  %87 = trunc i64 %86 to i16
  %88 = getelementptr inbounds i16, i16* %55, i64 %35
  store i16 %87, i16* %88, align 2, !tbaa !5
  %89 = add nsw i64 %81, %77
  %90 = trunc i64 %89 to i32
  %91 = shl i32 %90, 16
  %92 = ashr exact i32 %91, 16
  %93 = load i16, i16* %13, align 2, !tbaa !5
  %94 = sext i16 %93 to i32
  %95 = mul nsw i32 %92, %94
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %7, align 16, !tbaa !12
  %97 = load i16, i16* %14, align 2, !tbaa !5
  %98 = sext i16 %97 to i64
  %99 = mul nsw i64 %77, %98
  %100 = ashr i64 %99, %29
  %101 = add i64 %100, %96
  %102 = trunc i64 %101 to i16
  %103 = getelementptr inbounds i16, i16* %55, i64 %37
  store i16 %102, i16* %103, align 2, !tbaa !5
  %104 = load i16, i16* %15, align 2, !tbaa !5
  %105 = sext i16 %104 to i64
  %106 = mul nsw i64 %81, %105
  %107 = ashr i64 %106, %29
  %108 = add i64 %107, %96
  %109 = trunc i64 %108 to i16
  %110 = getelementptr inbounds i16, i16* %55, i64 %39
  store i16 %109, i16* %110, align 2, !tbaa !5
  %111 = load i64, i64* %16, align 16, !tbaa !12
  %112 = load i64, i64* %17, align 8, !tbaa !12
  %113 = add nsw i64 %112, %111
  %114 = trunc i64 %113 to i32
  %115 = shl i32 %114, 16
  %116 = ashr exact i32 %115, 16
  %117 = load i16, i16* %18, align 2, !tbaa !5
  %118 = sext i16 %117 to i32
  %119 = mul nsw i32 %116, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %5, align 16, !tbaa !12
  %121 = load i64, i64* %19, align 8, !tbaa !12
  %122 = load i64, i64* %20, align 16, !tbaa !12
  %123 = add nsw i64 %122, %121
  %124 = trunc i64 %123 to i32
  %125 = shl i32 %124, 16
  %126 = ashr exact i32 %125, 16
  %127 = load i16, i16* %1, align 2, !tbaa !5
  %128 = sext i16 %127 to i32
  %129 = mul nsw i32 %126, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %9, align 8, !tbaa !12
  %131 = add nsw i64 %122, %111
  store i64 %131, i64* %10, align 16, !tbaa !12
  %132 = add nsw i64 %121, %112
  store i64 %132, i64* %6, align 8, !tbaa !12
  %133 = add nsw i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = shl i32 %134, 16
  %136 = ashr exact i32 %135, 16
  %137 = load i16, i16* %21, align 2, !tbaa !5
  %138 = sext i16 %137 to i32
  %139 = mul nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %7, align 16, !tbaa !12
  %141 = trunc i64 %131 to i32
  %142 = shl i32 %141, 16
  %143 = ashr exact i32 %142, 16
  %144 = load i16, i16* %22, align 2, !tbaa !5
  %145 = sext i16 %144 to i32
  %146 = mul nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %140
  store i64 %148, i64* %10, align 16, !tbaa !12
  %149 = trunc i64 %132 to i32
  %150 = shl i32 %149, 16
  %151 = ashr exact i32 %150, 16
  %152 = load i16, i16* %23, align 2, !tbaa !5
  %153 = sext i16 %152 to i32
  %154 = mul nsw i32 %151, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %140
  store i64 %156, i64* %6, align 8, !tbaa !12
  %157 = load i16, i16* %24, align 2, !tbaa !5
  %158 = zext i16 %157 to i64
  %159 = mul i64 %111, %158
  %160 = add nsw i64 %148, %120
  %161 = add i64 %160, %159
  %162 = trunc i64 %161 to i32
  %163 = shl i32 %162, 16
  %164 = ashr exact i32 %163, 16
  %165 = ashr i32 %164, %49
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds i16, i16* %55, i64 %41
  store i16 %166, i16* %167, align 2, !tbaa !5
  %168 = load i16, i16* %25, align 2, !tbaa !5
  %169 = zext i16 %168 to i64
  %170 = mul i64 %121, %169
  %171 = add nsw i64 %156, %130
  %172 = add i64 %171, %170
  %173 = trunc i64 %172 to i32
  %174 = shl i32 %173, 16
  %175 = ashr exact i32 %174, 16
  %176 = ashr i32 %175, %50
  %177 = trunc i32 %176 to i16
  %178 = getelementptr inbounds i16, i16* %55, i64 %43
  store i16 %177, i16* %178, align 2, !tbaa !5
  %179 = load i16, i16* %26, align 2, !tbaa !5
  %180 = zext i16 %179 to i64
  %181 = mul i64 %122, %180
  %182 = add nsw i64 %148, %130
  %183 = add i64 %182, %181
  %184 = trunc i64 %183 to i32
  %185 = shl i32 %184, 16
  %186 = ashr exact i32 %185, 16
  %187 = ashr i32 %186, %51
  %188 = trunc i32 %187 to i16
  %189 = getelementptr inbounds i16, i16* %55, i64 %45
  store i16 %188, i16* %189, align 2, !tbaa !5
  %190 = load i16, i16* %27, align 2, !tbaa !5
  %191 = zext i16 %190 to i64
  %192 = mul i64 %112, %191
  %193 = add nsw i64 %156, %120
  %194 = add i64 %193, %192
  %195 = trunc i64 %194 to i32
  %196 = shl i32 %195, 16
  %197 = ashr exact i32 %196, 16
  %198 = ashr i32 %197, %52
  %199 = trunc i32 %198 to i16
  %200 = getelementptr inbounds i16, i16* %55, i64 %46
  store i16 %199, i16* %200, align 2, !tbaa !5
  %201 = add nuw nsw i16 %54, 1
  %202 = getelementptr inbounds i16, i16* %55, i64 %31
  %203 = icmp eq i16 %201, 8
  br i1 %203, label %204, label %53, !llvm.loop !22

204:                                              ; preds = %73
  %205 = add nuw nsw i32 %32, 7
  %206 = add nuw nsw i64 %30, 3
  %207 = add nuw nsw i64 %29, 3
  %208 = add nsw i64 %31, -7
  %209 = getelementptr inbounds i16, i16* %202, i64 -64
  %210 = and i32 %205, 65535
  %211 = icmp ult i32 %210, 9
  br i1 %211, label %28, label %212, !llvm.loop !23

212:                                              ; preds = %204
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %4) #5
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca [200 x i16], align 16
  %2 = alloca [200 x i16], align 16
  %3 = alloca [200 x i64], align 16
  %4 = bitcast [200 x i16]* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %4) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %4, i8* noundef nonnull align 16 dereferenceable(400) bitcast ([200 x i16]* @__const.main.a to i8*), i64 400, i1 false)
  %5 = bitcast [200 x i16]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 400, i8* nonnull %5) #5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(400) %5, i8* noundef nonnull align 16 dereferenceable(400) bitcast ([200 x i16]* @__const.main.b to i8*), i64 400, i1 false)
  %6 = bitcast [200 x i64]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1600, i8* nonnull %6) #5
  %7 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 0
  br label %8

8:                                                ; preds = %8, %0
  %9 = phi i64 [ 0, %0 ], [ %19, %8 ]
  %10 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 %9
  %11 = load i16, i16* %10, align 2, !tbaa !5
  %12 = sext i16 %11 to i32
  %13 = mul nsw i32 %12, 3
  %14 = lshr i32 %13, 15
  %15 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %9
  %16 = load i16, i16* %15, align 2, !tbaa !5
  %17 = trunc i32 %14 to i16
  %18 = add i16 %16, %17
  store i16 %18, i16* %15, align 2, !tbaa !5
  %19 = add nuw nsw i64 %9, 1
  %20 = icmp eq i64 %19, 150
  br i1 %20, label %21, label %8, !llvm.loop !9

21:                                               ; preds = %8
  %22 = getelementptr inbounds [200 x i64], [200 x i64]* %3, i64 0, i64 0
  %23 = load i64, i64* %22, align 16, !tbaa !12
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi i64 [ %23, %21 ], [ %34, %24 ]
  %26 = phi i64 [ 0, %21 ], [ %35, %24 ]
  %27 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 %26
  %28 = load i16, i16* %27, align 2, !tbaa !5
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %26
  %31 = load i16, i16* %30, align 2, !tbaa !5
  %32 = sext i16 %31 to i64
  %33 = mul nsw i64 %32, %29
  %34 = add nsw i64 %33, %25
  %35 = add nuw nsw i64 %26, 1
  %36 = icmp eq i64 %35, 150
  br i1 %36, label %37, label %24, !llvm.loop !14

37:                                               ; preds = %24
  store i64 %34, i64* %22, align 16, !tbaa !12
  br label %38

38:                                               ; preds = %54, %37
  %39 = phi i64 [ 0, %37 ], [ %57, %54 ]
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i64 [ 0, %38 ], [ %51, %40 ]
  %42 = phi i64 [ 0, %38 ], [ %52, %40 ]
  %43 = add nuw nsw i64 %42, %39
  %44 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %43
  %45 = load i16, i16* %44, align 2, !tbaa !5
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 %42
  %48 = load i16, i16* %47, align 2, !tbaa !5
  %49 = sext i16 %48 to i64
  %50 = mul nsw i64 %49, %46
  %51 = add nsw i64 %50, %41
  %52 = add nuw nsw i64 %42, 1
  %53 = icmp eq i64 %52, 50
  br i1 %53, label %54, label %40, !llvm.loop !15

54:                                               ; preds = %40
  %55 = ashr i64 %51, 15
  %56 = getelementptr inbounds [200 x i64], [200 x i64]* %3, i64 0, i64 %39
  store i64 %55, i64* %56, align 8, !tbaa !12
  %57 = add nuw nsw i64 %39, 1
  %58 = icmp eq i64 %57, 50
  br i1 %58, label %59, label %38, !llvm.loop !16

59:                                               ; preds = %54, %99
  %60 = phi i64 [ %105, %99 ], [ 0, %54 ]
  %61 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %60
  %62 = load i16, i16* %61, align 4, !tbaa !5
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i64 [ 0, %59 ], [ %97, %63 ]
  %65 = phi i64 [ 0, %59 ], [ %92, %63 ]
  %66 = phi i16 [ %62, %59 ], [ %85, %63 ]
  %67 = phi i64 [ 0, %59 ], [ %96, %63 ]
  %68 = add nuw nsw i64 %64, %60
  %69 = or i64 %68, 1
  %70 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %69
  %71 = load i16, i16* %70, align 2, !tbaa !5
  %72 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 %64
  %73 = load i16, i16* %72, align 4, !tbaa !5
  %74 = sext i16 %66 to i32
  %75 = sext i16 %73 to i32
  %76 = mul nsw i32 %75, %74
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %65, %77
  %79 = sext i16 %71 to i32
  %80 = mul nsw i32 %75, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %67, %81
  %83 = add nuw nsw i64 %68, 2
  %84 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %83
  %85 = load i16, i16* %84, align 4, !tbaa !5
  %86 = or i64 %64, 1
  %87 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 %86
  %88 = load i16, i16* %87, align 2, !tbaa !5
  %89 = sext i16 %88 to i32
  %90 = mul nsw i32 %89, %79
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %78, %91
  %93 = sext i16 %85 to i32
  %94 = mul nsw i32 %89, %93
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %82, %95
  %97 = add nuw nsw i64 %64, 2
  %98 = icmp ult i64 %64, 30
  br i1 %98, label %63, label %99, !llvm.loop !17

99:                                               ; preds = %63
  %100 = ashr i64 %92, 15
  %101 = getelementptr inbounds [200 x i64], [200 x i64]* %3, i64 0, i64 %60
  store i64 %100, i64* %101, align 16, !tbaa !12
  %102 = ashr i64 %96, 15
  %103 = or i64 %60, 1
  %104 = getelementptr inbounds [200 x i64], [200 x i64]* %3, i64 0, i64 %103
  store i64 %102, i64* %104, align 8, !tbaa !12
  %105 = add nuw nsw i64 %60, 2
  %106 = icmp ult i64 %60, 98
  br i1 %106, label %59, label %107, !llvm.loop !18

107:                                              ; preds = %99
  %108 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 99
  %109 = load i16, i16* %108, align 2, !tbaa !5
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 99
  %112 = load i16, i16* %111, align 2, !tbaa !5
  %113 = sext i16 %112 to i64
  %114 = mul nsw i64 %113, %110
  %115 = sub nsw i64 43690, %114
  br label %116

116:                                              ; preds = %116, %107
  %117 = phi i64 [ %134, %116 ], [ 98, %107 ]
  %118 = phi i64 [ %126, %116 ], [ %115, %107 ]
  %119 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %117
  %120 = load i16, i16* %119, align 2, !tbaa !5
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 %117
  %123 = load i16, i16* %122, align 2, !tbaa !5
  %124 = sext i16 %123 to i64
  %125 = mul nsw i64 %124, %121
  %126 = sub nsw i64 %118, %125
  %127 = ashr i64 %126, 16
  %128 = mul nsw i64 %127, %124
  %129 = lshr i64 %128, 16
  %130 = trunc i64 %129 to i16
  %131 = add i16 %120, %130
  %132 = add nuw nsw i64 %117, 1
  %133 = getelementptr inbounds [200 x i16], [200 x i16]* %1, i64 0, i64 %132
  store i16 %131, i16* %133, align 2, !tbaa !5
  %134 = add nsw i64 %117, -1
  %135 = icmp eq i64 %117, 0
  br i1 %135, label %136, label %116, !llvm.loop !19

136:                                              ; preds = %116
  %137 = getelementptr inbounds [200 x i16], [200 x i16]* %2, i64 0, i64 0
  %138 = lshr i64 %126, 16
  %139 = trunc i64 %138 to i16
  store i16 %139, i16* %7, align 16, !tbaa !5
  %140 = load i16, i16* %137, align 16, !tbaa !5
  %141 = sext i16 %140 to i64
  br label %142

142:                                              ; preds = %142, %136
  %143 = phi i64 [ 0, %136 ], [ %173, %142 ]
  %144 = phi i16* [ %7, %136 ], [ %171, %142 ]
  %145 = phi i64 [ %141, %136 ], [ %170, %142 ]
  %146 = phi i64* [ %22, %136 ], [ %172, %142 ]
  %147 = getelementptr inbounds i16, i16* %144, i64 2
  %148 = load i16, i16* %147, align 2, !tbaa !5
  %149 = sext i16 %148 to i64
  %150 = load i64, i64* %146, align 8, !tbaa !12
  %151 = mul nsw i64 %150, %149
  %152 = getelementptr inbounds i16, i16* %144, i64 3
  %153 = load i16, i16* %152, align 2, !tbaa !5
  %154 = sext i16 %153 to i64
  %155 = getelementptr inbounds i64, i64* %146, i64 1
  %156 = load i64, i64* %155, align 8, !tbaa !12
  %157 = mul nsw i64 %156, %154
  %158 = add nsw i64 %157, %151
  %159 = ashr i64 %158, 15
  %160 = add nsw i64 %159, %145
  %161 = load i16, i16* %144, align 2, !tbaa !5
  %162 = sext i16 %161 to i64
  %163 = mul nsw i64 %150, %162
  %164 = getelementptr inbounds i16, i16* %144, i64 1
  %165 = load i16, i16* %164, align 2, !tbaa !5
  %166 = sext i16 %165 to i64
  %167 = mul nsw i64 %156, %166
  %168 = add nsw i64 %167, %163
  %169 = ashr i64 %168, 15
  %170 = add nsw i64 %169, %160
  store i64 %150, i64* %155, align 8, !tbaa !12
  store i64 %160, i64* %146, align 8, !tbaa !12
  %171 = getelementptr inbounds i16, i16* %144, i64 4
  %172 = getelementptr inbounds i64, i64* %146, i64 2
  %173 = add nuw nsw i64 %143, 1
  %174 = icmp eq i64 %173, 50
  br i1 %174, label %175, label %142, !llvm.loop !20

175:                                              ; preds = %142
  %176 = getelementptr inbounds [200 x i64], [200 x i64]* %3, i64 0, i64 100
  store i64 %170, i64* %176, align 16, !tbaa !12
  call void @jpegdct(i16* nonnull %7, i16* nonnull %137)
  call void @llvm.lifetime.end.p0i8(i64 1600, i8* nonnull %6) #5
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %5) #5
  call void @llvm.lifetime.end.p0i8(i64 400, i8* nonnull %4) #5
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
