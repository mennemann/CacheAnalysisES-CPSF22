; ModuleID = 'adpcm.c'
source_filename = "adpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@h = dso_local local_unnamed_addr global [24 x i32] [i32 12, i32 -44, i32 -44, i32 212, i32 48, i32 -624, i32 128, i32 1448, i32 -840, i32 -3220, i32 3804, i32 15504, i32 15504, i32 3804, i32 -3220, i32 -840, i32 1448, i32 128, i32 -624, i32 48, i32 212, i32 -44, i32 -44, i32 12], align 16
@qq4_code4_table = dso_local local_unnamed_addr global [16 x i32] [i32 0, i32 -20456, i32 -12896, i32 -8968, i32 -6288, i32 -4240, i32 -2584, i32 -1200, i32 20456, i32 12896, i32 8968, i32 6288, i32 4240, i32 2584, i32 1200, i32 0], align 16
@qq5_code5_table = dso_local local_unnamed_addr global [32 x i32] [i32 -280, i32 -280, i32 -23352, i32 -17560, i32 -14120, i32 -11664, i32 -9752, i32 -8184, i32 -6864, i32 -5712, i32 -4696, i32 -3784, i32 -2960, i32 -2208, i32 -1520, i32 -880, i32 23352, i32 17560, i32 14120, i32 11664, i32 9752, i32 8184, i32 6864, i32 5712, i32 4696, i32 3784, i32 2960, i32 2208, i32 1520, i32 880, i32 280, i32 -280], align 16
@qq6_code6_table = dso_local local_unnamed_addr global [64 x i32] [i32 -136, i32 -136, i32 -136, i32 -136, i32 -24808, i32 -21904, i32 -19008, i32 -16704, i32 -14984, i32 -13512, i32 -12280, i32 -11192, i32 -10232, i32 -9360, i32 -8576, i32 -7856, i32 -7192, i32 -6576, i32 -6000, i32 -5456, i32 -4944, i32 -4464, i32 -4008, i32 -3576, i32 -3168, i32 -2776, i32 -2400, i32 -2032, i32 -1688, i32 -1360, i32 -1040, i32 -728, i32 24808, i32 21904, i32 19008, i32 16704, i32 14984, i32 13512, i32 12280, i32 11192, i32 10232, i32 9360, i32 8576, i32 7856, i32 7192, i32 6576, i32 6000, i32 5456, i32 4944, i32 4464, i32 4008, i32 3576, i32 3168, i32 2776, i32 2400, i32 2032, i32 1688, i32 1360, i32 1040, i32 728, i32 432, i32 136, i32 -432, i32 -136], align 16
@wl_code_table = dso_local local_unnamed_addr global [16 x i32] [i32 -60, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 3042, i32 1198, i32 538, i32 334, i32 172, i32 58, i32 -30, i32 -60], align 16
@wl_table = dso_local local_unnamed_addr global [8 x i32] [i32 -60, i32 -30, i32 58, i32 172, i32 334, i32 538, i32 1198, i32 3042], align 16
@ilb_table = dso_local local_unnamed_addr global [32 x i32] [i32 2048, i32 2093, i32 2139, i32 2186, i32 2233, i32 2282, i32 2332, i32 2383, i32 2435, i32 2489, i32 2543, i32 2599, i32 2656, i32 2714, i32 2774, i32 2834, i32 2896, i32 2960, i32 3025, i32 3091, i32 3158, i32 3228, i32 3298, i32 3371, i32 3444, i32 3520, i32 3597, i32 3676, i32 3756, i32 3838, i32 3922, i32 4008], align 16
@decis_levl = dso_local local_unnamed_addr global [30 x i32] [i32 280, i32 576, i32 880, i32 1200, i32 1520, i32 1864, i32 2208, i32 2584, i32 2960, i32 3376, i32 3784, i32 4240, i32 4696, i32 5200, i32 5712, i32 6288, i32 6864, i32 7520, i32 8184, i32 8968, i32 9752, i32 10712, i32 11664, i32 12896, i32 14120, i32 15840, i32 17560, i32 20456, i32 23352, i32 32767], align 16
@quant26bt_pos = dso_local local_unnamed_addr global [31 x i32] [i32 61, i32 60, i32 59, i32 58, i32 57, i32 56, i32 55, i32 54, i32 53, i32 52, i32 51, i32 50, i32 49, i32 48, i32 47, i32 46, i32 45, i32 44, i32 43, i32 42, i32 41, i32 40, i32 39, i32 38, i32 37, i32 36, i32 35, i32 34, i32 33, i32 32, i32 32], align 16
@quant26bt_neg = dso_local local_unnamed_addr global [31 x i32] [i32 63, i32 62, i32 31, i32 30, i32 29, i32 28, i32 27, i32 26, i32 25, i32 24, i32 23, i32 22, i32 21, i32 20, i32 19, i32 18, i32 17, i32 16, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4], align 16
@qq2_code2_table = dso_local local_unnamed_addr global [4 x i32] [i32 -7408, i32 -1616, i32 7408, i32 1616], align 16
@wh_code_table = dso_local local_unnamed_addr global [4 x i32] [i32 798, i32 -214, i32 798, i32 -214], align 16
@tqmf = dso_local local_unnamed_addr global [24 x i32] zeroinitializer, align 16
@xl = dso_local local_unnamed_addr global i32 0, align 4
@xh = dso_local local_unnamed_addr global i32 0, align 4
@delay_bpl = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@delay_dltx = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@szl = dso_local local_unnamed_addr global i32 0, align 4
@rlt1 = dso_local local_unnamed_addr global i32 0, align 4
@al1 = dso_local local_unnamed_addr global i32 0, align 4
@rlt2 = dso_local local_unnamed_addr global i32 0, align 4
@al2 = dso_local local_unnamed_addr global i32 0, align 4
@spl = dso_local local_unnamed_addr global i32 0, align 4
@sl = dso_local local_unnamed_addr global i32 0, align 4
@el = dso_local local_unnamed_addr global i32 0, align 4
@detl = dso_local local_unnamed_addr global i32 0, align 4
@il = dso_local local_unnamed_addr global i32 0, align 4
@dlt = dso_local local_unnamed_addr global i32 0, align 4
@nbl = dso_local local_unnamed_addr global i32 0, align 4
@plt = dso_local local_unnamed_addr global i32 0, align 4
@plt1 = dso_local local_unnamed_addr global i32 0, align 4
@plt2 = dso_local local_unnamed_addr global i32 0, align 4
@rlt = dso_local local_unnamed_addr global i32 0, align 4
@delay_bph = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@delay_dhx = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@szh = dso_local local_unnamed_addr global i32 0, align 4
@rh1 = dso_local local_unnamed_addr global i32 0, align 4
@ah1 = dso_local local_unnamed_addr global i32 0, align 4
@rh2 = dso_local local_unnamed_addr global i32 0, align 4
@ah2 = dso_local local_unnamed_addr global i32 0, align 4
@sph = dso_local local_unnamed_addr global i32 0, align 4
@sh = dso_local local_unnamed_addr global i32 0, align 4
@eh = dso_local local_unnamed_addr global i32 0, align 4
@ih = dso_local local_unnamed_addr global i32 0, align 4
@deth = dso_local local_unnamed_addr global i32 0, align 4
@dh = dso_local local_unnamed_addr global i32 0, align 4
@nbh = dso_local local_unnamed_addr global i32 0, align 4
@ph = dso_local local_unnamed_addr global i32 0, align 4
@ph1 = dso_local local_unnamed_addr global i32 0, align 4
@ph2 = dso_local local_unnamed_addr global i32 0, align 4
@yh = dso_local local_unnamed_addr global i32 0, align 4
@ilr = dso_local local_unnamed_addr global i32 0, align 4
@dec_del_bpl = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_del_dltx = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_szl = dso_local local_unnamed_addr global i32 0, align 4
@dec_rlt1 = dso_local local_unnamed_addr global i32 0, align 4
@dec_al1 = dso_local local_unnamed_addr global i32 0, align 4
@dec_rlt2 = dso_local local_unnamed_addr global i32 0, align 4
@dec_al2 = dso_local local_unnamed_addr global i32 0, align 4
@dec_spl = dso_local local_unnamed_addr global i32 0, align 4
@dec_sl = dso_local local_unnamed_addr global i32 0, align 4
@dec_detl = dso_local local_unnamed_addr global i32 0, align 4
@dec_dlt = dso_local local_unnamed_addr global i32 0, align 4
@dl = dso_local local_unnamed_addr global i32 0, align 4
@rl = dso_local local_unnamed_addr global i32 0, align 4
@dec_nbl = dso_local local_unnamed_addr global i32 0, align 4
@dec_plt = dso_local local_unnamed_addr global i32 0, align 4
@dec_plt1 = dso_local local_unnamed_addr global i32 0, align 4
@dec_plt2 = dso_local local_unnamed_addr global i32 0, align 4
@dec_rlt = dso_local local_unnamed_addr global i32 0, align 4
@dec_del_bph = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_del_dhx = dso_local local_unnamed_addr global [6 x i32] zeroinitializer, align 16
@dec_szh = dso_local local_unnamed_addr global i32 0, align 4
@dec_rh1 = dso_local local_unnamed_addr global i32 0, align 4
@dec_ah1 = dso_local local_unnamed_addr global i32 0, align 4
@dec_rh2 = dso_local local_unnamed_addr global i32 0, align 4
@dec_ah2 = dso_local local_unnamed_addr global i32 0, align 4
@dec_sph = dso_local local_unnamed_addr global i32 0, align 4
@dec_sh = dso_local local_unnamed_addr global i32 0, align 4
@dec_deth = dso_local local_unnamed_addr global i32 0, align 4
@dec_dh = dso_local local_unnamed_addr global i32 0, align 4
@dec_nbh = dso_local local_unnamed_addr global i32 0, align 4
@dec_ph = dso_local local_unnamed_addr global i32 0, align 4
@dec_ph1 = dso_local local_unnamed_addr global i32 0, align 4
@dec_ph2 = dso_local local_unnamed_addr global i32 0, align 4
@rh = dso_local local_unnamed_addr global i32 0, align 4
@xd = dso_local local_unnamed_addr global i32 0, align 4
@xs = dso_local local_unnamed_addr global i32 0, align 4
@accumc = dso_local local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@accumd = dso_local local_unnamed_addr global [11 x i32] zeroinitializer, align 16
@xout1 = dso_local local_unnamed_addr global i32 0, align 4
@xout2 = dso_local local_unnamed_addr global i32 0, align 4
@main.test_data = internal unnamed_addr global [6 x i32] zeroinitializer, align 16
@main.compressed = internal unnamed_addr global [3 x i32] zeroinitializer, align 4
@main.result = internal unnamed_addr global [6 x i32] zeroinitializer, align 16
@rs = dso_local local_unnamed_addr global i32 0, align 4
@yl = dso_local local_unnamed_addr global i32 0, align 4
@dec_yh = dso_local local_unnamed_addr global i32 0, align 4
@dec_rh = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @my_abs(i32 %0) local_unnamed_addr #0 {
  %2 = call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @my_fabs(i32 %0) local_unnamed_addr #0 {
  %2 = call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: nofree nosync nounwind readnone sspstrong uwtable
