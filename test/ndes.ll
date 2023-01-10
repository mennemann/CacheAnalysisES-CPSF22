; ModuleID = 'ndes.c'
source_filename = "ndes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GREAT = type { i64, i64, i64 }
%struct.IMMENSE = type { i64, i64 }

@des.ip = internal unnamed_addr constant [65 x i8] c"\00:2*\22\1A\12\0A\02<4,$\1C\14\0C\04>6.&\1E\16\0E\06@80( \18\10\0891)!\19\11\09\01;3+#\1B\13\0B\03=5-%\1D\15\0D\05?7/'\1F\17\0F\07", align 16
@des.ipm = internal unnamed_addr constant [65 x i8] c"\00(\080\108\18@ '\07/\0F7\17?\1F&\06.\0E6\16>\1E%\05-\0D5\15=\1D$\04,\0C4\14<\1C#\03+\0B3\13;\1B\22\02*\0A2\12:\1A!\01)\091\119\19", align 16
@des.kns = internal global [17 x %struct.GREAT] zeroinitializer, align 16
@des.initflag = internal unnamed_addr global i1 false, align 4
@bit = dso_local local_unnamed_addr global [33 x i64] zeroinitializer, align 16
@icd = internal unnamed_addr global %struct.IMMENSE zeroinitializer, align 8
@ipc1 = internal unnamed_addr constant [57 x i8] c"\0091)!\19\11\09\01:2*\22\1A\12\0A\02;3+#\1B\13\0B\03<4,$?7/'\1F\17\0F\07>6.&\1E\16\0E\06=5-%\1D\15\0D\05\1C\14\0C\04", align 16
@ipc2 = internal unnamed_addr constant [49 x i8] c"\00\0E\11\0B\18\01\05\03\1C\0F\06\15\0A\17\13\0C\04\1A\08\10\07\1B\14\0D\02)4\1F%/7\1E(3-!0,1'8\225.*2$\1D ", align 16
@cyfun.iet = internal unnamed_addr constant [49 x i32] [i32 0, i32 32, i32 1, i32 2, i32 3, i32 4, i32 5, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 28, i32 29, i32 30, i32 31, i32 32, i32 1], align 16
@cyfun.ipp = internal unnamed_addr constant [33 x i32] [i32 0, i32 16, i32 7, i32 20, i32 21, i32 29, i32 12, i32 28, i32 17, i32 1, i32 15, i32 23, i32 26, i32 5, i32 18, i32 31, i32 10, i32 2, i32 8, i32 24, i32 14, i32 32, i32 27, i32 3, i32 9, i32 19, i32 13, i32 30, i32 6, i32 22, i32 11, i32 4, i32 25], align 16
@cyfun.is = internal unnamed_addr constant [16 x [4 x [9 x i8]]] [[4 x [9 x i8]] [[9 x i8] c"\00\0E\0F\0A\07\02\0C\04\0D", [9 x i8] c"\00\00\03\0D\0D\0E\0A\0D\01", [9 x i8] c"\00\04\00\0D\0A\04\09\01\07", [9 x i8] c"\00\0F\0D\01\03\0B\04\06\02"], [4 x [9 x i8]] [[9 x i8] c"\00\04\01\00\0D\0C\01\0B\02", [9 x i8] c"\00\0F\0D\07\08\0B\0F\00\0F", [9 x i8] c"\00\01\0E\06\06\02\0E\04\0B", [9 x i8] c"\00\0C\08\0A\0F\08\03\0B\01"], [4 x [9 x i8]] [[9 x i8] c"\00\0D\08\09\0E\04\0A\02\08", [9 x i8] c"\00\07\04\00\0B\02\04\0B\0D", [9 x i8] c"\00\0E\07\04\09\01\0F\0B\04", [9 x i8] c"\00\08\0A\0D\00\0C\02\0D\0E"], [4 x [9 x i8]] [[9 x i8] c"\00\01\0E\0E\03\01\0F\0E\04", [9 x i8] c"\00\04\07\09\05\0C\02\07\08", [9 x i8] c"\00\08\0B\09\00\0B\05\0D\01", [9 x i8] c"\00\02\01\00\06\07\0C\08\07"], [4 x [9 x i8]] [[9 x i8] c"\00\02\06\06\00\07\09\0F\06", [9 x i8] c"\00\0E\0F\03\06\04\07\04\0A", [9 x i8] c"\00\0D\0A\08\0C\0A\02\0C\09", [9 x i8] c"\00\04\03\06\0A\01\09\01\04"], [4 x [9 x i8]] [[9 x i8] c"\00\0F\0B\03\06\0A\02\00\0F", [9 x i8] c"\00\02\02\04\0F\07\0C\09\03", [9 x i8] c"\00\06\04\0F\0B\0D\08\03\0C", [9 x i8] c"\00\09\0F\09\01\0E\05\04\0A"], [4 x [9 x i8]] [[9 x i8] c"\00\0B\03\0F\09\0B\06\08\0B", [9 x i8] c"\00\0D\08\06\00\0D\09\01\07", [9 x i8] c"\00\02\0D\03\07\07\0C\07\0E", [9 x i8] c"\00\01\04\08\0D\02\0F\0A\08"], [4 x [9 x i8]] [[9 x i8] c"\00\08\04\05\0A\06\08\0D\01", [9 x i8] c"\00\01\0E\0A\03\01\05\0A\04", [9 x i8] c"\00\0B\01\00\0D\08\03\0E\02", [9 x i8] c"\00\07\02\07\08\0D\0A\07\0D"], [4 x [9 x i8]] [[9 x i8] c"\00\03\09\01\01\08\00\03\0A", [9 x i8] c"\00\0A\0C\02\04\05\06\0E\0C", [9 x i8] c"\00\0F\05\0B\0F\0F\07\0A\00", [9 x i8] c"\00\05\0B\04\09\06\0B\09\0F"], [4 x [9 x i8]] [[9 x i8] c"\00\0A\07\0D\02\05\0D\0C\09", [9 x i8] c"\00\06\00\08\07\00\01\03\05", [9 x i8] c"\00\0C\08\01\01\09\00\0F\06", [9 x i8] c"\00\0B\06\0F\04\0F\0E\05\0C"], [4 x [9 x i8]] [[9 x i8] c"\00\06\02\0C\08\03\03\09\03", [9 x i8] c"\00\0C\01\05\02\0F\0D\05\06", [9 x i8] c"\00\09\0C\02\03\0C\04\06\0A", [9 x i8] c"\00\03\07\0E\05\00\01\00\09"], [4 x [9 x i8]] [[9 x i8] c"\00\0C\0D\07\05\0F\04\07\0E", [9 x i8] c"\00\0B\0A\0E\0C\0A\0E\0C\0B", [9 x i8] c"\00\07\06\0C\0E\05\0A\08\0D", [9 x i8] c"\00\0E\0C\03\0B\09\07\0F\00"], [4 x [9 x i8]] [[9 x i8] c"\00\05\0C\0B\0B\0D\0E\05\05", [9 x i8] c"\00\09\06\0C\01\03\00\02\00", [9 x i8] c"\00\03\09\05\05\06\01\00\0F", [9 x i8] c"\00\0A\00\0B\0C\0A\06\0E\03"], [4 x [9 x i8]] [[9 x i8] c"\00\09\00\04\0C\00\07\0A\00", [9 x i8] c"\00\05\09\0B\0A\09\0B\0F\0E", [9 x i8] c"\00\0A\03\0A\02\03\0D\05\03", [9 x i8] c"\00\00\05\05\07\04\00\02\05"], [4 x [9 x i8]] [[9 x i8] c"\00\00\05\02\04\0E\05\06\0C", [9 x i8] c"\00\03\0B\0F\0E\08\03\08\09", [9 x i8] c"\00\05\02\0E\08\00\0B\09\05", [9 x i8] c"\00\06\0E\02\02\05\08\03\06"], [4 x [9 x i8]] [[9 x i8] c"\00\07\0A\08\0F\09\0B\01\07", [9 x i8] c"\00\08\05\01\09\06\08\06\02", [9 x i8] c"\00\00\0F\07\04\0E\06\02\08", [9 x i8] c"\00\0D\09\0C\0E\03\0D\0C\0B"]], align 16
@cyfun.ibin = internal unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 16
@value = dso_local local_unnamed_addr global i32 1, align 4

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @des(i64 %0, i64 %1, i64 %2, i64 %3, i32* nocapture %4, i32 %5, %struct.IMMENSE* nocapture %6) local_unnamed_addr #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.GREAT, align 8
  %10 = bitcast i64* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #6
  %11 = bitcast %struct.GREAT* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #6
  %12 = load i1, i1* @des.initflag, align 4
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  store i1 true, i1* @des.initflag, align 4
  store i64 1, i64* getelementptr inbounds ([33 x i64], [33 x i64]* @bit, i64 0, i64 1), align 8, !tbaa !5
  br label %14

