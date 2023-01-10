; ModuleID = 'lms.c'
source_filename = "lms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mu = dso_local local_unnamed_addr global float 0x3F847AE140000000, align 4
@lms_rand.next = internal unnamed_addr global i64 1, align 8
@main.d = internal unnamed_addr global [201 x float] zeroinitializer, align 16
@main.b = internal unnamed_addr global [21 x float] zeroinitializer, align 16
@lms.px = internal unnamed_addr global [51 x float] zeroinitializer, align 16
@lms.sigma = internal unnamed_addr global float 2.000000e+00, align 4
@gaussian.ready = internal unnamed_addr global i1 false, align 4
@gaussian.gstore = internal unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local i32 @lms_rand() local_unnamed_addr #0 {
  %1 = load i64, i64* @lms_rand.next, align 8, !tbaa !5
  %2 = mul i64 %1, 1103515245
  %3 = add i64 %2, 12345
  store i64 %3, i64* @lms_rand.next, align 8, !tbaa !5
  %4 = lshr i64 %3, 16
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 32767
  ret i32 %6
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  br label %1

1:                                                ; preds = %23, %0
  %2 = phi i32 [ 0, %0 ], [ %25, %23 ]
  %3 = phi i32 [ 1, %0 ], [ %26, %23 ]
  %4 = phi float [ 0x3FC99999A0000000, %0 ], [ %24, %23 ]
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = fmul float %4, %4
  %8 = fsub float 2.000000e+00, %7
  %9 = fpext float %8 to double
  %10 = fpext float %4 to double
  %11 = fmul double %10, 2.000000e+00
  %12 = fdiv double %9, %11
  %13 = fptrunc double %12 to float
  %14 = fadd float %4, %13
  %15 = fmul float %14, %14
  %16 = fsub float 2.000000e+00, %15
  %17 = fcmp ult float %16, 0.000000e+00
  %18 = fneg float %16
  %19 = select i1 %17, float %18, float %16
  %20 = fpext float %19 to double
  %21 = fcmp ugt double %20, 1.000000e-05
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %23

23:                                               ; preds = %22, %6, %1
  %24 = phi float [ %4, %1 ], [ %14, %22 ], [ %14, %6 ]
  %25 = phi i32 [ 1, %1 ], [ 1, %22 ], [ 0, %6 ]
  %26 = add nuw nsw i32 %3, 1
  %27 = icmp eq i32 %26, 20
  br i1 %27, label %28, label %1, !llvm.loop !9

28:                                               ; preds = %23, %50
  %29 = phi i32 [ %52, %50 ], [ 0, %23 ]
  %30 = phi i32 [ %53, %50 ], [ 1, %23 ]
  %31 = phi float [ %51, %50 ], [ 0x3FF3333340000000, %23 ]
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = fmul float %31, %31
  %35 = fsub float 1.200000e+01, %34
  %36 = fpext float %35 to double
  %37 = fpext float %31 to double
  %38 = fmul double %37, 2.000000e+00
  %39 = fdiv double %36, %38
  %40 = fptrunc double %39 to float
  %41 = fadd float %31, %40
  %42 = fmul float %41, %41
  %43 = fsub float 1.200000e+01, %42
  %44 = fcmp ult float %43, 0.000000e+00
  %45 = fneg float %43
  %46 = select i1 %44, float %45, float %43
  %47 = fpext float %46 to double
  %48 = fcmp ugt double %47, 1.000000e-05
  br i1 %48, label %50, label %49

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %33, %28
  %51 = phi float [ %31, %28 ], [ %41, %49 ], [ %41, %33 ]
  %52 = phi i32 [ 1, %28 ], [ 1, %49 ], [ 0, %33 ]
  %53 = add nuw nsw i32 %30, 1
  %54 = icmp eq i32 %53, 20
  br i1 %54, label %55, label %28, !llvm.loop !9

55:                                               ; preds = %50
  %56 = fpext float %51 to double
  %57 = fmul double %56, 2.000000e-01
  %58 = fptrunc double %57 to float
  br label %59

59:                                               ; preds = %55, %203
  %60 = phi i64 [ 0, %55 ], [ %208, %203 ]
  %61 = trunc i64 %60 to i32
  %62 = sitofp i32 %61 to float
  %63 = fmul float %62, 0x3FD41B2F80000000
  %64 = fpext float %63 to double
  %65 = fcmp ogt double %64, 0x401921FB54442D18
  br i1 %65, label %70, label %66

66:                                               ; preds = %70, %59
  %67 = phi float [ %63, %59 ], [ %73, %70 ]
  %68 = fpext float %67 to double
  %69 = fcmp olt double %68, 0xC01921FB54442D18
  br i1 %69, label %76, label %82