define dso_local i32 @my_sin(i32 %0) local_unnamed_addr #1 {
  %2 = add i32 %0, 6281
  %3 = call i32 @llvm.smin.i32(i32 %0, i32 6282)
  %4 = sub i32 %2, %3
  %5 = urem i32 %4, 6282
  %6 = sub i32 %4, %5
  %7 = sub i32 %0, %6
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 -6282)
  %9 = add i32 %8, %6
  %10 = sub i32 %9, %0
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = sub i32 %10, %12
  %14 = udiv i32 %13, 6282
  %15 = add nuw nsw i32 %14, %12
  %16 = mul i32 %15, 6282
  %17 = add i32 %16, %0
  %18 = sub i32 %17, %6
  %19 = mul i32 %18, %18
  %20 = sub i32 0, %19
  %21 = mul nsw i32 %18, %20
  %22 = sdiv i32 %21, 6
  %23 = add nsw i32 %22, %18
  %24 = add i32 %21, 5
  %25 = icmp ult i32 %24, 11
  br i1 %25, label %38, label %26

26:                                               ; preds = %1, %26
  %27 = phi i32 [ %36, %26 ], [ 2, %1 ]
  %28 = phi i32 [ %35, %26 ], [ %23, %1 ]
  %29 = phi i32 [ %34, %26 ], [ %22, %1 ]
  %30 = mul nsw i32 %29, %20
  %31 = shl nuw nsw i32 %27, 1
  %32 = or i32 %31, 1
  %33 = mul nsw i32 %32, %31
  %34 = sdiv i32 %30, %33
  %35 = add nsw i32 %34, %28
  %36 = add nuw nsw i32 %27, 1
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %38, label %26, !llvm.loop !5

38:                                               ; preds = %26, %1
  %39 = phi i32 [ %23, %1 ], [ %35, %26 ]
  ret i32 %39
}

; Function Attrs: nofree nosync nounwind readnone sspstrong uwtable
define dso_local i32 @my_cos(i32 %0) local_unnamed_addr #1 {
  %2 = add i32 %0, -1570
  %3 = sub nsw i32 1570, %0
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 6282) #11
  %5 = add i32 %4, %0
  %6 = sub i32 7851, %5
  %7 = urem i32 %6, 6282
  %8 = sub i32 %6, %7
  %9 = sub i32 %3, %8
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 -6282) #11
  %11 = add i32 %8, %2
  %12 = add i32 %11, %10
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = sub i32 %12, %14
  %16 = udiv i32 %15, 6282
  %17 = add nuw nsw i32 %16, %14
  %18 = mul i32 %17, 6282
  %19 = sub i32 %3, %8
  %20 = add i32 %19, %18
  %21 = mul i32 %20, %20
  %22 = sub i32 0, %21
  %23 = mul nsw i32 %20, %22
  %24 = sdiv i32 %23, 6
  %25 = add nsw i32 %24, %20
  %26 = add i32 %23, 5
  %27 = icmp ult i32 %26, 11
  br i1 %27, label %40, label %28

28:                                               ; preds = %1, %28
  %29 = phi i32 [ %38, %28 ], [ 2, %1 ]
  %30 = phi i32 [ %37, %28 ], [ %25, %1 ]
  %31 = phi i32 [ %36, %28 ], [ %24, %1 ]
  %32 = mul nsw i32 %31, %22
  %33 = shl nuw nsw i32 %29, 1
  %34 = or i32 %33, 1
  %35 = mul nsw i32 %34, %33
  %36 = sdiv i32 %32, %35
  %37 = add nsw i32 %36, %30
  %38 = add nuw nsw i32 %29, 1
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %28, !llvm.loop !5

40:                                               ; preds = %28, %1
  %41 = phi i32 [ %25, %1 ], [ %37, %28 ]
  ret i32 %41
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @encode(i32 %0, i32 %1) local_unnamed_addr #2 {
  %3 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 0), align 16, !tbaa !8
  %4 = sext i32 %3 to i64
  %5 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 0), align 16, !tbaa !8
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, %4
  %8 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 1), align 4, !tbaa !8
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 1), align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, %9
  br label %13

13:                                               ; preds = %2, %13
  %14 = phi i32 [ 0, %2 ], [ %35, %13 ]
  %15 = phi i64 [ %12, %2 ], [ %34, %13 ]
  %16 = phi i64 [ %7, %2 ], [ %26, %13 ]
  %17 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 2), %2 ], [ %27, %13 ]
  %18 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 2), %2 ], [ %30, %13 ]
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* %17, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 1
  %23 = load i32, i32* %18, align 4, !tbaa !8
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, %21
  %26 = add nsw i64 %25, %16
  %27 = getelementptr inbounds i32, i32* %17, i64 2
  %28 = load i32, i32* %19, align 4, !tbaa !8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %18, i64 2
  %31 = load i32, i32* %22, align 4, !tbaa !8
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %32, %29
  %34 = add nsw i64 %33, %15
  %35 = add nuw nsw i32 %14, 1
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %13, !llvm.loop !12

37:                                               ; preds = %13
  %38 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 22), align 8, !tbaa !8
  %39 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 22), align 8, !tbaa !8
  %40 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 23), align 4, !tbaa !8
  %41 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 23), align 4, !tbaa !8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(88) bitcast (i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 2) to i8*), i8* noundef nonnull align 16 dereferenceable(88) bitcast ([24 x i32]* @tqmf to i8*), i64 88, i1 false)
  %42 = sext i32 %41 to i64
  %43 = sext i32 %40 to i64
  %44 = mul nsw i64 %42, %43
  %45 = sext i32 %39 to i64
  %46 = sext i32 %38 to i64
  %47 = mul nsw i64 %45, %46
  %48 = add nsw i64 %47, %26
  %49 = add nsw i64 %44, %34
  store i32 %0, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 1), align 4, !tbaa !8
  store i32 %1, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @tqmf, i64 0, i64 0), align 16, !tbaa !8
  %50 = add nsw i64 %49, %48
  %51 = lshr i64 %50, 15
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* @xl, align 4, !tbaa !8
  %53 = sub nsw i64 %48, %49
  %54 = lshr i64 %53, 15
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* @xh, align 4, !tbaa !8
  %56 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 0), align 16, !tbaa !8
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0), align 16, !tbaa !8
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %57
  br label %61

61:                                               ; preds = %61, %37
  %62 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 0), %37 ], [ %67, %61 ]
  %63 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0), %37 ], [ %66, %61 ]
  %64 = phi i64 [ %60, %37 ], [ %73, %61 ]
  %65 = phi i32 [ 1, %37 ], [ %74, %61 ]
  %66 = getelementptr inbounds i32, i32* %63, i64 1
  %67 = getelementptr inbounds i32, i32* %62, i64 1
  %68 = load i32, i32* %67, align 4, !tbaa !8
  %69 = sext i32 %68 to i64
  %70 = load i32, i32* %66, align 4, !tbaa !8
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, %69
  %73 = add nsw i64 %72, %64
  %74 = add nuw nsw i32 %65, 1
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %61, !llvm.loop !13