14:                                               ; preds = %13, %14
  %15 = phi i64 [ 2, %13 ], [ %19, %14 ]
  %16 = phi i64 [ 1, %13 ], [ %17, %14 ]
  %17 = shl i64 %16, 1
  %18 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %15
  store i64 %17, i64* %18, align 8, !tbaa !5
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, 33
  br i1 %20, label %21, label %14, !llvm.loop !9

21:                                               ; preds = %14, %7
  %22 = load i32, i32* %4, align 4, !tbaa !12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %67, %21
  br label %76

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4, !tbaa !12
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.IMMENSE* @icd to i8*), i8 0, i64 16, i1 false)
  br label %27

26:                                               ; preds = %27
  store i64 %47, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 1), align 8, !tbaa !14
  store i64 %63, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 0), align 8, !tbaa !16
  br label %67

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 28, %25 ], [ %64, %27 ]
  %29 = phi i64 [ 56, %25 ], [ %65, %27 ]
  %30 = phi i64 [ 0, %25 ], [ %47, %27 ]
  %31 = phi i64 [ 0, %25 ], [ %63, %27 ]
  %32 = shl i64 %30, 1
  %33 = getelementptr inbounds [57 x i8], [57 x i8]* @ipc1, i64 0, i64 %28
  %34 = load i8, i8* %33, align 1, !tbaa !17
  %35 = lshr i64 529835723988510, %28
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %36, 0
  %38 = sext i8 %34 to i64
  %39 = add nsw i64 %38, -32
  %40 = select i1 %37, i64 %38, i64 %39
  %41 = select i1 %37, i64 %3, i64 %2
  %42 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %40
  %43 = load i64, i64* %42, align 8, !tbaa !5
  %44 = and i64 %43, %41
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = or i64 %32, %46
  %48 = shl i64 %31, 1
  %49 = getelementptr inbounds [57 x i8], [57 x i8]* @ipc1, i64 0, i64 %29
  %50 = load i8, i8* %49, align 1, !tbaa !17
  %51 = lshr i64 529835723988510, %29
  %52 = and i64 %51, 1
  %53 = icmp eq i64 %52, 0
  %54 = sext i8 %50 to i64
  %55 = add nsw i64 %54, -32
  %56 = select i1 %53, i64 %54, i64 %55
  %57 = select i1 %53, i64 %3, i64 %2
  %58 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %56
  %59 = load i64, i64* %58, align 8, !tbaa !5
  %60 = and i64 %59, %57
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = or i64 %48, %62
  %64 = add nsw i64 %28, -1
  %65 = add nsw i64 %29, -1
  %66 = icmp ugt i64 %28, 1
  br i1 %66, label %27, label %26, !llvm.loop !18