70:                                               ; preds = %59, %70
  %71 = phi double [ %74, %70 ], [ %64, %59 ]
  %72 = fadd double %71, 0xC01921FB54442D18
  %73 = fptrunc double %72 to float
  %74 = fpext float %73 to double
  %75 = fcmp ogt double %74, 0x401921FB54442D18
  br i1 %75, label %70, label %66, !llvm.loop !12

76:                                               ; preds = %66, %76
  %77 = phi double [ %80, %76 ], [ %68, %66 ]
  %78 = fadd double %77, 0x401921FB54442D18
  %79 = fptrunc double %78 to float
  %80 = fpext float %79 to double
  %81 = fcmp olt double %80, 0xC01921FB54442D18
  br i1 %81, label %76, label %82, !llvm.loop !13

82:                                               ; preds = %76, %66
  %83 = phi float [ %67, %66 ], [ %79, %76 ]
  %84 = fneg float %83
  %85 = fmul float %83, %84
  %86 = fmul float %83, %85
  %87 = fdiv float %86, 6.000000e+00
  %88 = fadd float %83, %87
  %89 = fcmp ult float %87, 0.000000e+00
  %90 = fneg float %87
  %91 = select i1 %89, float %90, float %87
  %92 = fpext float %91 to double
  %93 = fcmp ult double %92, 1.000000e-05
  br i1 %93, label %113, label %94

94:                                               ; preds = %82, %94
  %95 = phi i32 [ %107, %94 ], [ 2, %82 ]
  %96 = phi float [ %105, %94 ], [ %87, %82 ]
  %97 = phi float [ %106, %94 ], [ %88, %82 ]
  %98 = fmul float %85, %96
  %99 = fpext float %98 to double
  %100 = sitofp i32 %95 to double
  %101 = fmul double %100, 2.000000e+00
  %102 = fadd double %101, 1.000000e+00
  %103 = fmul double %101, %102
  %104 = fdiv double %99, %103
  %105 = fptrunc double %104 to float
  %106 = fadd float %97, %105
  %107 = add nuw nsw i32 %95, 1
  %108 = fcmp ult float %105, 0.000000e+00
  %109 = fneg float %105
  %110 = select i1 %108, float %109, float %105
  %111 = fpext float %110 to double
  %112 = fcmp ult double %111, 1.000000e-05
  br i1 %112, label %113, label %94, !llvm.loop !14

113:                                              ; preds = %94, %82
  %114 = phi float [ %88, %82 ], [ %106, %94 ]
  %115 = fmul float %24, %114
  %116 = load i1, i1* @gaussian.ready, align 4
  br i1 %116, label %201, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* @lms_rand.next, align 8, !tbaa !5
  %119 = mul i64 %118, 1103515245
  %120 = add i64 %119, 12345
  %121 = lshr i64 %120, 16
  %122 = trunc i64 %121 to i32
  %123 = and i32 %122, 32767
  %124 = sitofp i32 %123 to float
  %125 = fadd float %124, -1.638400e+04
  %126 = mul i64 %120, 1103515245
  %127 = add i64 %126, 12345
  store i64 %127, i64* @lms_rand.next, align 8, !tbaa !5
  %128 = lshr i64 %127, 16
  %129 = trunc i64 %128 to i32
  %130 = and i32 %129, 32767
  %131 = sitofp i32 %130 to float
  %132 = fadd float %131, -1.638400e+04
  %133 = fmul float %125, 0x3F10000000000000
  %134 = fmul float %132, 0x3F10000000000000
  %135 = fmul float %133, %133
  %136 = fmul float %134, %134
  %137 = fadd float %135, %136
  %138 = fcmp ogt float %137, 1.000000e+00
  br i1 %138, label %139, label %162

139:                                              ; preds = %117, %139
  %140 = phi i64 [ %149, %139 ], [ %127, %117 ]
  %141 = mul i64 %140, 1103515245
  %142 = add i64 %141, 12345
  %143 = lshr i64 %142, 16
  %144 = trunc i64 %143 to i32
  %145 = and i32 %144, 32767
  %146 = sitofp i32 %145 to float
  %147 = fadd float %146, -1.638400e+04
  %148 = mul i64 %142, 1103515245
  %149 = add i64 %148, 12345
  %150 = lshr i64 %149, 16
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 32767
  %153 = sitofp i32 %152 to float
  %154 = fadd float %153, -1.638400e+04
  %155 = fmul float %147, 0x3F10000000000000
  %156 = fmul float %154, 0x3F10000000000000
  %157 = fmul float %155, %155
  %158 = fmul float %156, %156
  %159 = fadd float %157, %158
  %160 = fcmp ogt float %159, 1.000000e+00
  br i1 %160, label %139, label %161, !llvm.loop !15

