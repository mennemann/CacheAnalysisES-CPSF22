; ModuleID = 'compress.c'
source_filename = "compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@maxbits = dso_local local_unnamed_addr global i32 16, align 4
@maxmaxcode = dso_local local_unnamed_addr global i64 65536, align 8
@hsize = dso_local local_unnamed_addr global i64 257, align 8
@free_ent = dso_local local_unnamed_addr global i64 0, align 8
@exit_stat = dso_local local_unnamed_addr global i32 0, align 4
@nomagic = dso_local local_unnamed_addr global i32 1, align 4
@zcat_flg = dso_local local_unnamed_addr global i32 0, align 4
@quiet = dso_local local_unnamed_addr global i32 1, align 4
@block_compress = dso_local local_unnamed_addr global i32 128, align 4
@clear_flg = dso_local local_unnamed_addr global i32 0, align 4
@ratio = dso_local local_unnamed_addr global i64 0, align 8
@checkpoint = dso_local local_unnamed_addr global i64 10000, align 8
@force = dso_local local_unnamed_addr global i32 0, align 4
@InCnt = dso_local local_unnamed_addr global i32 0, align 4
@apsim_InCnt = dso_local local_unnamed_addr global i32 0, align 4
@orig_text_buffer = dso_local global [50 x i8] zeroinitializer, align 16
@InBuff = dso_local local_unnamed_addr global i8* null, align 8
@comp_text_buffer = dso_local global [55 x i8] zeroinitializer, align 16
@OutBuff = dso_local local_unnamed_addr global i8* null, align 8
@in_count = dso_local local_unnamed_addr global i64 1, align 8
@out_count = dso_local local_unnamed_addr global i64 0, align 8
@offset = internal unnamed_addr global i32 0, align 4
@bytes_out = dso_local local_unnamed_addr global i64 0, align 8
@n_bits = dso_local local_unnamed_addr global i32 0, align 4
@maxcode = dso_local local_unnamed_addr global i64 0, align 8
@htab = dso_local local_unnamed_addr global [257 x i64] zeroinitializer, align 16
@codetab = dso_local local_unnamed_addr global [257 x i16] zeroinitializer, align 16
@lmask = dso_local local_unnamed_addr global [9 x i8] c"\FF\FE\FC\F8\F0\E0\C0\80\00", align 1
@rmask = dso_local local_unnamed_addr global [9 x i8] c"\00\01\03\07\0F\1F?\7F\FF", align 1
@buf = dso_local global [16 x i8] zeroinitializer, align 16
@fsize = dso_local local_unnamed_addr global i64 0, align 8
@ofname = dso_local local_unnamed_addr global [100 x i8] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i32 [ 1, %0 ], [ %6, %1 ]
  %4 = mul nsw i32 %3, 133
  %5 = add nsw i32 %4, 81
  %6 = srem i32 %5, 8095
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* @orig_text_buffer, i64 0, i64 %2
  store i8 %7, i8* %8, align 1, !tbaa !5
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 50
  br i1 %10, label %11, label %1, !llvm.loop !8

11:                                               ; preds = %1
  store i32 16, i32* @maxbits, align 4, !tbaa !11
  store i64 65536, i64* @maxmaxcode, align 8, !tbaa !13
  store i32 50, i32* @InCnt, align 4, !tbaa !11
  store i32 53, i32* @apsim_InCnt, align 4, !tbaa !11
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @orig_text_buffer, i64 0, i64 0), i8** @InBuff, align 8, !tbaa !15
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @comp_text_buffer, i64 0, i64 0), i8** @OutBuff, align 8, !tbaa !15
  call void @compress()
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable writeonly
define dso_local void @initbuffer() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i64 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i32 [ 1, %0 ], [ %6, %1 ]
  %4 = mul nsw i32 %3, 133
  %5 = add nsw i32 %4, 81
  %6 = srem i32 %5, 8095
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds [50 x i8], [50 x i8]* @orig_text_buffer, i64 0, i64 %2
  store i8 %7, i8* %8, align 1, !tbaa !5
  %9 = add nuw nsw i64 %2, 1
  %10 = icmp eq i64 %9, 50
  br i1 %10, label %11, label %1, !llvm.loop !8

11:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @compress() local_unnamed_addr #0 {
  store i32 0, i32* @offset, align 4, !tbaa !11
  store i64 3, i64* @bytes_out, align 8, !tbaa !13
  store i64 0, i64* @out_count, align 8, !tbaa !13
  store i32 0, i32* @clear_flg, align 4, !tbaa !11
  store i64 0, i64* @ratio, align 8, !tbaa !13
  store i64 1, i64* @in_count, align 8, !tbaa !13
  store i64 10000, i64* @checkpoint, align 8, !tbaa !13
  store i32 9, i32* @n_bits, align 4, !tbaa !11
  store i64 511, i64* @maxcode, align 8, !tbaa !13
  %1 = load i32, i32* @block_compress, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i64 256, i64 257
  store i64 %3, i64* @free_ent, align 8, !tbaa !13
  %4 = load i32, i32* @InCnt, align 4, !tbaa !11
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i32, i32* @apsim_InCnt, align 4, !tbaa !11
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* @apsim_InCnt, align 4, !tbaa !11
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = add nsw i32 %4, -1
  store i32 %11, i32* @InCnt, align 4, !tbaa !11
  %12 = load i8*, i8** @InBuff, align 8, !tbaa !15
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** @InBuff, align 8, !tbaa !15
  %14 = load i8, i8* %12, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  br label %16

16:                                               ; preds = %0, %6, %10
  %17 = phi i64 [ %15, %10 ], [ 4294967295, %6 ], [ 4294967295, %0 ]
  %18 = load i64, i64* @hsize, align 8, !tbaa !13
  %19 = icmp slt i64 %18, 65536
  br i1 %19, label %20, label %28

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %23, %20 ], [ 0, %16 ]
  %22 = phi i64 [ %24, %20 ], [ %18, %16 ]
  %23 = add nuw nsw i32 %21, 1
  %24 = shl nsw i64 %22, 1
  %25 = icmp slt i64 %22, 32768
  br i1 %25, label %20, label %26, !llvm.loop !17

26:                                               ; preds = %20
  %27 = sub nsw i32 7, %21
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi i32 [ 8, %16 ], [ %27, %26 ]
  %30 = add i64 %18, -16
  %31 = add i64 %18, 15
  %32 = call i64 @llvm.smin.i64(i64 %18, i64 31) #6
  %33 = sub i64 %31, %32
  %34 = and i64 %33, -16
  %35 = sub i64 %30, %34
  %36 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %35
  %37 = bitcast i64* %36 to i8*
  %38 = shl nuw i64 %33, 3
  %39 = add i64 %38, 128
  %40 = and i64 %39, -128
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 -1, i64 %40, i1 false) #6
  %41 = sub i64 %18, %34
  %42 = icmp sgt i64 %41, 16
  br i1 %42, label %43, label %52

43:                                               ; preds = %28
  %44 = call i64 @llvm.smin.i64(i64 %35, i64 1) #6
  %45 = add i64 %44, -1
  %46 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %45
  %47 = bitcast i64* %46 to i8*
  %48 = add i64 %18, -15
  %49 = add i64 %34, %44
  %50 = sub i64 %48, %49
  %51 = shl nuw i64 %50, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 -1, i64 %51, i1 false) #6
  br label %52

52:                                               ; preds = %28, %43
  %53 = load i32, i32* @InCnt, align 4, !tbaa !11
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %178

55:                                               ; preds = %52, %174
  %56 = phi i32 [ %176, %174 ], [ %53, %52 ]
  %57 = phi i64 [ %175, %174 ], [ %17, %52 ]
  %58 = load i32, i32* @apsim_InCnt, align 4, !tbaa !11
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* @apsim_InCnt, align 4, !tbaa !11
  %60 = icmp sgt i32 %58, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = add nsw i32 %56, -1
  store i32 %62, i32* @InCnt, align 4, !tbaa !11
  %63 = load i8*, i8** @InBuff, align 8, !tbaa !15
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** @InBuff, align 8, !tbaa !15
  %65 = load i8, i8* %63, align 1, !tbaa !5
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %55, %61
  %68 = phi i32 [ %66, %61 ], [ -1, %55 ]
  %69 = load i64, i64* @in_count, align 8, !tbaa !13
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* @in_count, align 8, !tbaa !13
  %71 = sext i32 %68 to i64
  %72 = load i32, i32* @maxbits, align 4, !tbaa !11
  %73 = zext i32 %72 to i64
  %74 = shl i64 %71, %73
  %75 = add nsw i64 %74, %57
  %76 = shl i32 %68, %29
  %77 = sext i32 %76 to i64
  %78 = xor i64 %57, %77
  %79 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8, !tbaa !13
  %81 = icmp eq i64 %80, %75
  br i1 %81, label %82, label %86