67:                                               ; preds = %26, %67
  %68 = phi i64 [ 1, %26 ], [ %72, %67 ]
  %69 = getelementptr inbounds [17 x %struct.GREAT], [17 x %struct.GREAT]* @des.kns, i64 0, i64 %68
  %70 = bitcast %struct.GREAT* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %11, i8* noundef nonnull align 8 dereferenceable(24) %70, i64 24, i1 false), !tbaa.struct !19
  %71 = trunc i64 %68 to i32
  call void @ks(i32 %71, %struct.GREAT* nonnull %9)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %70, i8* noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !19
  %72 = add nuw nsw i64 %68, 1
  %73 = icmp eq i64 %72, 17
  br i1 %73, label %24, label %67, !llvm.loop !20

74:                                               ; preds = %76
  %75 = icmp eq i32 %5, 1
  br label %112

76:                                               ; preds = %24, %76
  %77 = phi i64 [ %109, %76 ], [ 32, %24 ]
  %78 = phi i64 [ %110, %76 ], [ 64, %24 ]
  %79 = phi i64 [ %108, %76 ], [ 0, %24 ]
  %80 = phi i64 [ %94, %76 ], [ 0, %24 ]
  %81 = shl i64 %80, 1
  %82 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ip, i64 0, i64 %77
  %83 = load i8, i8* %82, align 1, !tbaa !17
  %84 = icmp sgt i8 %83, 32
  %85 = sext i8 %83 to i64
  %86 = add nsw i64 %85, -32
  %87 = select i1 %84, i64 %86, i64 %85
  %88 = select i1 %84, i64 %0, i64 %1
  %89 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %87
  %90 = load i64, i64* %89, align 8, !tbaa !5
  %91 = and i64 %90, %88
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = or i64 %81, %93
  %95 = shl i64 %79, 1
  %96 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ip, i64 0, i64 %78
  %97 = load i8, i8* %96, align 1, !tbaa !17
  %98 = icmp sgt i8 %97, 32
  %99 = sext i8 %97 to i64
  %100 = add nsw i64 %99, -32
  %101 = select i1 %98, i64 %100, i64 %99
  %102 = select i1 %98, i64 %0, i64 %1
  %103 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %101
  %104 = load i64, i64* %103, align 8, !tbaa !5
  %105 = and i64 %104, %102
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = or i64 %95, %107
  %109 = add nsw i64 %77, -1
  %110 = add nsw i64 %78, -1
  %111 = icmp ugt i64 %77, 1
  br i1 %111, label %76, label %74, !llvm.loop !21