76:                                               ; preds = %61
  %77 = lshr i64 %73, 14
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* @szl, align 4, !tbaa !8
  %79 = load i32, i32* @rlt1, align 4, !tbaa !8
  %80 = load i32, i32* @al1, align 4, !tbaa !8
  %81 = load i32, i32* @rlt2, align 4, !tbaa !8
  %82 = load i32, i32* @al2, align 4, !tbaa !8
  %83 = shl nsw i32 %79, 1
  %84 = sext i32 %83 to i64
  %85 = sext i32 %80 to i64
  %86 = mul nsw i64 %85, %84
  %87 = shl nsw i32 %81, 1
  %88 = sext i32 %87 to i64
  %89 = sext i32 %82 to i64
  %90 = mul nsw i64 %89, %88
  %91 = add nsw i64 %90, %86
  %92 = lshr i64 %91, 15
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* @spl, align 4, !tbaa !8
  %94 = add nsw i32 %93, %78
  store i32 %94, i32* @sl, align 4, !tbaa !8
  %95 = sub nsw i32 %52, %94
  store i32 %95, i32* @el, align 4, !tbaa !8
  %96 = load i32, i32* @detl, align 4, !tbaa !8
  %97 = call i32 @llvm.abs.i32(i32 %95, i1 true) #11
  %98 = zext i32 %97 to i64
  %99 = sext i32 %96 to i64
  br label %100

100:                                              ; preds = %108, %76
  %101 = phi i64 [ 0, %76 ], [ %109, %108 ]
  %102 = getelementptr inbounds [30 x i32], [30 x i32]* @decis_levl, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !8
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %99
  %106 = ashr i64 %105, 15
  %107 = icmp slt i64 %106, %98
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = add nuw nsw i64 %101, 1
  %110 = icmp eq i64 %109, 30
  br i1 %110, label %111, label %100, !llvm.loop !14

111:                                              ; preds = %100, %108
  %112 = phi i64 [ %101, %100 ], [ 30, %108 ]
  %113 = icmp sgt i32 %95, -1
  %114 = and i64 %112, 4294967295
  %115 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_pos, i64 0, i64 %114
  %116 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_neg, i64 0, i64 %114
  %117 = select i1 %113, i32* %115, i32* %116
  %118 = load i32, i32* %117, align 4, !tbaa !8
  store i32 %118, i32* @il, align 4, !tbaa !8
  %119 = ashr i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !8
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, %99
  %125 = lshr i64 %124, 15
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* @dlt, align 4, !tbaa !8
  %127 = load i32, i32* @nbl, align 4, !tbaa !8
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, 127
  %130 = lshr i64 %129, 7
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* @wl_code_table, i64 0, i64 %120
  %133 = load i32, i32* %132, align 4, !tbaa !8
  %134 = add nsw i32 %133, %131
  %135 = icmp sgt i32 %134, 0
  %136 = select i1 %135, i32 %134, i32 0
  %137 = icmp slt i32 %136, 18432
  %138 = select i1 %137, i32 %136, i32 18432
  store i32 %138, i32* @nbl, align 4, !tbaa !8
  %139 = lshr i32 %138, 6
  %140 = and i32 %139, 31
  %141 = lshr i32 %138, 11
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !8
  %145 = sub nsw i32 9, %141
  %146 = ashr i32 %144, %145
  %147 = shl i32 %146, 3
  store i32 %147, i32* @detl, align 4, !tbaa !8
  %148 = add nsw i32 %126, %78
  store i32 %148, i32* @plt, align 4, !tbaa !8
  %149 = icmp eq i32 %126, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %111
  %151 = shl i64 %125, 32
  %152 = ashr exact i64 %151, 32
  br label %163

153:                                              ; preds = %111, %153
  %154 = phi i64 [ %161, %153 ], [ 0, %111 ]
  %155 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4, !tbaa !8
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, 255
  %159 = lshr i64 %158, 8
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %155, align 4, !tbaa !8
  %161 = add nuw nsw i64 %154, 1
  %162 = icmp eq i64 %161, 6
  br i1 %162, label %180, label %153, !llvm.loop !15

163:                                              ; preds = %163, %150
  %164 = phi i64 [ 0, %150 ], [ %178, %163 ]
  %165 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4, !tbaa !8
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %152, %167
  %169 = icmp sgt i64 %168, -1
  %170 = select i1 %169, i32 128, i32 -128
  %171 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bpl, i64 0, i64 %164
  %172 = load i32, i32* %171, align 4, !tbaa !8
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, 255
  %175 = lshr i64 %174, 8
  %176 = trunc i64 %175 to i32
  %177 = add nsw i32 %170, %176
  store i32 %177, i32* %171, align 4, !tbaa !8
  %178 = add nuw nsw i64 %164, 1
  %179 = icmp eq i64 %178, 6
  br i1 %179, label %180, label %163, !llvm.loop !16

180:                                              ; preds = %163, %153
  %181 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 4), align 16, !tbaa !8
  store i32 %181, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 5), align 4, !tbaa !8
  %182 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %182, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 4), align 16, !tbaa !8
  %183 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 2), align 8, !tbaa !8
  store i32 %183, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %58, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 1), align 4, !tbaa !8
  store i32 %126, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dltx, i64 0, i64 0), align 16, !tbaa !8
  %184 = load i32, i32* @plt1, align 4, !tbaa !8
  %185 = load i32, i32* @plt2, align 4, !tbaa !8
  %186 = shl nsw i64 %85, 2
  %187 = sext i32 %148 to i64
  %188 = sext i32 %184 to i64
  %189 = mul nsw i64 %188, %187
  %190 = icmp sgt i64 %189, -1
  %191 = sub nsw i64 0, %186
  %192 = select i1 %190, i64 %191, i64 %186
  %193 = lshr i64 %192, 7
  %194 = sext i32 %185 to i64
  %195 = mul nsw i64 %194, %187
  %196 = icmp sgt i64 %195, -1
  %197 = select i1 %196, i64 128, i64 4294967168
  %198 = mul nsw i64 %89, 127
  %199 = lshr i64 %198, 7
  %200 = add nuw nsw i64 %197, %199
  %201 = add nuw nsw i64 %200, %193
  %202 = trunc i64 %201 to i32
  %203 = icmp slt i32 %202, 12288
  %204 = select i1 %203, i32 %202, i32 12288
  %205 = icmp sgt i32 %204, -12288
  %206 = select i1 %205, i32 %204, i32 -12288
  store i32 %206, i32* @al2, align 4, !tbaa !8
  %207 = mul nsw i64 %85, 255
  %208 = lshr i64 %207, 8
  %209 = trunc i64 %208 to i32
  %210 = select i1 %190, i32 192, i32 -192
  %211 = add nsw i32 %210, %209
  %212 = add nsw i32 %206, -15360
  %213 = sub nsw i32 15360, %206
  %214 = icmp sgt i32 %211, %213
  %215 = select i1 %214, i32 %213, i32 %211
  %216 = icmp slt i32 %215, %212
  %217 = select i1 %216, i32 %212, i32 %215
  store i32 %217, i32* @al1, align 4, !tbaa !8
  %218 = add nsw i32 %94, %126
  store i32 %218, i32* @rlt, align 4, !tbaa !8
  store i32 %79, i32* @rlt2, align 4, !tbaa !8
  store i32 %218, i32* @rlt1, align 4, !tbaa !8
  store i32 %184, i32* @plt2, align 4, !tbaa !8
  store i32 %148, i32* @plt1, align 4, !tbaa !8
  %219 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i64 0, i64 0), align 16, !tbaa !8
  %220 = sext i32 %219 to i64
  %221 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0), align 16, !tbaa !8
  %222 = sext i32 %221 to i64
  %223 = mul nsw i64 %222, %220
  br label %224

224:                                              ; preds = %224, %180
  %225 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @delay_bph, i64 0, i64 0), %180 ], [ %230, %224 ]
  %226 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0), %180 ], [ %229, %224 ]
  %227 = phi i64 [ %223, %180 ], [ %236, %224 ]
  %228 = phi i32 [ 1, %180 ], [ %237, %224 ]
  %229 = getelementptr inbounds i32, i32* %226, i64 1
  %230 = getelementptr inbounds i32, i32* %225, i64 1
  %231 = load i32, i32* %230, align 4, !tbaa !8
  %232 = sext i32 %231 to i64
  %233 = load i32, i32* %229, align 4, !tbaa !8
  %234 = sext i32 %233 to i64
  %235 = mul nsw i64 %234, %232
  %236 = add nsw i64 %235, %227
  %237 = add nuw nsw i32 %228, 1
  %238 = icmp eq i32 %237, 6
  br i1 %238, label %239, label %224, !llvm.loop !13