82:                                               ; preds = %67
  %83 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %78
  %84 = load i16, i16* %83, align 2, !tbaa !18
  %85 = zext i16 %84 to i64
  br label %174, !llvm.loop !20

86:                                               ; preds = %67
  %87 = icmp slt i64 %80, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %86
  %89 = sub nsw i64 %18, %78
  %90 = icmp eq i64 %78, 0
  %91 = shl i64 %89, 32
  %92 = ashr exact i64 %91, 32
  %93 = select i1 %90, i64 1, i64 %92
  br label %94

94:                                               ; preds = %108, %88
  %95 = phi i64 [ 0, %88 ], [ %110, %108 ]
  %96 = phi i64 [ %78, %88 ], [ %100, %108 ]
  %97 = sub nsw i64 %96, %93
  %98 = icmp slt i64 %97, 0
  %99 = select i1 %98, i64 %18, i64 0
  %100 = add nsw i64 %99, %97
  %101 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %100
  %102 = load i64, i64* %101, align 8, !tbaa !13
  %103 = icmp eq i64 %102, %75
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %100
  %106 = load i16, i16* %105, align 2, !tbaa !18
  %107 = zext i16 %106 to i64
  br label %174, !llvm.loop !20

108:                                              ; preds = %94
  %109 = icmp slt i64 %102, 1
  %110 = add nuw i64 %95, 1
  %111 = icmp slt i64 %69, %110
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %113, label %94

113:                                              ; preds = %108, %86
  %114 = phi i64 [ %78, %86 ], [ %100, %108 ]
  %115 = load i64, i64* @out_count, align 8, !tbaa !13
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* @out_count, align 8, !tbaa !13
  %117 = load i64, i64* @free_ent, align 8, !tbaa !13
  %118 = load i64, i64* @maxmaxcode, align 8, !tbaa !13
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = add nsw i64 %117, 1
  store i64 %121, i64* @free_ent, align 8, !tbaa !13
  %122 = trunc i64 %117 to i16
  %123 = getelementptr inbounds [257 x i16], [257 x i16]* @codetab, i64 0, i64 %114
  store i16 %122, i16* %123, align 2, !tbaa !18
  %124 = getelementptr inbounds [257 x i64], [257 x i64]* @htab, i64 0, i64 %114
  store i64 %75, i64* %124, align 8, !tbaa !13
  br label %174

125:                                              ; preds = %113
  %126 = load i64, i64* @checkpoint, align 8, !tbaa !13
  %127 = icmp sge i64 %70, %126
  %128 = load i32, i32* @block_compress, align 4
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %174

131:                                              ; preds = %125
  %132 = add nsw i64 %69, 10001
  store i64 %132, i64* @checkpoint, align 8, !tbaa !13
  %133 = icmp sgt i64 %69, 8388606
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %136 = icmp ult i64 %135, 256
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = ashr i64 %135, 8
  %139 = sdiv i64 %70, %138
  br label %144

140:                                              ; preds = %131
  %141 = shl i64 %70, 8
  %142 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %143 = sdiv i64 %141, %142
  br label %144

144:                                              ; preds = %140, %137, %134
  %145 = phi i64 [ %139, %137 ], [ %143, %140 ], [ 2147483647, %134 ]
  %146 = load i64, i64* @ratio, align 8, !tbaa !13
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i64 %145, i64* @ratio, align 8, !tbaa !13
  br label %174

149:                                              ; preds = %144
  store i64 0, i64* @ratio, align 8, !tbaa !13
  %150 = load i64, i64* @hsize, align 8, !tbaa !13
  %151 = add i64 %150, -16
  %152 = add i64 %150, 15
  %153 = call i64 @llvm.smin.i64(i64 %150, i64 31) #6
  %154 = sub i64 %152, %153
  %155 = and i64 %154, -16
  %156 = sub i64 %151, %155
  %157 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %156
  %158 = bitcast i64* %157 to i8*
  %159 = shl nuw i64 %154, 3
  %160 = add i64 %159, 128
  %161 = and i64 %160, -128
  call void @llvm.memset.p0i8.i64(i8* align 8 %158, i8 -1, i64 %161, i1 false) #6
  %162 = sub i64 %150, %155
  %163 = icmp sgt i64 %162, 16
  br i1 %163, label %164, label %173