112:                                              ; preds = %74, %112
  %113 = phi i64 [ %108, %74 ], [ %121, %112 ]
  %114 = phi i64 [ %94, %74 ], [ %113, %112 ]
  %115 = phi i32 [ 1, %74 ], [ %122, %112 ]
  %116 = sub nuw nsw i32 17, %115
  %117 = select i1 %75, i32 %116, i32 %115
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [17 x %struct.GREAT], [17 x %struct.GREAT]* @des.kns, i64 0, i64 %118
  call void @cyfun(i64 %113, %struct.GREAT* nonnull byval(%struct.GREAT) align 8 %119, i64* nonnull %8)
  %120 = load i64, i64* %8, align 8, !tbaa !5
  %121 = xor i64 %120, %114
  store i64 %121, i64* %8, align 8, !tbaa !5
  %122 = add nuw nsw i32 %115, 1
  %123 = icmp eq i32 %122, 17
  br i1 %123, label %124, label %112, !llvm.loop !22

124:                                              ; preds = %112
  store i64 %113, i64* %8, align 8, !tbaa !5
  %125 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %6, i64 0, i32 0
  %126 = getelementptr inbounds %struct.IMMENSE, %struct.IMMENSE* %6, i64 0, i32 1
  %127 = bitcast %struct.IMMENSE* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  br label %128

128:                                              ; preds = %124, %128
  %129 = phi i64 [ 32, %124 ], [ %161, %128 ]
  %130 = phi i64 [ 64, %124 ], [ %162, %128 ]
  %131 = load i64, i64* %126, align 8, !tbaa !14
  %132 = shl i64 %131, 1
  store i64 %132, i64* %126, align 8, !tbaa !14
  %133 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ipm, i64 0, i64 %129
  %134 = load i8, i8* %133, align 1, !tbaa !17
  %135 = icmp sgt i8 %134, 32
  %136 = sext i8 %134 to i64
  %137 = add nsw i64 %136, -32
  %138 = select i1 %135, i64 %137, i64 %136
  %139 = select i1 %135, i64 %113, i64 %121
  %140 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %138
  %141 = load i64, i64* %140, align 8, !tbaa !5
  %142 = and i64 %141, %139
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = or i64 %132, %144
  store i64 %145, i64* %126, align 8, !tbaa !14
  %146 = load i64, i64* %125, align 8, !tbaa !16
  %147 = shl i64 %146, 1
  store i64 %147, i64* %125, align 8, !tbaa !16
  %148 = getelementptr inbounds [65 x i8], [65 x i8]* @des.ipm, i64 0, i64 %130
  %149 = load i8, i8* %148, align 1, !tbaa !17
  %150 = icmp sgt i8 %149, 32
  %151 = sext i8 %149 to i64
  %152 = add nsw i64 %151, -32
  %153 = select i1 %150, i64 %152, i64 %151
  %154 = select i1 %150, i64 %113, i64 %121
  %155 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %153
  %156 = load i64, i64* %155, align 8, !tbaa !5
  %157 = and i64 %156, %154
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = or i64 %147, %159
  store i64 %160, i64* %125, align 8, !tbaa !16
  %161 = add nsw i64 %129, -1
  %162 = add nsw i64 %130, -1
  %163 = icmp ugt i64 %129, 1
  br i1 %163, label %128, label %164, !llvm.loop !23