239:                                              ; preds = %224
  %240 = lshr i64 %236, 14
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* @szh, align 4, !tbaa !8
  %242 = load i32, i32* @rh1, align 4, !tbaa !8
  %243 = load i32, i32* @ah1, align 4, !tbaa !8
  %244 = load i32, i32* @rh2, align 4, !tbaa !8
  %245 = load i32, i32* @ah2, align 4, !tbaa !8
  %246 = shl nsw i32 %242, 1
  %247 = sext i32 %246 to i64
  %248 = sext i32 %243 to i64
  %249 = mul nsw i64 %248, %247
  %250 = shl nsw i32 %244, 1
  %251 = sext i32 %250 to i64
  %252 = sext i32 %245 to i64
  %253 = mul nsw i64 %252, %251
  %254 = add nsw i64 %253, %249
  %255 = lshr i64 %254, 15
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* @sph, align 4, !tbaa !8
  %257 = add nsw i32 %256, %241
  store i32 %257, i32* @sh, align 4, !tbaa !8
  %258 = sub nsw i32 %55, %257
  store i32 %258, i32* @eh, align 4, !tbaa !8
  %259 = icmp sgt i32 %258, -1
  %260 = select i1 %259, i32 3, i32 1
  store i32 %260, i32* @ih, align 4, !tbaa !8
  %261 = load i32, i32* @deth, align 4, !tbaa !8
  %262 = sext i32 %261 to i64
  %263 = mul nsw i64 %262, 564
  %264 = ashr i64 %263, 12
  %265 = trunc i64 %264 to i32
  %266 = call i32 @llvm.abs.i32(i32 %258, i1 true) #11
  %267 = icmp sgt i32 %266, %265
  br i1 %267, label %268, label %270

268:                                              ; preds = %239
  %269 = add nsw i32 %260, -1
  store i32 %269, i32* @ih, align 4, !tbaa !8
  br label %270

270:                                              ; preds = %268, %239
  %271 = load i32, i32* @ih, align 4, !tbaa !8
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4, !tbaa !8
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %275, %262
  %277 = lshr i64 %276, 15
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* @dh, align 4, !tbaa !8
  %279 = load i32, i32* @nbh, align 4, !tbaa !8
  %280 = sext i32 %279 to i64
  %281 = mul nsw i64 %280, 127
  %282 = lshr i64 %281, 7
  %283 = trunc i64 %282 to i32
  %284 = getelementptr inbounds [4 x i32], [4 x i32]* @wh_code_table, i64 0, i64 %272
  %285 = load i32, i32* %284, align 4, !tbaa !8
  %286 = add nsw i32 %285, %283
  %287 = icmp sgt i32 %286, 0
  %288 = select i1 %287, i32 %286, i32 0
  %289 = icmp slt i32 %288, 22528
  %290 = select i1 %289, i32 %288, i32 22528
  store i32 %290, i32* @nbh, align 4, !tbaa !8
  %291 = lshr i32 %290, 6
  %292 = and i32 %291, 31
  %293 = lshr i32 %290, 11
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4, !tbaa !8
  %297 = sub nsw i32 11, %293
  %298 = ashr i32 %296, %297
  %299 = shl i32 %298, 3
  store i32 %299, i32* @deth, align 4, !tbaa !8
  %300 = add nsw i32 %278, %241
  store i32 %300, i32* @ph, align 4, !tbaa !8
  %301 = icmp eq i32 %278, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %270
  %303 = shl i64 %277, 32
  %304 = ashr exact i64 %303, 32
  br label %315

305:                                              ; preds = %270, %305
  %306 = phi i64 [ %313, %305 ], [ 0, %270 ]
  %307 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bph, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4, !tbaa !8
  %309 = sext i32 %308 to i64
  %310 = mul nsw i64 %309, 255
  %311 = lshr i64 %310, 8
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %307, align 4, !tbaa !8
  %313 = add nuw nsw i64 %306, 1
  %314 = icmp eq i64 %313, 6
  br i1 %314, label %332, label %305, !llvm.loop !15

315:                                              ; preds = %315, %302
  %316 = phi i64 [ 0, %302 ], [ %330, %315 ]
  %317 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4, !tbaa !8
  %319 = sext i32 %318 to i64
  %320 = mul nsw i64 %304, %319
  %321 = icmp sgt i64 %320, -1
  %322 = select i1 %321, i32 128, i32 -128
  %323 = getelementptr inbounds [6 x i32], [6 x i32]* @delay_bph, i64 0, i64 %316
  %324 = load i32, i32* %323, align 4, !tbaa !8
  %325 = sext i32 %324 to i64
  %326 = mul nsw i64 %325, 255
  %327 = lshr i64 %326, 8
  %328 = trunc i64 %327 to i32
  %329 = add nsw i32 %322, %328
  store i32 %329, i32* %323, align 4, !tbaa !8
  %330 = add nuw nsw i64 %316, 1
  %331 = icmp eq i64 %330, 6
  br i1 %331, label %332, label %315, !llvm.loop !16

332:                                              ; preds = %315, %305
  %333 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 4), align 16, !tbaa !8
  store i32 %333, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 5), align 4, !tbaa !8
  %334 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %334, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 4), align 16, !tbaa !8
  %335 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 2), align 8, !tbaa !8
  store i32 %335, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %221, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 1), align 4, !tbaa !8
  store i32 %278, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @delay_dhx, i64 0, i64 0), align 16, !tbaa !8
  %336 = load i32, i32* @ph1, align 4, !tbaa !8
  %337 = load i32, i32* @ph2, align 4, !tbaa !8
  %338 = shl nsw i64 %248, 2
  %339 = sext i32 %300 to i64
  %340 = sext i32 %336 to i64
  %341 = mul nsw i64 %340, %339
  %342 = icmp sgt i64 %341, -1
  %343 = sub nsw i64 0, %338
  %344 = select i1 %342, i64 %343, i64 %338
  %345 = lshr i64 %344, 7
  %346 = sext i32 %337 to i64
  %347 = mul nsw i64 %346, %339
  %348 = icmp sgt i64 %347, -1
  %349 = select i1 %348, i64 128, i64 4294967168
  %350 = mul nsw i64 %252, 127
  %351 = lshr i64 %350, 7
  %352 = add nuw nsw i64 %349, %351
  %353 = add nuw nsw i64 %352, %345
  %354 = trunc i64 %353 to i32
  %355 = icmp slt i32 %354, 12288
  %356 = select i1 %355, i32 %354, i32 12288
  %357 = icmp sgt i32 %356, -12288
  %358 = select i1 %357, i32 %356, i32 -12288
  store i32 %358, i32* @ah2, align 4, !tbaa !8
  %359 = mul nsw i64 %248, 255
  %360 = lshr i64 %359, 8
  %361 = trunc i64 %360 to i32
  %362 = select i1 %342, i32 192, i32 -192
  %363 = add nsw i32 %362, %361
  %364 = add nsw i32 %358, -15360
  %365 = sub nsw i32 15360, %358
  %366 = icmp sgt i32 %363, %365
  %367 = select i1 %366, i32 %365, i32 %363
  %368 = icmp slt i32 %367, %364
  %369 = select i1 %368, i32 %364, i32 %367
  store i32 %369, i32* @ah1, align 4, !tbaa !8
  %370 = add nsw i32 %257, %278
  store i32 %370, i32* @yh, align 4, !tbaa !8
  store i32 %242, i32* @rh2, align 4, !tbaa !8
  store i32 %370, i32* @rh1, align 4, !tbaa !8
  store i32 %336, i32* @ph2, align 4, !tbaa !8
  store i32 %300, i32* @ph1, align 4, !tbaa !8
  %371 = shl i32 %271, 6
  %372 = or i32 %371, %118
  ret i32 %372
}

