; ModuleID = 'fft1.c'
source_filename = "fft1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ai = dso_local local_unnamed_addr global [8 x double] zeroinitializer, align 16
@ar = dso_local local_unnamed_addr global [8 x double] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %47
  %2 = phi i64 [ 0, %0 ], [ %50, %47 ]
  %3 = trunc i64 %2 to i32
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, 6.283180e+00
  %6 = fmul double %5, 1.250000e-01
  %7 = fsub double 0x3FF921F9F01B866E, %6
  %8 = fcmp ogt double %7, 6.283180e+00
  br i1 %8, label %12, label %9

9:                                                ; preds = %12, %1
  %10 = phi double [ %7, %1 ], [ %14, %12 ]
  %11 = fcmp olt double %10, -6.283180e+00
  br i1 %11, label %16, label %20

12:                                               ; preds = %1, %12
  %13 = phi double [ %14, %12 ], [ %7, %1 ]
  %14 = fadd double %13, -6.283180e+00
  %15 = fcmp ogt double %14, 6.283180e+00
  br i1 %15, label %12, label %9, !llvm.loop !5

16:                                               ; preds = %9, %16
  %17 = phi double [ %18, %16 ], [ %10, %9 ]
  %18 = fadd double %17, 6.283180e+00
  %19 = fcmp olt double %18, -6.283180e+00
  br i1 %19, label %16, label %20, !llvm.loop !8

20:                                               ; preds = %16, %9
  %21 = phi double [ %10, %9 ], [ %18, %16 ]
  %22 = fneg double %21
  %23 = fmul double %21, %22
  %24 = fmul double %21, %23
  %25 = fdiv double %24, 6.000000e+00
  %26 = fadd double %21, %25
  %27 = fcmp ult double %25, 0.000000e+00
  %28 = fneg double %25
  %29 = select i1 %27, double %28, double %25
  %30 = fcmp ult double %29, 1.000000e-05
  br i1 %30, label %47, label %31

31:                                               ; preds = %20, %31
  %32 = phi i32 [ %42, %31 ], [ 2, %20 ]
  %33 = phi double [ %40, %31 ], [ %25, %20 ]
  %34 = phi double [ %41, %31 ], [ %26, %20 ]
  %35 = fmul double %23, %33
  %36 = sitofp i32 %32 to double
  %37 = fmul double %36, 2.000000e+00
  %38 = fadd double %37, 1.000000e+00
  %39 = fmul double %37, %38
  %40 = fdiv double %35, %39
  %41 = fadd double %34, %40
  %42 = add nuw nsw i32 %32, 1
  %43 = fcmp ult double %40, 0.000000e+00
  %44 = fneg double %40
  %45 = select i1 %43, double %44, double %40
  %46 = fcmp ult double %45, 1.000000e-05
  br i1 %46, label %47, label %31, !llvm.loop !9

47:                                               ; preds = %31, %20
  %48 = phi double [ %26, %20 ], [ %41, %31 ]
  %49 = getelementptr inbounds [8 x double], [8 x double]* @ar, i64 0, i64 %2
  store double %48, double* %49, align 8, !tbaa !10
  %50 = add nuw nsw i64 %2, 1
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %1, !llvm.loop !14