164:                                              ; preds = %128
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @getbit(i64 %0, i64 %1, i32 %2, i32 %3) local_unnamed_addr #2 {
  %5 = icmp sgt i32 %2, %3
  %6 = select i1 %5, i32 %3, i32 0
  %7 = sub nsw i32 %2, %6
  %8 = select i1 %5, i64 %0, i64 %1
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %9
  %11 = load i64, i64* %10, align 8, !tbaa !5
  %12 = and i64 %11, %8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  ret i64 %14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @ks(i32 %0, %struct.GREAT* nocapture %1) local_unnamed_addr #4 {
  switch i32 %0, label %3 [
    i32 16, label %6
    i32 9, label %6
    i32 2, label %6
    i32 1, label %6
  ]

3:                                                ; preds = %2
  %4 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 1), align 8, !tbaa !14
  %5 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 0), align 8, !tbaa !16
  br label %17

6:                                                ; preds = %2, %2, %2, %2
  %7 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 1), align 8, !tbaa !14
  %8 = shl i64 %7, 28
  %9 = and i64 %8, 268435456
  %10 = or i64 %9, %7
  %11 = lshr i64 %10, 1
  store i64 %11, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 1), align 8, !tbaa !14
  %12 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 0), align 8, !tbaa !16
  %13 = shl i64 %12, 28
  %14 = and i64 %13, 268435456
  %15 = or i64 %14, %12
  %16 = lshr i64 %15, 1
  br label %32

17:                                               ; preds = %3, %17
  %18 = phi i32 [ 1, %3 ], [ %29, %17 ]
  %19 = phi i64 [ %4, %3 ], [ %24, %17 ]
  %20 = phi i64 [ %5, %3 ], [ %28, %17 ]
  %21 = shl i64 %19, 28
  %22 = and i64 %21, 268435456
  %23 = or i64 %22, %19
  %24 = lshr i64 %23, 1
  %25 = shl i64 %20, 28
  %26 = and i64 %25, 268435456
  %27 = or i64 %26, %20
  %28 = lshr i64 %27, 1
  %29 = add nuw nsw i32 %18, 1
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %17, !llvm.loop !24

31:                                               ; preds = %17
  store i64 %24, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 1), align 8, !tbaa !14
  br label %32

32:                                               ; preds = %31, %6
  %33 = phi i64 [ %16, %6 ], [ %28, %31 ]
  store i64 %33, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 0), align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i64 0, i32 0
  %35 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i64 0, i32 1
  %36 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i64 0, i32 2
  %37 = bitcast %struct.GREAT* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %38 = load i64, i64* getelementptr inbounds (%struct.IMMENSE, %struct.IMMENSE* @icd, i64 0, i32 1), align 8
  br label %39