; Function Attrs: nofree norecurse nosync nounwind readonly sspstrong uwtable
define dso_local i32 @filtez(i32* nocapture readonly %0, i32* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = load i32, i32* %0, align 4, !tbaa !8
  %4 = sext i32 %3 to i64
  %5 = load i32, i32* %1, align 4, !tbaa !8
  %6 = sext i32 %5 to i64
  %7 = mul nsw i64 %6, %4
  br label %8

8:                                                ; preds = %2, %8
  %9 = phi i32* [ %0, %2 ], [ %14, %8 ]
  %10 = phi i32* [ %1, %2 ], [ %13, %8 ]
  %11 = phi i64 [ %7, %2 ], [ %20, %8 ]
  %12 = phi i32 [ 1, %2 ], [ %21, %8 ]
  %13 = getelementptr inbounds i32, i32* %10, i64 1
  %14 = getelementptr inbounds i32, i32* %9, i64 1
  %15 = load i32, i32* %14, align 4, !tbaa !8
  %16 = sext i32 %15 to i64
  %17 = load i32, i32* %13, align 4, !tbaa !8
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, %16
  %20 = add nsw i64 %19, %11
  %21 = add nuw nsw i32 %12, 1
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %8, !llvm.loop !13

23:                                               ; preds = %8
  %24 = lshr i64 %20, 14
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @filtep(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = shl nsw i32 %0, 1
  %6 = sext i32 %5 to i64
  %7 = sext i32 %1 to i64
  %8 = mul nsw i64 %7, %6
  %9 = shl nsw i32 %2, 1
  %10 = sext i32 %9 to i64
  %11 = sext i32 %3 to i64
  %12 = mul nsw i64 %11, %10
  %13 = add nsw i64 %12, %8
  %14 = lshr i64 %13, 15
  %15 = trunc i64 %14 to i32
  ret i32 %15
}

; Function Attrs: nofree nosync nounwind readonly sspstrong uwtable
define dso_local i32 @quantl(i32 %0, i32 %1) local_unnamed_addr #4 {
  %3 = call i32 @llvm.abs.i32(i32 %0, i1 true) #11
  %4 = zext i32 %3 to i64
  %5 = sext i32 %1 to i64
  br label %6

6:                                                ; preds = %2, %14
  %7 = phi i64 [ 0, %2 ], [ %15, %14 ]
  %8 = getelementptr inbounds [30 x i32], [30 x i32]* @decis_levl, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !8
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %10, %5
  %12 = ashr i64 %11, 15
  %13 = icmp slt i64 %12, %4
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, 30
  br i1 %16, label %17, label %6, !llvm.loop !14

17:                                               ; preds = %6, %14
  %18 = phi i64 [ %7, %6 ], [ 30, %14 ]
  %19 = icmp sgt i32 %0, -1
  %20 = and i64 %18, 4294967295
  %21 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_pos, i64 0, i64 %20
  %22 = getelementptr inbounds [31 x i32], [31 x i32]* @quant26bt_neg, i64 0, i64 %20
  %23 = select i1 %19, i32* %21, i32* %22
  %24 = load i32, i32* %23, align 4, !tbaa !8
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @logscl(i32 %0, i32 %1) local_unnamed_addr #5 {
  %3 = sext i32 %1 to i64
  %4 = mul nsw i64 %3, 127
  %5 = lshr i64 %4, 7
  %6 = trunc i64 %5 to i32
  %7 = ashr i32 %0, 2
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* @wl_code_table, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !8
  %11 = add nsw i32 %10, %6
  %12 = icmp sgt i32 %11, 0
  %13 = select i1 %12, i32 %11, i32 0
  %14 = icmp slt i32 %13, 18432
  %15 = select i1 %14, i32 %13, i32 18432
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @scalel(i32 %0, i32 %1) local_unnamed_addr #5 {
  %3 = lshr i32 %0, 6
  %4 = and i32 %3, 31
  %5 = ashr i32 %0, 11
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !8
  %9 = add nsw i32 %1, 1
  %10 = sub i32 %9, %5
  %11 = ashr i32 %8, %10
  %12 = shl i32 %11, 3
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @upzero(i32 %0, i32* nocapture %1, i32* nocapture %2) local_unnamed_addr #6 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = sext i32 %0 to i64
  br label %17

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %15, %7 ], [ 0, %3 ]
  %9 = getelementptr inbounds i32, i32* %2, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 255
  %13 = lshr i64 %12, 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4, !tbaa !8
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 6
  br i1 %16, label %34, label %7, !llvm.loop !15

17:                                               ; preds = %5, %17
  %18 = phi i64 [ 0, %5 ], [ %32, %17 ]
  %19 = getelementptr inbounds i32, i32* %1, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !8
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, %6
  %23 = icmp sgt i64 %22, -1
  %24 = select i1 %23, i32 128, i32 -128
  %25 = getelementptr inbounds i32, i32* %2, i64 %18
  %26 = load i32, i32* %25, align 4, !tbaa !8
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, 255
  %29 = lshr i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 %24, %30
  store i32 %31, i32* %25, align 4, !tbaa !8
  %32 = add nuw nsw i64 %18, 1
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %34, label %17, !llvm.loop !16

34:                                               ; preds = %17, %7
  %35 = getelementptr inbounds i32, i32* %1, i64 4
  %36 = load i32, i32* %35, align 4, !tbaa !8
  %37 = getelementptr inbounds i32, i32* %1, i64 5
  store i32 %36, i32* %37, align 4, !tbaa !8
  %38 = getelementptr inbounds i32, i32* %1, i64 3
  %39 = load i32, i32* %38, align 4, !tbaa !8
  store i32 %39, i32* %35, align 4, !tbaa !8
  %40 = getelementptr inbounds i32, i32* %1, i64 2
  %41 = load i32, i32* %40, align 4, !tbaa !8
  store i32 %41, i32* %38, align 4, !tbaa !8
  %42 = load i32, i32* %1, align 4, !tbaa !8
  %43 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 %42, i32* %43, align 4, !tbaa !8
  store i32 %0, i32* %1, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @uppol2(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 {
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 2
  %8 = sext i32 %2 to i64
  %9 = sext i32 %3 to i64
  %10 = mul nsw i64 %9, %8
  %11 = icmp sgt i64 %10, -1
  %12 = sub nsw i64 0, %7
  %13 = select i1 %11, i64 %12, i64 %7
  %14 = lshr i64 %13, 7
  %15 = sext i32 %4 to i64
  %16 = mul nsw i64 %15, %8
  %17 = icmp sgt i64 %16, -1
  %18 = select i1 %17, i64 128, i64 4294967168
  %19 = sext i32 %1 to i64
  %20 = mul nsw i64 %19, 127
  %21 = lshr i64 %20, 7
  %22 = add nuw nsw i64 %18, %21
  %23 = add nuw nsw i64 %22, %14
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %24, 12288
  %26 = select i1 %25, i32 %24, i32 12288
  %27 = icmp sgt i32 %26, -12288
  %28 = select i1 %27, i32 %26, i32 -12288
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn
define dso_local i32 @uppol1(i32 %0, i32 %1, i32 %2, i32 %3) local_unnamed_addr #0 {
  %5 = sext i32 %0 to i64
  %6 = mul nsw i64 %5, 255
  %7 = lshr i64 %6, 8
  %8 = sext i32 %2 to i64
  %9 = sext i32 %3 to i64
  %10 = mul nsw i64 %9, %8
  %11 = icmp sgt i64 %10, -1
  %12 = trunc i64 %7 to i32
  %13 = select i1 %11, i32 192, i32 -192
  %14 = add nsw i32 %13, %12
  %15 = add i32 %1, -15360
  %16 = sub nsw i32 15360, %1
  %17 = icmp sgt i32 %14, %16
  %18 = select i1 %17, i32 %16, i32 %14
  %19 = icmp slt i32 %18, %15
  %20 = select i1 %19, i32 %15, i32 %18
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @logsch(i32 %0, i32 %1) local_unnamed_addr #5 {
  %3 = sext i32 %1 to i64
  %4 = mul nsw i64 %3, 127
  %5 = lshr i64 %4, 7
  %6 = trunc i64 %5 to i32
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* @wh_code_table, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !8
  %10 = add nsw i32 %9, %6
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %11, i32 %10, i32 0
  %13 = icmp slt i32 %12, 22528
  %14 = select i1 %13, i32 %12, i32 22528
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @decode(i32 %0) local_unnamed_addr #6 {
  %2 = and i32 %0, 63
  store i32 %2, i32* @ilr, align 4, !tbaa !8
  %3 = ashr i32 %0, 6
  store i32 %3, i32* @ih, align 4, !tbaa !8
  %4 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 0), align 16, !tbaa !8
  %5 = sext i32 %4 to i64
  %6 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0), align 16, !tbaa !8
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, %5
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 0), %1 ], [ %15, %9 ]
  %11 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0), %1 ], [ %14, %9 ]
  %12 = phi i64 [ %8, %1 ], [ %21, %9 ]
  %13 = phi i32 [ 1, %1 ], [ %22, %9 ]
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = getelementptr inbounds i32, i32* %10, i64 1
  %16 = load i32, i32* %15, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %18 = load i32, i32* %14, align 4, !tbaa !8
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, %17
  %21 = add nsw i64 %20, %12
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %9, !llvm.loop !13