164:                                              ; preds = %149
  %165 = call i64 @llvm.smin.i64(i64 %156, i64 1) #6
  %166 = add i64 %165, -1
  %167 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %166
  %168 = bitcast i64* %167 to i8*
  %169 = add i64 %150, -15
  %170 = add i64 %155, %165
  %171 = sub i64 %169, %170
  %172 = shl nuw i64 %171, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %168, i8 -1, i64 %172, i1 false) #6
  br label %173

173:                                              ; preds = %164, %149
  store i64 257, i64* @free_ent, align 8, !tbaa !13
  store i32 1, i32* @clear_flg, align 4, !tbaa !11
  call void @output(i64 256) #6
  br label %174

174:                                              ; preds = %173, %148, %120, %125, %104, %82
  %175 = phi i64 [ %85, %82 ], [ %107, %104 ], [ %71, %125 ], [ %71, %120 ], [ %71, %148 ], [ %71, %173 ]
  %176 = load i32, i32* @InCnt, align 4, !tbaa !11
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %55, label %178, !llvm.loop !20

178:                                              ; preds = %174, %52
  %179 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %180 = load i64, i64* @in_count, align 8, !tbaa !13
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 2, i32* @exit_stat, align 4, !tbaa !11
  br label %183

183:                                              ; preds = %182, %178
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local i32 @getbyte() local_unnamed_addr #2 {
  %1 = load i32, i32* @InCnt, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, i32* @apsim_InCnt, align 4, !tbaa !11
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @apsim_InCnt, align 4, !tbaa !11
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = add nsw i32 %1, -1
  store i32 %8, i32* @InCnt, align 4, !tbaa !11
  %9 = load i8*, i8** @InBuff, align 8, !tbaa !15
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %10, i8** @InBuff, align 8, !tbaa !15
  %11 = load i8, i8* %9, align 1, !tbaa !5
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %0, %3, %7
  %14 = phi i32 [ %12, %7 ], [ -1, %3 ], [ -1, %0 ]
  ret i32 %14
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable writeonly
define dso_local void @cl_hash(i64 %0) local_unnamed_addr #1 {
  %2 = add i64 %0, -16
  %3 = add i64 %0, 15
  %4 = call i64 @llvm.smin.i64(i64 %0, i64 31)
  %5 = sub i64 %3, %4
  %6 = and i64 %5, -16
  %7 = sub i64 %2, %6
  %8 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %7
  %9 = bitcast i64* %8 to i8*
  %10 = shl nuw i64 %5, 3
  %11 = add i64 %10, 128
  %12 = and i64 %11, -128
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 -1, i64 %12, i1 false)
  %13 = add i64 %0, 15
  %14 = call i64 @llvm.smin.i64(i64 %0, i64 31)
  %15 = sub i64 %13, %14
  %16 = and i64 %15, -16
  %17 = sub i64 %0, %16
  %18 = icmp sgt i64 %17, 16
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = add i64 %0, -16
  %21 = sub i64 %20, %16
  %22 = call i64 @llvm.smin.i64(i64 %21, i64 1)
  %23 = add i64 %22, -1
  %24 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %23
  %25 = bitcast i64* %24 to i8*
  %26 = add i64 %0, -15
  %27 = add i64 %22, %16
  %28 = sub i64 %26, %27
  %29 = shl nuw i64 %28, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 -1, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @cl_block() local_unnamed_addr #0 {
  %1 = load i64, i64* @in_count, align 8, !tbaa !13
  %2 = add nsw i64 %1, 10000
  store i64 %2, i64* @checkpoint, align 8, !tbaa !13
  %3 = icmp sgt i64 %1, 8388607
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %6 = icmp ult i64 %5, 256
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = ashr i64 %5, 8
  %9 = sdiv i64 %1, %8
  br label %14

10:                                               ; preds = %0
  %11 = shl i64 %1, 8
  %12 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %13 = sdiv i64 %11, %12
  br label %14

14:                                               ; preds = %4, %7, %10
  %15 = phi i64 [ %9, %7 ], [ %13, %10 ], [ 2147483647, %4 ]
  %16 = load i64, i64* @ratio, align 8, !tbaa !13
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 %15, i64* @ratio, align 8, !tbaa !13
  br label %44