161:                                              ; preds = %139
  store i64 %149, i64* @lms_rand.next, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %161, %117
  %163 = phi float [ %156, %161 ], [ %134, %117 ]
  %164 = phi float [ %159, %161 ], [ %137, %117 ]
  %165 = phi float [ %155, %161 ], [ %133, %117 ]
  %166 = fdiv float -9.000000e+00, %164
  %167 = fcmp oeq float %166, 0.000000e+00
  br i1 %167, label %197, label %168

168:                                              ; preds = %162
  %169 = fdiv float %166, 1.000000e+01
  br label %170

170:                                              ; preds = %192, %168
  %171 = phi i32 [ 0, %168 ], [ %194, %192 ]
  %172 = phi i32 [ 1, %168 ], [ %195, %192 ]
  %173 = phi float [ %169, %168 ], [ %193, %192 ]
  %174 = icmp eq i32 %171, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %170
  %176 = fmul float %173, %173
  %177 = fsub float %166, %176
  %178 = fpext float %177 to double
  %179 = fpext float %173 to double
  %180 = fmul double %179, 2.000000e+00
  %181 = fdiv double %178, %180
  %182 = fptrunc double %181 to float
  %183 = fadd float %173, %182
  %184 = fmul float %183, %183
  %185 = fsub float %166, %184
  %186 = fcmp ult float %185, 0.000000e+00
  %187 = fneg float %185
  %188 = select i1 %186, float %187, float %185
  %189 = fpext float %188 to double
  %190 = fcmp ugt double %189, 1.000000e-05
  br i1 %190, label %192, label %191

191:                                              ; preds = %175
  br label %192

192:                                              ; preds = %191, %175, %170
  %193 = phi float [ %173, %170 ], [ %183, %191 ], [ %183, %175 ]
  %194 = phi i32 [ 1, %170 ], [ 1, %191 ], [ 0, %175 ]
  %195 = add nuw nsw i32 %172, 1
  %196 = icmp eq i32 %195, 20
  br i1 %196, label %197, label %170, !llvm.loop !9

197:                                              ; preds = %192, %162
  %198 = phi float [ 0.000000e+00, %162 ], [ %193, %192 ]
  %199 = fmul float %165, %198
  store float %199, float* @gaussian.gstore, align 4, !tbaa !16
  %200 = fmul float %163, %198
  store i1 true, i1* @gaussian.ready, align 4
  br label %203

201:                                              ; preds = %113
  store i1 false, i1* @gaussian.ready, align 4
  %202 = load float, float* @gaussian.gstore, align 4, !tbaa !16
  br label %203

203:                                              ; preds = %197, %201
  %204 = phi float [ %200, %197 ], [ %202, %201 ]
  %205 = fmul float %204, %58
  %206 = fadd float %115, %205
  %207 = getelementptr inbounds [201 x float], [201 x float]* @main.d, i64 0, i64 %60
  store float %206, float* %207, align 4, !tbaa !16
  %208 = add nuw nsw i64 %60, 1
  %209 = icmp eq i64 %208, 201
  br i1 %209, label %210, label %59, !llvm.loop !18

210:                                              ; preds = %203
  %211 = load float, float* @mu, align 4, !tbaa !16
  %212 = fpext float %211 to double
  %213 = fmul double %212, 2.000000e+00
  %214 = fdiv double %213, 2.100000e+01
  %215 = fptrunc double %214 to float
  store float %215, float* @mu, align 4, !tbaa !16
  %216 = load float, float* @lms.sigma, align 4, !tbaa !16
  br label %217

217:                                              ; preds = %210, %254
  %218 = phi i64 [ 0, %210 ], [ %255, %254 ]
  %219 = phi float [ 0.000000e+00, %210 ], [ %222, %254 ]
  %220 = phi float [ %216, %210 ], [ %241, %254 ]
  %221 = getelementptr inbounds [201 x float], [201 x float]* @main.d, i64 0, i64 %218
  %222 = load float, float* %221, align 4, !tbaa !16
  store float %219, float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 0), align 16, !tbaa !16
  %223 = load float, float* getelementptr inbounds ([21 x float], [21 x float]* @main.b, i64 0, i64 0), align 16, !tbaa !16
  %224 = fmul float %219, %223
  br label %225

225:                                              ; preds = %225, %217
  %226 = phi i64 [ 1, %217 ], [ %234, %225 ]
  %227 = phi float [ %224, %217 ], [ %233, %225 ]
  %228 = getelementptr inbounds [21 x float], [21 x float]* @main.b, i64 0, i64 %226
  %229 = load float, float* %228, align 4, !tbaa !16
  %230 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %226
  %231 = load float, float* %230, align 4, !tbaa !16
  %232 = fmul float %229, %231
  %233 = fadd float %227, %232
  %234 = add nuw nsw i64 %226, 1
  %235 = icmp eq i64 %234, 21
  br i1 %235, label %236, label %225, !llvm.loop !19