24:                                               ; preds = %9
  %25 = lshr i64 %21, 14
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @dec_szl, align 4, !tbaa !8
  %27 = load i32, i32* @dec_rlt1, align 4, !tbaa !8
  %28 = load i32, i32* @dec_al1, align 4, !tbaa !8
  %29 = load i32, i32* @dec_rlt2, align 4, !tbaa !8
  %30 = load i32, i32* @dec_al2, align 4, !tbaa !8
  %31 = shl nsw i32 %27, 1
  %32 = sext i32 %31 to i64
  %33 = sext i32 %28 to i64
  %34 = mul nsw i64 %33, %32
  %35 = shl nsw i32 %29, 1
  %36 = sext i32 %35 to i64
  %37 = sext i32 %30 to i64
  %38 = mul nsw i64 %37, %36
  %39 = add nsw i64 %38, %34
  %40 = lshr i64 %39, 15
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* @dec_spl, align 4, !tbaa !8
  %42 = add nsw i32 %41, %26
  store i32 %42, i32* @dec_sl, align 4, !tbaa !8
  %43 = load i32, i32* @dec_detl, align 4, !tbaa !8
  %44 = sext i32 %43 to i64
  %45 = lshr i32 %2, 2
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* @qq4_code4_table, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !8
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %44
  %51 = lshr i64 %50, 15
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* @dec_dlt, align 4, !tbaa !8
  %53 = load i32, i32* @il, align 4, !tbaa !8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* @qq6_code6_table, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !8
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, %44
  %59 = lshr i64 %58, 15
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @dl, align 4, !tbaa !8
  %61 = add nsw i32 %42, %60
  store i32 %61, i32* @rl, align 4, !tbaa !8
  %62 = load i32, i32* @dec_nbl, align 4, !tbaa !8
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 127
  %65 = lshr i64 %64, 7
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* @wl_code_table, i64 0, i64 %46
  %68 = load i32, i32* %67, align 4, !tbaa !8
  %69 = add nsw i32 %68, %66
  %70 = icmp sgt i32 %69, 0
  %71 = select i1 %70, i32 %69, i32 0
  %72 = icmp slt i32 %71, 18432
  %73 = select i1 %72, i32 %71, i32 18432
  store i32 %73, i32* @dec_nbl, align 4, !tbaa !8
  %74 = lshr i32 %73, 6
  %75 = and i32 %74, 31
  %76 = lshr i32 %73, 11
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !8
  %80 = sub nsw i32 9, %76
  %81 = ashr i32 %79, %80
  %82 = shl i32 %81, 3
  store i32 %82, i32* @dec_detl, align 4, !tbaa !8
  %83 = add nsw i32 %52, %26
  store i32 %83, i32* @dec_plt, align 4, !tbaa !8
  %84 = icmp eq i32 %52, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %24
  %86 = shl i64 %51, 32
  %87 = ashr exact i64 %86, 32
  br label %98

88:                                               ; preds = %24, %88
  %89 = phi i64 [ %96, %88 ], [ 0, %24 ]
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4, !tbaa !8
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, 255
  %94 = lshr i64 %93, 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %90, align 4, !tbaa !8
  %96 = add nuw nsw i64 %89, 1
  %97 = icmp eq i64 %96, 6
  br i1 %97, label %115, label %88, !llvm.loop !15

98:                                               ; preds = %98, %85
  %99 = phi i64 [ 0, %85 ], [ %113, %98 ]
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !8
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %87, %102
  %104 = icmp sgt i64 %103, -1
  %105 = select i1 %104, i32 128, i32 -128
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bpl, i64 0, i64 %99
  %107 = load i32, i32* %106, align 4, !tbaa !8
  %108 = sext i32 %107 to i64
  %109 = mul nsw i64 %108, 255
  %110 = lshr i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = add nsw i32 %105, %111
  store i32 %112, i32* %106, align 4, !tbaa !8
  %113 = add nuw nsw i64 %99, 1
  %114 = icmp eq i64 %113, 6
  br i1 %114, label %115, label %98, !llvm.loop !16

115:                                              ; preds = %98, %88
  %116 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 4), align 16, !tbaa !8
  store i32 %116, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 5), align 4, !tbaa !8
  %117 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %117, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 4), align 16, !tbaa !8
  %118 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 2), align 8, !tbaa !8
  store i32 %118, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %6, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 1), align 4, !tbaa !8
  store i32 %52, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dltx, i64 0, i64 0), align 16, !tbaa !8
  %119 = load i32, i32* @dec_plt1, align 4, !tbaa !8
  %120 = load i32, i32* @dec_plt2, align 4, !tbaa !8
  %121 = shl nsw i64 %33, 2
  %122 = sext i32 %83 to i64
  %123 = sext i32 %119 to i64
  %124 = mul nsw i64 %123, %122
  %125 = icmp sgt i64 %124, -1
  %126 = sub nsw i64 0, %121
  %127 = select i1 %125, i64 %126, i64 %121
  %128 = lshr i64 %127, 7
  %129 = sext i32 %120 to i64
  %130 = mul nsw i64 %129, %122
  %131 = icmp sgt i64 %130, -1
  %132 = select i1 %131, i64 128, i64 4294967168
  %133 = mul nsw i64 %37, 127
  %134 = lshr i64 %133, 7
  %135 = add nuw nsw i64 %132, %134
  %136 = add nuw nsw i64 %135, %128
  %137 = trunc i64 %136 to i32
  %138 = icmp slt i32 %137, 12288
  %139 = select i1 %138, i32 %137, i32 12288
  %140 = icmp sgt i32 %139, -12288
  %141 = select i1 %140, i32 %139, i32 -12288
  store i32 %141, i32* @dec_al2, align 4, !tbaa !8
  %142 = mul nsw i64 %33, 255
  %143 = lshr i64 %142, 8
  %144 = trunc i64 %143 to i32
  %145 = select i1 %125, i32 192, i32 -192
  %146 = add nsw i32 %145, %144
  %147 = add nsw i32 %141, -15360
  %148 = sub nsw i32 15360, %141
  %149 = icmp sgt i32 %146, %148
  %150 = select i1 %149, i32 %148, i32 %146
  %151 = icmp slt i32 %150, %147
  %152 = select i1 %151, i32 %147, i32 %150
  store i32 %152, i32* @dec_al1, align 4, !tbaa !8
  %153 = add nsw i32 %42, %52
  store i32 %153, i32* @dec_rlt, align 4, !tbaa !8
  store i32 %27, i32* @dec_rlt2, align 4, !tbaa !8
  store i32 %153, i32* @dec_rlt1, align 4, !tbaa !8
  store i32 %119, i32* @dec_plt2, align 4, !tbaa !8
  store i32 %83, i32* @dec_plt1, align 4, !tbaa !8
  %154 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 0), align 16, !tbaa !8
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0), align 16, !tbaa !8
  %157 = sext i32 %156 to i64
  %158 = mul nsw i64 %157, %155
  br label %159

159:                                              ; preds = %159, %115
  %160 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 0), %115 ], [ %165, %159 ]
  %161 = phi i32* [ getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0), %115 ], [ %164, %159 ]
  %162 = phi i64 [ %158, %115 ], [ %171, %159 ]
  %163 = phi i32 [ 1, %115 ], [ %172, %159 ]
  %164 = getelementptr inbounds i32, i32* %161, i64 1
  %165 = getelementptr inbounds i32, i32* %160, i64 1
  %166 = load i32, i32* %165, align 4, !tbaa !8
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* %164, align 4, !tbaa !8
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, %167
  %171 = add nsw i64 %170, %162
  %172 = add nuw nsw i32 %163, 1
  %173 = icmp eq i32 %172, 6
  br i1 %173, label %174, label %159, !llvm.loop !13

174:                                              ; preds = %159
  %175 = lshr i64 %171, 14
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* @dec_szh, align 4, !tbaa !8
  %177 = load i32, i32* @dec_rh1, align 4, !tbaa !8
  %178 = load i32, i32* @dec_ah1, align 4, !tbaa !8
  %179 = load i32, i32* @dec_rh2, align 4, !tbaa !8
  %180 = load i32, i32* @dec_ah2, align 4, !tbaa !8
  %181 = shl nsw i32 %177, 1
  %182 = sext i32 %181 to i64
  %183 = sext i32 %178 to i64
  %184 = mul nsw i64 %183, %182
  %185 = shl nsw i32 %179, 1
  %186 = sext i32 %185 to i64
  %187 = sext i32 %180 to i64
  %188 = mul nsw i64 %187, %186
  %189 = add nsw i64 %188, %184
  %190 = lshr i64 %189, 15
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* @dec_sph, align 4, !tbaa !8
  %192 = add nsw i32 %191, %176
  store i32 %192, i32* @dec_sh, align 4, !tbaa !8
  %193 = load i32, i32* @dec_deth, align 4, !tbaa !8
  %194 = sext i32 %193 to i64
  %195 = sext i32 %3 to i64
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* @qq2_code2_table, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4, !tbaa !8
  %198 = sext i32 %197 to i64
  %199 = mul nsw i64 %198, %194
  %200 = lshr i64 %199, 15
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* @dec_dh, align 4, !tbaa !8
  %202 = load i32, i32* @dec_nbh, align 4, !tbaa !8
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %203, 127
  %205 = lshr i64 %204, 7
  %206 = trunc i64 %205 to i32
  %207 = getelementptr inbounds [4 x i32], [4 x i32]* @wh_code_table, i64 0, i64 %195
  %208 = load i32, i32* %207, align 4, !tbaa !8
  %209 = add nsw i32 %208, %206
  %210 = icmp sgt i32 %209, 0
  %211 = select i1 %210, i32 %209, i32 0
  %212 = icmp slt i32 %211, 22528
  %213 = select i1 %212, i32 %211, i32 22528
  store i32 %213, i32* @dec_nbh, align 4, !tbaa !8
  %214 = lshr i32 %213, 6
  %215 = and i32 %214, 31
  %216 = lshr i32 %213, 11
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds [32 x i32], [32 x i32]* @ilb_table, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4, !tbaa !8
  %220 = sub nsw i32 11, %216
  %221 = ashr i32 %219, %220
  %222 = shl i32 %221, 3
  store i32 %222, i32* @dec_deth, align 4, !tbaa !8
  %223 = add nsw i32 %201, %176
  store i32 %223, i32* @dec_ph, align 4, !tbaa !8
  %224 = icmp eq i32 %201, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %174
  %226 = shl i64 %200, 32
  %227 = ashr exact i64 %226, 32
  br label %238