19:                                               ; preds = %14
  store i64 0, i64* @ratio, align 8, !tbaa !13
  %20 = load i64, i64* @hsize, align 8, !tbaa !13
  %21 = add i64 %20, -16
  %22 = add i64 %20, 15
  %23 = call i64 @llvm.smin.i64(i64 %20, i64 31) #6
  %24 = sub i64 %22, %23
  %25 = and i64 %24, -16
  %26 = sub i64 %21, %25
  %27 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %26
  %28 = bitcast i64* %27 to i8*
  %29 = shl nuw i64 %24, 3
  %30 = add i64 %29, 128
  %31 = and i64 %30, -128
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 -1, i64 %31, i1 false) #6
  %32 = sub i64 %20, %25
  %33 = icmp sgt i64 %32, 16
  br i1 %33, label %34, label %43

34:                                               ; preds = %19
  %35 = call i64 @llvm.smin.i64(i64 %26, i64 1) #6
  %36 = add i64 %35, -1
  %37 = getelementptr [257 x i64], [257 x i64]* @htab, i64 0, i64 %36
  %38 = bitcast i64* %37 to i8*
  %39 = add i64 %20, -15
  %40 = add i64 %25, %35
  %41 = sub i64 %39, %40
  %42 = shl nuw i64 %41, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %38, i8 -1, i64 %42, i1 false) #6
  br label %43

43:                                               ; preds = %19, %34
  store i64 257, i64* @free_ent, align 8, !tbaa !13
  store i32 1, i32* @clear_flg, align 4, !tbaa !11
  call void @output(i64 256)
  br label %44

44:                                               ; preds = %43, %18
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @output(i64 %0) local_unnamed_addr #0 {
  %2 = load i32, i32* @offset, align 4, !tbaa !11
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %4, label %105

4:                                                ; preds = %1
  %5 = load i32, i32* @n_bits, align 4, !tbaa !11
  %6 = ashr i32 %2, 3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* @buf, i64 0, i64 %7
  %9 = and i32 %2, 7
  %10 = load i8, i8* %8, align 1, !tbaa !5
  %11 = zext i32 %9 to i64
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* @rmask, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %14 = and i8 %13, %10
  %15 = shl i64 %0, %11
  %16 = getelementptr inbounds [9 x i8], [9 x i8]* @lmask, i64 0, i64 %11
  %17 = load i8, i8* %16, align 1, !tbaa !5
  %18 = trunc i64 %15 to i8
  %19 = or i8 %14, %18
  %20 = and i8 %19, %17
  store i8 %20, i8* %8, align 1, !tbaa !5
  %21 = getelementptr inbounds i8, i8* %8, i64 1
  %22 = sub nuw nsw i32 8, %9
  %23 = sub nsw i32 %5, %22
  %24 = zext i32 %22 to i64
  %25 = ashr i64 %0, %24
  %26 = icmp sgt i32 %23, 7
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = trunc i64 %25 to i8
  %29 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %28, i8* %21, align 1, !tbaa !5
  %30 = ashr i64 %25, 8
  %31 = add nsw i32 %23, -8
  br label %32

32:                                               ; preds = %27, %4
  %33 = phi i64 [ %30, %27 ], [ %25, %4 ]
  %34 = phi i32 [ %31, %27 ], [ %23, %4 ]
  %35 = phi i8* [ %29, %27 ], [ %21, %4 ]
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = trunc i64 %33 to i8
  store i8 %38, i8* %35, align 1, !tbaa !5
  br label %39

39:                                               ; preds = %37, %32
  %40 = add nsw i32 %5, %2
  store i32 %40, i32* @offset, align 4, !tbaa !11
  %41 = shl i32 %5, 3
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = sext i32 %5 to i64
  %45 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* @bytes_out, align 8, !tbaa !13
  %47 = add i32 %5, -1
  %48 = call i32 @llvm.umin.i32(i32 %47, i32 15)
  %49 = zext i32 %48 to i64
  %50 = getelementptr [16 x i8], [16 x i8]* @buf, i64 0, i64 %49
  br label %51

51:                                               ; preds = %51, %43
  %52 = phi i8* [ getelementptr inbounds ([16 x i8], [16 x i8]* @buf, i64 0, i64 0), %43 ], [ %53, %51 ]
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %52, align 1, !tbaa !5
  %55 = load i8*, i8** @OutBuff, align 8, !tbaa !15
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** @OutBuff, align 8, !tbaa !15
  store i8 %54, i8* %55, align 1, !tbaa !5
  %57 = icmp eq i8* %52, %50
  br i1 %57, label %58, label %51, !llvm.loop !21