39:                                               ; preds = %32, %39
  %40 = phi i64 [ 16, %32 ], [ %82, %39 ]
  %41 = phi i64 [ 32, %32 ], [ %83, %39 ]
  %42 = phi i64 [ 48, %32 ], [ %84, %39 ]
  %43 = load i64, i64* %36, align 8, !tbaa !25
  %44 = shl i64 %43, 1
  store i64 %44, i64* %36, align 8, !tbaa !25
  %45 = getelementptr inbounds [49 x i8], [49 x i8]* @ipc2, i64 0, i64 %40
  %46 = load i8, i8* %45, align 1, !tbaa !17
  %47 = sext i8 %46 to i64
  %48 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8, !tbaa !5
  %50 = and i64 %49, %38
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = or i64 %44, %52
  store i64 %53, i64* %36, align 8, !tbaa !25
  %54 = load i64, i64* %35, align 8, !tbaa !27
  %55 = shl i64 %54, 1
  store i64 %55, i64* %35, align 8, !tbaa !27
  %56 = getelementptr inbounds [49 x i8], [49 x i8]* @ipc2, i64 0, i64 %41
  %57 = load i8, i8* %56, align 1, !tbaa !17
  %58 = add nsw i64 %41, -25
  %59 = icmp ult i64 %58, 24
  %60 = sext i8 %57 to i64
  %61 = add nsw i64 %60, -28
  %62 = select i1 %59, i64 %61, i64 %60
  %63 = select i1 %59, i64 %33, i64 %38
  %64 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %62
  %65 = load i64, i64* %64, align 8, !tbaa !5
  %66 = and i64 %65, %63
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = or i64 %55, %68
  store i64 %69, i64* %35, align 8, !tbaa !27
  %70 = load i64, i64* %34, align 8, !tbaa !28
  %71 = shl i64 %70, 1
  store i64 %71, i64* %34, align 8, !tbaa !28
  %72 = getelementptr inbounds [49 x i8], [49 x i8]* @ipc2, i64 0, i64 %42
  %73 = load i8, i8* %72, align 1, !tbaa !17
  %74 = sext i8 %73 to i64
  %75 = add nsw i64 %74, -28
  %76 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %75
  %77 = load i64, i64* %76, align 8, !tbaa !5
  %78 = and i64 %77, %33
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = or i64 %71, %80
  store i64 %81, i64* %34, align 8, !tbaa !28
  %82 = add nsw i64 %40, -1
  %83 = add nsw i64 %41, -1
  %84 = add nsw i64 %42, -1
  %85 = icmp ugt i64 %40, 1
  br i1 %85, label %39, label %86, !llvm.loop !29

86:                                               ; preds = %39
  ret void
}

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local void @cyfun(i64 %0, %struct.GREAT* nocapture readonly byval(%struct.GREAT) align 8 %1, i64* nocapture %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  %5 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %5) #6
  br label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ 16, %3 ], [ %43, %6 ]
  %8 = phi i64 [ 32, %3 ], [ %44, %6 ]
  %9 = phi i64 [ 48, %3 ], [ %45, %6 ]
  %10 = phi i64 [ 0, %3 ], [ %22, %6 ]
  %11 = phi i64 [ 0, %3 ], [ %32, %6 ]
  %12 = phi i64 [ 0, %3 ], [ %42, %6 ]
  %13 = shl i64 %10, 1
  %14 = getelementptr inbounds [49 x i32], [49 x i32]* @cyfun.iet, i64 0, i64 %7
  %15 = load i32, i32* %14, align 4, !tbaa !12
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %16
  %18 = load i64, i64* %17, align 8, !tbaa !5
  %19 = and i64 %18, %0
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = or i64 %13, %21
  %23 = shl i64 %11, 1
  %24 = getelementptr inbounds [49 x i32], [49 x i32]* @cyfun.iet, i64 0, i64 %8
  %25 = load i32, i32* %24, align 4, !tbaa !12
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !5
  %29 = and i64 %28, %0
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = or i64 %23, %31
  %33 = shl i64 %12, 1
  %34 = getelementptr inbounds [49 x i32], [49 x i32]* @cyfun.iet, i64 0, i64 %9
  %35 = load i32, i32* %34, align 4, !tbaa !12
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %36
  %38 = load i64, i64* %37, align 8, !tbaa !5
  %39 = and i64 %38, %0
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = or i64 %33, %41
  %43 = add nsw i64 %7, -1
  %44 = add nsw i64 %8, -1
  %45 = add nsw i64 %9, -1
  %46 = icmp ugt i64 %7, 1
  br i1 %46, label %6, label %47, !llvm.loop !30

47:                                               ; preds = %6
  %48 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i64 0, i32 2
  %49 = load i64, i64* %48, align 8, !tbaa !25
  %50 = xor i64 %49, %22
  %51 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i64 0, i32 1
  %52 = load i64, i64* %51, align 8, !tbaa !27
  %53 = xor i64 %52, %32
  %54 = getelementptr inbounds %struct.GREAT, %struct.GREAT* %1, i64 0, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !28
  %56 = xor i64 %55, %42
  %57 = shl i64 %53, 16
  %58 = add i64 %57, %50
  %59 = shl i64 %56, 8
  %60 = lshr i64 %53, 8
  %61 = add i64 %59, %60
  br label %62