228:                                              ; preds = %174, %228
  %229 = phi i64 [ %236, %228 ], [ 0, %174 ]
  %230 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4, !tbaa !8
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %232, 255
  %234 = lshr i64 %233, 8
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %230, align 4, !tbaa !8
  %236 = add nuw nsw i64 %229, 1
  %237 = icmp eq i64 %236, 6
  br i1 %237, label %255, label %228, !llvm.loop !15

238:                                              ; preds = %238, %225
  %239 = phi i64 [ 0, %225 ], [ %253, %238 ]
  %240 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4, !tbaa !8
  %242 = sext i32 %241 to i64
  %243 = mul nsw i64 %227, %242
  %244 = icmp sgt i64 %243, -1
  %245 = select i1 %244, i32 128, i32 -128
  %246 = getelementptr inbounds [6 x i32], [6 x i32]* @dec_del_bph, i64 0, i64 %239
  %247 = load i32, i32* %246, align 4, !tbaa !8
  %248 = sext i32 %247 to i64
  %249 = mul nsw i64 %248, 255
  %250 = lshr i64 %249, 8
  %251 = trunc i64 %250 to i32
  %252 = add nsw i32 %245, %251
  store i32 %252, i32* %246, align 4, !tbaa !8
  %253 = add nuw nsw i64 %239, 1
  %254 = icmp eq i64 %253, 6
  br i1 %254, label %255, label %238, !llvm.loop !16

255:                                              ; preds = %238, %228
  %256 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 4), align 16, !tbaa !8
  store i32 %256, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 5), align 4, !tbaa !8
  %257 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %257, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 4), align 16, !tbaa !8
  %258 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 2), align 8, !tbaa !8
  store i32 %258, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 3), align 4, !tbaa !8
  store i32 %156, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 1), align 4, !tbaa !8
  store i32 %201, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @dec_del_dhx, i64 0, i64 0), align 16, !tbaa !8
  %259 = load i32, i32* @dec_ph1, align 4, !tbaa !8
  %260 = load i32, i32* @dec_ph2, align 4, !tbaa !8
  %261 = shl nsw i64 %183, 2
  %262 = sext i32 %223 to i64
  %263 = sext i32 %259 to i64
  %264 = mul nsw i64 %263, %262
  %265 = icmp sgt i64 %264, -1
  %266 = sub nsw i64 0, %261
  %267 = select i1 %265, i64 %266, i64 %261
  %268 = lshr i64 %267, 7
  %269 = sext i32 %260 to i64
  %270 = mul nsw i64 %269, %262
  %271 = icmp sgt i64 %270, -1
  %272 = select i1 %271, i64 128, i64 4294967168
  %273 = mul nsw i64 %187, 127
  %274 = lshr i64 %273, 7
  %275 = add nuw nsw i64 %272, %274
  %276 = add nuw nsw i64 %275, %268
  %277 = trunc i64 %276 to i32
  %278 = icmp slt i32 %277, 12288
  %279 = select i1 %278, i32 %277, i32 12288
  %280 = icmp sgt i32 %279, -12288
  %281 = select i1 %280, i32 %279, i32 -12288
  store i32 %281, i32* @dec_ah2, align 4, !tbaa !8
  %282 = mul nsw i64 %183, 255
  %283 = lshr i64 %282, 8
  %284 = trunc i64 %283 to i32
  %285 = select i1 %265, i32 192, i32 -192
  %286 = add nsw i32 %285, %284
  %287 = add nsw i32 %281, -15360
  %288 = sub nsw i32 15360, %281
  %289 = icmp sgt i32 %286, %288
  %290 = select i1 %289, i32 %288, i32 %286
  %291 = icmp slt i32 %290, %287
  %292 = select i1 %291, i32 %287, i32 %290
  store i32 %292, i32* @dec_ah1, align 4, !tbaa !8
  %293 = add nsw i32 %192, %201
  store i32 %293, i32* @rh, align 4, !tbaa !8
  store i32 %177, i32* @dec_rh2, align 4, !tbaa !8
  store i32 %293, i32* @dec_rh1, align 4, !tbaa !8
  store i32 %259, i32* @dec_ph2, align 4, !tbaa !8
  store i32 %223, i32* @dec_ph1, align 4, !tbaa !8
  %294 = sub nsw i32 %61, %293
  store i32 %294, i32* @xd, align 4, !tbaa !8
  %295 = add nsw i32 %293, %61
  store i32 %295, i32* @xs, align 4, !tbaa !8
  %296 = sext i32 %294 to i64
  %297 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 0), align 16, !tbaa !8
  %298 = sext i32 %297 to i64
  %299 = mul nsw i64 %298, %296
  %300 = sext i32 %295 to i64
  %301 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 1), align 4, !tbaa !8
  %302 = sext i32 %301 to i64
  %303 = mul nsw i64 %302, %300
  br label %304

304:                                              ; preds = %255, %304
  %305 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 0), %255 ], [ %319, %304 ]
  %306 = phi i32* [ getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 0), %255 ], [ %311, %304 ]
  %307 = phi i32* [ getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 2), %255 ], [ %322, %304 ]
  %308 = phi i64 [ %303, %255 ], [ %326, %304 ]
  %309 = phi i64 [ %299, %255 ], [ %318, %304 ]
  %310 = phi i32 [ 0, %255 ], [ %327, %304 ]
  %311 = getelementptr inbounds i32, i32* %306, i64 1
  %312 = load i32, i32* %306, align 4, !tbaa !8
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %307, i64 1
  %315 = load i32, i32* %307, align 4, !tbaa !8
  %316 = sext i32 %315 to i64
  %317 = mul nsw i64 %316, %313
  %318 = add nsw i64 %317, %309
  %319 = getelementptr inbounds i32, i32* %305, i64 1
  %320 = load i32, i32* %305, align 4, !tbaa !8
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %307, i64 2
  %323 = load i32, i32* %314, align 4, !tbaa !8
  %324 = sext i32 %323 to i64
  %325 = mul nsw i64 %324, %321
  %326 = add nsw i64 %325, %308
  %327 = add nuw nsw i32 %310, 1
  %328 = icmp eq i32 %327, 10
  br i1 %328, label %329, label %304, !llvm.loop !17

329:                                              ; preds = %304
  %330 = load i32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 10), align 8, !tbaa !8
  %331 = sext i32 %330 to i64
  %332 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 22), align 8, !tbaa !8
  %333 = sext i32 %332 to i64
  %334 = mul nsw i64 %333, %331
  %335 = add nsw i64 %334, %318
  %336 = load i32, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 10), align 8, !tbaa !8
  %337 = sext i32 %336 to i64
  %338 = load i32, i32* getelementptr inbounds ([24 x i32], [24 x i32]* @h, i64 0, i64 23), align 4, !tbaa !8
  %339 = sext i32 %338 to i64
  %340 = mul nsw i64 %339, %337
  %341 = add nsw i64 %340, %326
  %342 = lshr i64 %335, 14
  %343 = trunc i64 %342 to i32
  store i32 %343, i32* @xout1, align 4, !tbaa !8
  %344 = lshr i64 %341, 14
  %345 = trunc i64 %344 to i32
  store i32 %345, i32* @xout2, align 4, !tbaa !8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(40) bitcast (i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 1) to i8*), i8* noundef nonnull align 16 dereferenceable(40) bitcast ([11 x i32]* @accumc to i8*), i64 40, i1 false)
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(40) bitcast (i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 1) to i8*), i8* noundef nonnull align 16 dereferenceable(40) bitcast ([11 x i32]* @accumd to i8*), i64 40, i1 false)
  store i32 %294, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumc, i64 0, i64 0), align 16, !tbaa !8
  store i32 %295, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @accumd, i64 0, i64 0), align 16, !tbaa !8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable writeonly