52:                                               ; preds = %47
  %53 = call i32 @fft1(i32 8, i32 0)
  %54 = call i32 @fft1(i32 8, i32 1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @fft1(i32 %0, i32 %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %0, 2
  br i1 %3, label %197, label %4

4:                                                ; preds = %2
  %5 = sitofp i32 %0 to double
  %6 = add nsw i32 %0, -64
  %7 = sitofp i32 %6 to double
  %8 = icmp slt i32 %0, 64
  %9 = fneg double %7
  %10 = select i1 %8, double %9, double %7
  %11 = fcmp ogt double %10, 0x3EB0C6F7A0B5ED8D
  br i1 %11, label %197, label %12

12:                                               ; preds = %4
  %13 = icmp eq i32 %1, 1
  %14 = sext i32 %0 to i64
  br label %19

15:                                               ; preds = %150
  %16 = icmp sgt i32 %0, 1
  br i1 %16, label %17, label %181

17:                                               ; preds = %15
  %18 = zext i32 %0 to i64
  br label %153

19:                                               ; preds = %12, %150
  %20 = phi i32 [ 0, %12 ], [ %151, %150 ]
  %21 = phi i32 [ %0, %12 ], [ %22, %150 ]
  %22 = sdiv i32 %21, 2
  %23 = sitofp i32 %22 to double
  %24 = fdiv double 3.141590e+00, %23
  %25 = icmp sgt i32 %21, %0
  %26 = icmp sgt i32 %21, 1
  br i1 %26, label %27, label %150

27:                                               ; preds = %19
  %28 = sext i32 %21 to i64
  br label %29

29:                                               ; preds = %27, %147
  %30 = phi i32 [ %148, %147 ], [ 0, %27 ]
  %31 = sitofp i32 %30 to double
  %32 = fmul double %24, %31
  %33 = fsub double 0x3FF921F9F01B866E, %32
  %34 = fcmp ogt double %33, 6.283180e+00
  br i1 %34, label %38, label %35

35:                                               ; preds = %38, %29
  %36 = phi double [ %33, %29 ], [ %40, %38 ]
  %37 = fcmp olt double %36, -6.283180e+00
  br i1 %37, label %42, label %46

38:                                               ; preds = %29, %38
  %39 = phi double [ %40, %38 ], [ %33, %29 ]
  %40 = fadd double %39, -6.283180e+00
  %41 = fcmp ogt double %40, 6.283180e+00
  br i1 %41, label %38, label %35, !llvm.loop !5

42:                                               ; preds = %35, %42
  %43 = phi double [ %44, %42 ], [ %36, %35 ]
  %44 = fadd double %43, 6.283180e+00
  %45 = fcmp olt double %44, -6.283180e+00
  br i1 %45, label %42, label %46, !llvm.loop !8

46:                                               ; preds = %42, %35
  %47 = phi double [ %36, %35 ], [ %44, %42 ]
  %48 = fneg double %47
  %49 = fmul double %47, %48
  %50 = fmul double %47, %49
  %51 = fdiv double %50, 6.000000e+00
  %52 = fadd double %47, %51
  %53 = fcmp ult double %51, 0.000000e+00
  %54 = fneg double %51
  %55 = select i1 %53, double %54, double %51
  %56 = fcmp ult double %55, 1.000000e-05
  br i1 %56, label %73, label %57

57:                                               ; preds = %46, %57
  %58 = phi i32 [ %68, %57 ], [ 2, %46 ]
  %59 = phi double [ %66, %57 ], [ %51, %46 ]
  %60 = phi double [ %67, %57 ], [ %52, %46 ]
  %61 = fmul double %49, %59
  %62 = sitofp i32 %58 to double
  %63 = fmul double %62, 2.000000e+00
  %64 = fadd double %63, 1.000000e+00
  %65 = fmul double %63, %64
  %66 = fdiv double %61, %65
  %67 = fadd double %60, %66
  %68 = add nuw nsw i32 %58, 1
  %69 = fcmp ult double %66, 0.000000e+00
  %70 = fneg double %66
  %71 = select i1 %69, double %70, double %66
  %72 = fcmp ult double %71, 1.000000e-05
  br i1 %72, label %73, label %57, !llvm.loop !9

73:                                               ; preds = %57, %46
  %74 = phi double [ %52, %46 ], [ %67, %57 ]
  %75 = fcmp ogt double %32, 6.283180e+00
  br i1 %75, label %79, label %76

76:                                               ; preds = %79, %73
  %77 = phi double [ %32, %73 ], [ %81, %79 ]
  %78 = fcmp olt double %77, -6.283180e+00
  br i1 %78, label %83, label %87

79:                                               ; preds = %73, %79
  %80 = phi double [ %81, %79 ], [ %32, %73 ]
  %81 = fadd double %80, -6.283180e+00
  %82 = fcmp ogt double %81, 6.283180e+00
  br i1 %82, label %79, label %76, !llvm.loop !5

83:                                               ; preds = %76, %83
  %84 = phi double [ %85, %83 ], [ %77, %76 ]
  %85 = fadd double %84, 6.283180e+00
  %86 = fcmp olt double %85, -6.283180e+00
  br i1 %86, label %83, label %87, !llvm.loop !8

87:                                               ; preds = %83, %76
  %88 = phi double [ %77, %76 ], [ %85, %83 ]
  %89 = fneg double %88
  %90 = fmul double %88, %89
  %91 = fmul double %88, %90
  %92 = fdiv double %91, 6.000000e+00
  %93 = fadd double %88, %92
  %94 = fcmp ult double %92, 0.000000e+00
  %95 = fneg double %92
  %96 = select i1 %94, double %95, double %92
  %97 = fcmp ult double %96, 1.000000e-05
  br i1 %97, label %114, label %98

98:                                               ; preds = %87, %98
  %99 = phi i32 [ %109, %98 ], [ 2, %87 ]
  %100 = phi double [ %107, %98 ], [ %92, %87 ]
  %101 = phi double [ %108, %98 ], [ %93, %87 ]
  %102 = fmul double %90, %100
  %103 = sitofp i32 %99 to double
  %104 = fmul double %103, 2.000000e+00
  %105 = fadd double %104, 1.000000e+00
  %106 = fmul double %104, %105
  %107 = fdiv double %102, %106
  %108 = fadd double %101, %107
  %109 = add nuw nsw i32 %99, 1
  %110 = fcmp ult double %107, 0.000000e+00
  %111 = fneg double %107
  %112 = select i1 %110, double %111, double %107
  %113 = fcmp ult double %112, 1.000000e-05
  br i1 %113, label %114, label %98, !llvm.loop !9

114:                                              ; preds = %98, %87
  %115 = phi double [ %93, %87 ], [ %108, %98 ]
  %116 = fneg double %115
  %117 = select i1 %13, double %115, double %116
  %118 = sub nsw i32 %30, %21
  br i1 %25, label %147, label %119

119:                                              ; preds = %114, %119
  %120 = phi i64 [ %144, %119 ], [ %28, %114 ]
  %121 = phi i32 [ %145, %119 ], [ %21, %114 ]
  %122 = add nsw i32 %121, %118
  %123 = add nsw i32 %122, %22
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds [8 x double], [8 x double]* @ar, i64 0, i64 %124
  %126 = load double, double* %125, align 8, !tbaa !10
  %127 = sext i32 %123 to i64
  %128 = getelementptr inbounds [8 x double], [8 x double]* @ar, i64 0, i64 %127
  %129 = load double, double* %128, align 8, !tbaa !10
  %130 = getelementptr inbounds [8 x double], [8 x double]* @ai, i64 0, i64 %124
  %131 = load double, double* %130, align 8, !tbaa !10
  %132 = getelementptr inbounds [8 x double], [8 x double]* @ai, i64 0, i64 %127
  %133 = load double, double* %132, align 8, !tbaa !10
  %134 = fsub double %126, %129
  %135 = fsub double %131, %133
  %136 = fadd double %126, %129
  store double %136, double* %125, align 8, !tbaa !10
  %137 = fadd double %131, %133
  store double %137, double* %130, align 8, !tbaa !10
  %138 = fmul double %74, %134
  %139 = fmul double %117, %135
  %140 = fsub double %138, %139
  store double %140, double* %128, align 8, !tbaa !10
  %141 = fmul double %74, %135
  %142 = fmul double %117, %134
  %143 = fadd double %142, %141
  store double %143, double* %132, align 8, !tbaa !10
  %144 = add i64 %120, %28
  %145 = add nsw i32 %121, %21
  %146 = icmp sgt i64 %144, %14
  br i1 %146, label %147, label %119, !llvm.loop !15

147:                                              ; preds = %119, %114
  %148 = add nuw nsw i32 %30, 1
  %149 = icmp eq i32 %148, %22
  br i1 %149, label %150, label %29, !llvm.loop !16

150:                                              ; preds = %147, %19
  %151 = add nuw nsw i32 %20, 1
  %152 = icmp eq i32 %151, 6
  br i1 %152, label %15, label %19, !llvm.loop !17

153:                                              ; preds = %17, %177
  %154 = phi i64 [ 1, %17 ], [ %179, %177 ]
  %155 = phi i32 [ 1, %17 ], [ %178, %177 ]
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %154, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = add nsw i32 %155, -1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x double], [8 x double]* @ar, i64 0, i64 %160
  %162 = load double, double* %161, align 8, !tbaa !10
  %163 = getelementptr inbounds [8 x double], [8 x double]* @ai, i64 0, i64 %160
  %164 = load double, double* %163, align 8, !tbaa !10
  %165 = add nsw i64 %154, -1
  %166 = getelementptr inbounds [8 x double], [8 x double]* @ar, i64 0, i64 %165
  %167 = load double, double* %166, align 8, !tbaa !10
  store double %167, double* %161, align 8, !tbaa !10
  %168 = getelementptr inbounds [8 x double], [8 x double]* @ai, i64 0, i64 %165
  %169 = load double, double* %168, align 8, !tbaa !10
  store double %169, double* %163, align 8, !tbaa !10
  store double %162, double* %166, align 8, !tbaa !10
  store double %164, double* %168, align 8, !tbaa !10
  br label %170

170:                                              ; preds = %158, %153
  br label %171

171:                                              ; preds = %170, %171
  %172 = phi i32 [ %174, %171 ], [ %0, %170 ]
  %173 = phi i32 [ %176, %171 ], [ %155, %170 ]
  %174 = sdiv i32 %172, 2
  %175 = icmp sgt i32 %173, %174
  %176 = sub nsw i32 %173, %174
  br i1 %175, label %171, label %177, !llvm.loop !18

177:                                              ; preds = %171
  %178 = add nsw i32 %173, %174
  %179 = add nuw nsw i64 %154, 1
  %180 = icmp eq i64 %179, %18
  br i1 %180, label %181, label %153, !llvm.loop !19

181:                                              ; preds = %177, %15
  %182 = icmp ne i32 %1, 0
  %183 = icmp sgt i32 %0, 0
  %184 = select i1 %182, i1 %183, i1 false
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = zext i32 %0 to i64
  br label %187

187:                                              ; preds = %185, %187
  %188 = phi i64 [ 0, %185 ], [ %195, %187 ]
  %189 = getelementptr inbounds [8 x double], [8 x double]* @ar, i64 0, i64 %188
  %190 = load double, double* %189, align 8, !tbaa !10
  %191 = fdiv double %190, %5
  store double %191, double* %189, align 8, !tbaa !10
  %192 = getelementptr inbounds [8 x double], [8 x double]* @ai, i64 0, i64 %188
  %193 = load double, double* %192, align 8, !tbaa !10
  %194 = fdiv double %193, %5
  store double %194, double* %192, align 8, !tbaa !10
  %195 = add nuw nsw i64 %188, 1
  %196 = icmp eq i64 %195, %186
  br i1 %196, label %197, label %187, !llvm.loop !20

197:                                              ; preds = %187, %181, %4, %2
  %198 = phi i32 [ 999, %2 ], [ 1, %4 ], [ 0, %181 ], [ 0, %187 ]
  ret i32 %198
}

attributes #0 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!"double", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