236:                                              ; preds = %225
  %237 = fsub float %222, %233
  %238 = fmul float %219, %219
  %239 = fmul float %238, 0x3F847AE140000000
  %240 = fmul float %220, 0x3FEFAE1480000000
  %241 = fadd float %239, %240
  %242 = fmul float %237, %215
  %243 = fdiv float %242, %241
  br label %244

244:                                              ; preds = %244, %236
  %245 = phi i64 [ 0, %236 ], [ %252, %244 ]
  %246 = getelementptr inbounds [21 x float], [21 x float]* @main.b, i64 0, i64 %245
  %247 = load float, float* %246, align 4, !tbaa !16
  %248 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %245
  %249 = load float, float* %248, align 4, !tbaa !16
  %250 = fmul float %243, %249
  %251 = fadd float %247, %250
  store float %251, float* %246, align 4, !tbaa !16
  %252 = add nuw nsw i64 %245, 1
  %253 = icmp eq i64 %252, 21
  br i1 %253, label %254, label %244, !llvm.loop !20

254:                                              ; preds = %244
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(80) bitcast (float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 1) to i8*), i8* noundef nonnull align 16 dereferenceable(80) bitcast ([51 x float]* @lms.px to i8*), i64 80, i1 false)
  %255 = add nuw nsw i64 %218, 1
  %256 = icmp eq i64 %255, 201
  br i1 %256, label %257, label %217, !llvm.loop !21

257:                                              ; preds = %254
  store float %241, float* @lms.sigma, align 4, !tbaa !16
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local float @lms(float %0, float %1, float* nocapture %2, i32 %3, float %4, float %5) local_unnamed_addr #1 {
  store float %0, float* getelementptr inbounds ([51 x float], [51 x float]* @lms.px, i64 0, i64 0), align 16, !tbaa !16
  %7 = load float, float* %2, align 4, !tbaa !16
  %8 = fmul float %7, %0
  %9 = icmp slt i32 %3, 1
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = add i32 %3, 1
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 1, %10 ], [ %22, %13 ]
  %15 = phi float [ %8, %10 ], [ %21, %13 ]
  %16 = getelementptr inbounds float, float* %2, i64 %14
  %17 = load float, float* %16, align 4, !tbaa !16
  %18 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %14
  %19 = load float, float* %18, align 4, !tbaa !16
  %20 = fmul float %17, %19
  %21 = fadd float %15, %20
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %24, label %13, !llvm.loop !19

24:                                               ; preds = %13, %6
  %25 = phi float [ %8, %6 ], [ %21, %13 ]
  %26 = fsub float %1, %25
  %27 = fmul float %0, %0
  %28 = fmul float %27, %5
  %29 = fsub float 1.000000e+00, %5
  %30 = load float, float* @lms.sigma, align 4, !tbaa !16
  %31 = fmul float %29, %30
  %32 = fadd float %28, %31
  store float %32, float* @lms.sigma, align 4, !tbaa !16
  %33 = fmul float %26, %4
  %34 = fdiv float %33, %32
  %35 = icmp slt i32 %3, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %24
  %37 = add i32 %3, 1
  %38 = zext i32 %37 to i64
  br label %43

39:                                               ; preds = %43, %24
  %40 = icmp sgt i32 %3, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %39
  %42 = zext i32 %3 to i64
  br label %53

43:                                               ; preds = %36, %43
  %44 = phi i64 [ 0, %36 ], [ %51, %43 ]
  %45 = getelementptr inbounds float, float* %2, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !16
  %47 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %44
  %48 = load float, float* %47, align 4, !tbaa !16
  %49 = fmul float %34, %48
  %50 = fadd float %46, %49
  store float %50, float* %45, align 4, !tbaa !16
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %38
  br i1 %52, label %39, label %43, !llvm.loop !20

53:                                               ; preds = %41, %53
  %54 = phi i64 [ %42, %41 ], [ %62, %53 ]
  %55 = phi i32 [ %3, %41 ], [ %56, %53 ]
  %56 = add nsw i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %57
  %59 = load float, float* %58, align 4, !tbaa !16
  %60 = getelementptr inbounds [51 x float], [51 x float]* @lms.px, i64 0, i64 %54
  store float %59, float* %60, align 4, !tbaa !16
  %61 = icmp sgt i64 %54, 1
  %62 = add nsw i64 %54, -1
  br i1 %61, label %53, label %63, !llvm.loop !22

63:                                               ; preds = %53, %39
  ret float %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