define dso_local void @reset() local_unnamed_addr #7 {
  store i32 32, i32* @dec_detl, align 4, !tbaa !8
  store i32 32, i32* @detl, align 4, !tbaa !8
  store i32 8, i32* @dec_deth, align 4, !tbaa !8
  store i32 8, i32* @deth, align 4, !tbaa !8
  store i32 0, i32* @rlt2, align 4, !tbaa !8
  store i32 0, i32* @rlt1, align 4, !tbaa !8
  store i32 0, i32* @plt2, align 4, !tbaa !8
  store i32 0, i32* @plt1, align 4, !tbaa !8
  store i32 0, i32* @al2, align 4, !tbaa !8
  store i32 0, i32* @al1, align 4, !tbaa !8
  store i32 0, i32* @nbl, align 4, !tbaa !8
  store i32 0, i32* @rh2, align 4, !tbaa !8
  store i32 0, i32* @rh1, align 4, !tbaa !8
  store i32 0, i32* @ph2, align 4, !tbaa !8
  store i32 0, i32* @ph1, align 4, !tbaa !8
  store i32 0, i32* @ah2, align 4, !tbaa !8
  store i32 0, i32* @ah1, align 4, !tbaa !8
  store i32 0, i32* @nbh, align 4, !tbaa !8
  store i32 0, i32* @dec_rlt2, align 4, !tbaa !8
  store i32 0, i32* @dec_rlt1, align 4, !tbaa !8
  store i32 0, i32* @dec_plt2, align 4, !tbaa !8
  store i32 0, i32* @dec_plt1, align 4, !tbaa !8
  store i32 0, i32* @dec_al2, align 4, !tbaa !8
  store i32 0, i32* @dec_al1, align 4, !tbaa !8
  store i32 0, i32* @dec_nbl, align 4, !tbaa !8
  store i32 0, i32* @dec_rh2, align 4, !tbaa !8
  store i32 0, i32* @dec_rh1, align 4, !tbaa !8
  store i32 0, i32* @dec_ph2, align 4, !tbaa !8
  store i32 0, i32* @dec_ph1, align 4, !tbaa !8
  store i32 0, i32* @dec_ah2, align 4, !tbaa !8
  store i32 0, i32* @dec_ah1, align 4, !tbaa !8
  store i32 0, i32* @dec_nbh, align 4, !tbaa !8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_dltx to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_dhx to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_dltx to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_dhx to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_bpl to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_bph to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_bpl to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_bph to i8*), i8 0, i64 24, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(92) bitcast ([24 x i32]* @tqmf to i8*), i8 0, i64 92, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(44) bitcast ([11 x i32]* @accumc to i8*), i8 0, i64 44, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(44) bitcast ([11 x i32]* @accumd to i8*), i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  store i32 32, i32* @dec_detl, align 4, !tbaa !8
  store i32 32, i32* @detl, align 4, !tbaa !8
  store i32 8, i32* @dec_deth, align 4, !tbaa !8
  store i32 8, i32* @deth, align 4, !tbaa !8
  store i32 0, i32* @rlt2, align 4, !tbaa !8
  store i32 0, i32* @rlt1, align 4, !tbaa !8
  store i32 0, i32* @plt2, align 4, !tbaa !8
  store i32 0, i32* @plt1, align 4, !tbaa !8
  store i32 0, i32* @al2, align 4, !tbaa !8
  store i32 0, i32* @al1, align 4, !tbaa !8
  store i32 0, i32* @nbl, align 4, !tbaa !8
  store i32 0, i32* @rh2, align 4, !tbaa !8
  store i32 0, i32* @rh1, align 4, !tbaa !8
  store i32 0, i32* @ph2, align 4, !tbaa !8
  store i32 0, i32* @ph1, align 4, !tbaa !8
  store i32 0, i32* @ah2, align 4, !tbaa !8
  store i32 0, i32* @ah1, align 4, !tbaa !8
  store i32 0, i32* @nbh, align 4, !tbaa !8
  store i32 0, i32* @dec_rlt2, align 4, !tbaa !8
  store i32 0, i32* @dec_rlt1, align 4, !tbaa !8
  store i32 0, i32* @dec_plt2, align 4, !tbaa !8
  store i32 0, i32* @dec_plt1, align 4, !tbaa !8
  store i32 0, i32* @dec_al2, align 4, !tbaa !8
  store i32 0, i32* @dec_al1, align 4, !tbaa !8
  store i32 0, i32* @dec_nbl, align 4, !tbaa !8
  store i32 0, i32* @dec_rh2, align 4, !tbaa !8
  store i32 0, i32* @dec_rh1, align 4, !tbaa !8
  store i32 0, i32* @dec_ph2, align 4, !tbaa !8
  store i32 0, i32* @dec_ph1, align 4, !tbaa !8
  store i32 0, i32* @dec_ah2, align 4, !tbaa !8
  store i32 0, i32* @dec_ah1, align 4, !tbaa !8
  store i32 0, i32* @dec_nbh, align 4, !tbaa !8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_dltx to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_dhx to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_dltx to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_dhx to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_bpl to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @delay_bph to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_bpl to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(24) bitcast ([6 x i32]* @dec_del_bph to i8*), i8 0, i64 24, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(92) bitcast ([24 x i32]* @tqmf to i8*), i8 0, i64 92, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(44) bitcast ([11 x i32]* @accumc to i8*), i8 0, i64 44, i1 false) #11
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(44) bitcast ([11 x i32]* @accumd to i8*), i8 0, i64 44, i1 false) #11
  br label %1

1:                                                ; preds = %0, %37
  %2 = phi i64 [ 0, %0 ], [ %41, %37 ]
  %3 = mul nuw nsw i64 %2, 6282000
  %4 = sub nsw i64 1570, %3
  %5 = trunc i64 %4 to i32
  %6 = call i32 @llvm.smax.i32(i32 %5, i32 -6282) #11
  %7 = trunc i64 %3 to i32
  %8 = add i32 %7, -1570
  %9 = add i32 %8, %6
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = sub i32 %9, %11
  %13 = udiv i32 %12, 6282
  %14 = add nuw nsw i32 %13, %11
  %15 = mul i32 %14, 6282
  %16 = trunc i64 %4 to i32
  %17 = add i32 %15, %16
  %18 = mul i32 %17, %17
  %19 = sub i32 0, %18
  %20 = mul nsw i32 %17, %19
  %21 = sdiv i32 %20, 6
  %22 = add nsw i32 %21, %17
  %23 = add i32 %20, 5
  %24 = icmp ult i32 %23, 11
  br i1 %24, label %37, label %25

25:                                               ; preds = %1, %25
  %26 = phi i32 [ %35, %25 ], [ 2, %1 ]
  %27 = phi i32 [ %34, %25 ], [ %22, %1 ]
  %28 = phi i32 [ %33, %25 ], [ %21, %1 ]
  %29 = mul nsw i32 %28, %19
  %30 = shl nuw nsw i32 %26, 1
  %31 = or i32 %30, 1
  %32 = mul nsw i32 %31, %30
  %33 = sdiv i32 %29, %32
  %34 = add nsw i32 %33, %27
  %35 = add nuw nsw i32 %26, 1
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %25, !llvm.loop !5

37:                                               ; preds = %25, %1
  %38 = phi i32 [ %22, %1 ], [ %34, %25 ]
  %39 = mul nsw i32 %38, 10
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* @main.test_data, i64 0, i64 %2
  store i32 %39, i32* %40, align 4, !tbaa !8
  %41 = add nuw nsw i64 %2, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %1, !llvm.loop !18

43:                                               ; preds = %37, %43
  %44 = phi i64 [ %53, %43 ], [ 0, %37 ]
  %45 = getelementptr inbounds [6 x i32], [6 x i32]* @main.test_data, i64 0, i64 %44
  %46 = load i32, i32* %45, align 8, !tbaa !8
  %47 = or i64 %44, 1
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* @main.test_data, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !8
  %50 = call i32 @encode(i32 %46, i32 %49)
  %51 = lshr exact i64 %44, 1
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* @main.compressed, i64 0, i64 %51
  store i32 %50, i32* %52, align 4, !tbaa !8
  %53 = add nuw nsw i64 %44, 2
  %54 = icmp eq i64 %44, 0
  br i1 %54, label %43, label %55, !llvm.loop !19

55:                                               ; preds = %43, %55
  %56 = phi i64 [ %65, %55 ], [ 0, %43 ]
  %57 = lshr exact i64 %56, 1
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* @main.compressed, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !8
  call void @decode(i32 %59)
  %60 = load i32, i32* @xout1, align 4, !tbaa !8
  %61 = getelementptr inbounds [6 x i32], [6 x i32]* @main.result, i64 0, i64 %56
  store i32 %60, i32* %61, align 8, !tbaa !8
  %62 = load i32, i32* @xout2, align 4, !tbaa !8
  %63 = or i64 %56, 1
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* @main.result, i64 0, i64 %63
  store i32 %62, i32* %64, align 4, !tbaa !8
  %65 = add nuw nsw i64 %56, 2
  %66 = icmp eq i64 %56, 0
  br i1 %66, label %55, label %67, !llvm.loop !20

67:                                               ; preds = %55
  %68 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @main.result, i64 0, i64 4), align 16, !tbaa !8
  %69 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @main.result, i64 0, i64 5), align 4, !tbaa !8
  %70 = add nsw i32 %69, %68
  ret i32 %70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind readonly sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readonly sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind sspstrong uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