62:                                               ; preds = %47, %62
  %63 = phi i64 [ 1, %47 ], [ %75, %62 ]
  %64 = phi i64 [ 5, %47 ], [ %76, %62 ]
  %65 = phi i64 [ %61, %47 ], [ %74, %62 ]
  %66 = phi i64 [ %58, %47 ], [ %73, %62 ]
  %67 = trunc i64 %66 to i8
  %68 = and i8 %67, 63
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 %63
  store i8 %68, i8* %69, align 1, !tbaa !17
  %70 = trunc i64 %65 to i8
  %71 = and i8 %70, 63
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 %64
  store i8 %71, i8* %72, align 1, !tbaa !17
  %73 = lshr i64 %66, 6
  %74 = lshr i64 %65, 6
  %75 = add nuw nsw i64 %63, 1
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %75, 5
  br i1 %77, label %78, label %62, !llvm.loop !31

78:                                               ; preds = %62, %78
  %79 = phi i64 [ %109, %78 ], [ 8, %62 ]
  %80 = phi i64 [ %108, %78 ], [ 0, %62 ]
  %81 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 %79
  %82 = load i8, i8* %81, align 1, !tbaa !17
  %83 = sext i8 %82 to i32
  %84 = shl nsw i32 %83, 1
  %85 = and i32 %84, 2
  %86 = lshr i32 %83, 5
  %87 = and i32 %86, 1
  %88 = or i32 %85, %87
  %89 = shl nsw i32 %83, 2
  %90 = and i32 %89, 8
  %91 = and i32 %83, 4
  %92 = or i32 %90, %91
  %93 = lshr i32 %83, 2
  %94 = and i32 %93, 2
  %95 = or i32 %92, %94
  %96 = lshr i32 %83, 4
  %97 = and i32 %96, 1
  %98 = or i32 %95, %97
  %99 = zext i32 %98 to i64
  %100 = zext i32 %88 to i64
  %101 = getelementptr inbounds [16 x [4 x [9 x i8]]], [16 x [4 x [9 x i8]]]* @cyfun.is, i64 0, i64 %99, i64 %100, i64 %79
  %102 = load i8, i8* %101, align 1, !tbaa !17
  %103 = shl i64 %80, 4
  %104 = sext i8 %102 to i64
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* @cyfun.ibin, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1, !tbaa !17
  %107 = sext i8 %106 to i64
  %108 = or i64 %103, %107
  %109 = add nsw i64 %79, -1
  %110 = icmp ugt i64 %79, 1
  br i1 %110, label %78, label %111, !llvm.loop !32

111:                                              ; preds = %78
  store i64 0, i64* %2, align 8, !tbaa !5
  br label %112

112:                                              ; preds = %111, %112
  %113 = phi i64 [ 32, %111 ], [ %125, %112 ]
  %114 = load i64, i64* %2, align 8, !tbaa !5
  %115 = shl i64 %114, 1
  store i64 %115, i64* %2, align 8, !tbaa !5
  %116 = getelementptr inbounds [33 x i32], [33 x i32]* @cyfun.ipp, i64 0, i64 %113
  %117 = load i32, i32* %116, align 4, !tbaa !12
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [33 x i64], [33 x i64]* @bit, i64 0, i64 %118
  %120 = load i64, i64* %119, align 8, !tbaa !5
  %121 = and i64 %120, %108
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = or i64 %115, %123
  store i64 %124, i64* %2, align 8, !tbaa !5
  %125 = add nsw i64 %113, -1
  %126 = icmp ugt i64 %113, 1
  br i1 %126, label %112, label %127, !llvm.loop !33

127:                                              ; preds = %112
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca %struct.IMMENSE, align 8
  %2 = alloca i32, align 4
  %3 = bitcast %struct.IMMENSE* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6
  %4 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #6
  %5 = load i32, i32* @value, align 4, !tbaa !12
  store i32 %5, i32* %2, align 4, !tbaa !12
  call void @des(i64 35, i64 26, i64 2, i64 16, i32* nonnull %2, i32 %5, %struct.IMMENSE* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nofree nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readonly sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 8}
!15 = !{!"IMMENSE", !6, i64 0, !6, i64 8}
!16 = !{!15, !6, i64 0}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !6, i64 16}
!26 = !{!"GREAT", !6, i64 0, !6, i64 8, !6, i64 16}
!27 = !{!26, !6, i64 8}
!28 = !{!26, !6, i64 0}
!29 = distinct !{!29, !10, !11}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