58:                                               ; preds = %51
  store i32 0, i32* @offset, align 4, !tbaa !11
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i64, i64* @free_ent, align 8, !tbaa !13
  %61 = load i64, i64* @maxcode, align 8, !tbaa !13
  %62 = icmp sgt i64 %60, %61
  %63 = load i32, i32* @clear_flg, align 4
  %64 = icmp sgt i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %66, label %128

66:                                               ; preds = %59
  %67 = load i32, i32* @offset, align 4, !tbaa !11
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load i32, i32* @n_bits, align 4, !tbaa !11
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = add i32 %70, -1
  %74 = call i32 @llvm.umin.i32(i32 %73, i32 15) #6
  %75 = add nuw nsw i32 %74, 1
  %76 = zext i32 %75 to i64
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi i64 [ 0, %72 ], [ %83, %77 ]
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* @buf, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1, !tbaa !5
  %81 = load i8*, i8** @OutBuff, align 8, !tbaa !15
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** @OutBuff, align 8, !tbaa !15
  store i8 %80, i8* %81, align 1, !tbaa !5
  %83 = add nuw nsw i64 %78, 1
  %84 = icmp eq i64 %83, %76
  br i1 %84, label %85, label %77, !llvm.loop !22

85:                                               ; preds = %77, %69
  %86 = load i32, i32* @n_bits, align 4, !tbaa !11
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* @bytes_out, align 8, !tbaa !13
  br label %90

90:                                               ; preds = %85, %66
  store i32 0, i32* @offset, align 4, !tbaa !11
  %91 = load i32, i32* @clear_flg, align 4, !tbaa !11
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i32 9, i32* @n_bits, align 4, !tbaa !11
  store i64 511, i64* @maxcode, align 8, !tbaa !13
  store i32 0, i32* @clear_flg, align 4, !tbaa !11
  br label %128

94:                                               ; preds = %90
  %95 = load i32, i32* @n_bits, align 4, !tbaa !11
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @n_bits, align 4, !tbaa !11
  %97 = load i32, i32* @maxbits, align 4, !tbaa !11
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* @maxmaxcode, align 8, !tbaa !13
  store i64 %100, i64* @maxcode, align 8, !tbaa !13
  br label %128

101:                                              ; preds = %94
  %102 = shl nsw i32 -1, %96
  %103 = xor i32 %102, -1
  %104 = sext i32 %103 to i64
  store i64 %104, i64* @maxcode, align 8, !tbaa !13
  br label %128

105:                                              ; preds = %1
  %106 = icmp sgt i32 %2, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %105
  %108 = add nsw i32 %2, 7
  %109 = sdiv i32 %108, 8
  %110 = add nsw i32 %109, -1
  %111 = call i32 @llvm.umin.i32(i32 %110, i32 15) #6
  %112 = add nuw nsw i32 %111, 1
  %113 = zext i32 %112 to i64
  br label %114

114:                                              ; preds = %114, %107
  %115 = phi i64 [ 0, %107 ], [ %120, %114 ]
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* @buf, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1, !tbaa !5
  %118 = load i8*, i8** @OutBuff, align 8, !tbaa !15
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** @OutBuff, align 8, !tbaa !15
  store i8 %117, i8* %118, align 1, !tbaa !5
  %120 = add nuw nsw i64 %115, 1
  %121 = icmp eq i64 %120, %113
  br i1 %121, label %122, label %114, !llvm.loop !22

122:                                              ; preds = %114, %105
  %123 = add nsw i32 %2, 7
  %124 = sdiv i32 %123, 8
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* @bytes_out, align 8, !tbaa !13
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* @bytes_out, align 8, !tbaa !13
  store i32 0, i32* @offset, align 4, !tbaa !11
  br label %128

128:                                              ; preds = %59, %99, %101, %93, %122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local void @putbyte(i8 signext %0) local_unnamed_addr #2 {
  %2 = load i8*, i8** @OutBuff, align 8, !tbaa !15
  %3 = getelementptr inbounds i8, i8* %2, i64 1
  store i8* %3, i8** @OutBuff, align 8, !tbaa !15
  store i8 %0, i8* %2, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @writebytes(i8* nocapture readonly %0, i32 %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 15)
  %7 = add nuw nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  br label %9

9:                                                ; preds = %4, %9
  %10 = phi i64 [ 0, %4 ], [ %15, %9 ]
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %13 = load i8*, i8** @OutBuff, align 8, !tbaa !15
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %14, i8** @OutBuff, align 8, !tbaa !15
  store i8 %12, i8* %13, align 1, !tbaa !5
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !22

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = distinct !{!17, !9, !10}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !9, !10}
