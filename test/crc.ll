; ModuleID = 'crc.c'
source_filename = "crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lin = dso_local local_unnamed_addr global [256 x i8] c"asdffeagewaHAFEFaeDsFEawFdsFaefaeerdjgp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@icrc.icrctb = internal unnamed_addr global [256 x i16] zeroinitializer, align 16
@icrc.init = internal unnamed_addr global i1 false, align 2
@icrc.rchr = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@icrc.it = internal unnamed_addr constant [16 x i8] c"\00\08\04\0C\02\0A\06\0E\01\09\05\0D\03\0B\07\0F", align 16

; Function Attrs: nofree norecurse nosync nounwind readnone sspstrong uwtable
define dso_local zeroext i16 @icrc1(i16 zeroext %0, i8 zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i16
  %4 = shl nuw i16 %3, 8
  %5 = xor i16 %4, %0
  br label %6

6:                                                ; preds = %2, %6
  %7 = phi i16 [ %5, %2 ], [ %12, %6 ]
  %8 = phi i32 [ 0, %2 ], [ %13, %6 ]
  %9 = icmp sgt i16 %7, -1
  %10 = shl i16 %7, 1
  %11 = xor i16 %10, 4129
  %12 = select i1 %9, i16 %10, i16 %11
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %6, !llvm.loop !5

15:                                               ; preds = %6
  ret i16 %12
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local zeroext i16 @icrc(i16 zeroext %0, i64 %1, i16 signext %2, i32 %3) local_unnamed_addr #1 {
  %5 = load i1, i1* @icrc.init, align 2
  br i1 %5, label %37, label %6

6:                                                ; preds = %4
  store i1 true, i1* @icrc.init, align 2
  br label %7

7:                                                ; preds = %6, %21
  %8 = phi i64 [ 0, %6 ], [ %34, %21 ]
  %9 = phi i32 [ 0, %6 ], [ %35, %21 ]
  %10 = trunc i64 %8 to i16
  %11 = shl i16 %10, 8
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i16 [ %11, %7 ], [ %18, %12 ]
  %14 = phi i32 [ 0, %7 ], [ %19, %12 ]
  %15 = icmp sgt i16 %13, -1
  %16 = shl i16 %13, 1
  %17 = xor i16 %16, 4129
  %18 = select i1 %15, i16 %16, i16 %17
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %12, !llvm.loop !5

21:                                               ; preds = %12
  %22 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i64 0, i64 %8
  store i16 %18, i16* %22, align 2, !tbaa !8
  %23 = and i32 %9, 15
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1, !tbaa !12
  %27 = shl i8 %26, 4
  %28 = lshr i32 %9, 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1, !tbaa !12
  %32 = or i8 %27, %31
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %8
  store i8 %32, i8* %33, align 1, !tbaa !12
  %34 = add nuw nsw i64 %8, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i64 %34, 256
  br i1 %36, label %37, label %7, !llvm.loop !13

37:                                               ; preds = %21, %4
  %38 = icmp sgt i16 %2, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = and i16 %2, 255
  %41 = shl i16 %2, 8
  %42 = or i16 %41, %40
  br label %58

43:                                               ; preds = %37
  %44 = icmp slt i32 %3, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %43
  %46 = lshr i16 %0, 8
  %47 = zext i16 %46 to i64
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1, !tbaa !12
  %50 = zext i8 %49 to i16
  %51 = and i16 %0, 255
  %52 = zext i16 %51 to i64
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1, !tbaa !12
  %55 = zext i8 %54 to i16
  %56 = shl nuw i16 %55, 8
  %57 = or i16 %56, %50
  br label %58

58:                                               ; preds = %43, %45, %39
  %59 = phi i16 [ %42, %39 ], [ %57, %45 ], [ %0, %43 ]
  %60 = icmp slt i32 %3, 0
  %61 = icmp eq i64 %1, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %58, %72
  %63 = phi i64 [ %83, %72 ], [ 1, %58 ]
  %64 = phi i16 [ %81, %72 ], [ %59, %58 ]
  %65 = phi i16 [ %82, %72 ], [ 1, %58 ]
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i64 0, i64 %63
  %67 = load i8, i8* %66, align 1, !tbaa !12
  br i1 %60, label %68, label %72

68:                                               ; preds = %62
  %69 = zext i8 %67 to i64
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !12
  br label %72

72:                                               ; preds = %62, %68
  %73 = phi i8 [ %71, %68 ], [ %67, %62 ]
  %74 = zext i8 %73 to i16
  %75 = lshr i16 %64, 8
  %76 = xor i16 %75, %74
  %77 = zext i16 %76 to i64
  %78 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i64 0, i64 %77
  %79 = load i16, i16* %78, align 2, !tbaa !8
  %80 = shl i16 %64, 8
  %81 = xor i16 %79, %80
  %82 = add i16 %65, 1
  %83 = zext i16 %82 to i64
  %84 = icmp ugt i64 %83, %1
  br i1 %84, label %85, label %62, !llvm.loop !14

85:                                               ; preds = %72, %58
  %86 = phi i16 [ %59, %58 ], [ %81, %72 ]
  %87 = icmp sgt i32 %3, -1
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = lshr i16 %86, 8
  %90 = zext i16 %89 to i64
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1, !tbaa !12
  %93 = zext i8 %92 to i16
  %94 = and i16 %86, 255
  %95 = zext i16 %94 to i64
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1, !tbaa !12
  %98 = zext i8 %97 to i16
  %99 = shl nuw i16 %98, 8
  %100 = or i16 %99, %93
  br label %101

101:                                              ; preds = %85, %88
  %102 = phi i16 [ %100, %88 ], [ %86, %85 ]
  ret i16 %102
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #1 {
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i64 0, i64 41), align 1, !tbaa !12
  %1 = load i1, i1* @icrc.init, align 2
  br i1 %1, label %33, label %2

2:                                                ; preds = %0
  store i1 true, i1* @icrc.init, align 2
  br label %3

3:                                                ; preds = %17, %2
  %4 = phi i64 [ 0, %2 ], [ %30, %17 ]
  %5 = phi i32 [ 0, %2 ], [ %31, %17 ]
  %6 = trunc i64 %4 to i16
  %7 = shl i16 %6, 8
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i16 [ %7, %3 ], [ %14, %8 ]
  %10 = phi i32 [ 0, %3 ], [ %15, %8 ]
  %11 = icmp sgt i16 %9, -1
  %12 = shl i16 %9, 1
  %13 = xor i16 %12, 4129
  %14 = select i1 %11, i16 %12, i16 %13
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %8, !llvm.loop !5

17:                                               ; preds = %8
  %18 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i64 0, i64 %4
  store i16 %14, i16* %18, align 2, !tbaa !8
  %19 = and i32 %5, 15
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1, !tbaa !12
  %23 = shl i8 %22, 4
  %24 = lshr i32 %5, 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1, !tbaa !12
  %28 = or i8 %23, %27
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %4
  store i8 %28, i8* %29, align 1, !tbaa !12
  %30 = add nuw nsw i64 %4, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i64 %30, 256
  br i1 %32, label %33, label %3, !llvm.loop !13

33:                                               ; preds = %17, %0
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi i64 [ %47, %34 ], [ 1, %33 ]
  %36 = phi i16 [ %46, %34 ], [ 0, %33 ]
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @lin, i64 0, i64 %35
  %38 = load i8, i8* %37, align 1, !tbaa !12
  %39 = zext i8 %38 to i16
  %40 = lshr i16 %36, 8
  %41 = xor i16 %40, %39
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i64 0, i64 %42
  %44 = load i16, i16* %43, align 2, !tbaa !8
  %45 = shl i16 %36, 8
  %46 = xor i16 %44, %45
  %47 = add nuw nsw i64 %35, 1
  %48 = icmp eq i64 %47, 41
  br i1 %48, label %49, label %34, !llvm.loop !14

49:                                               ; preds = %34
  %50 = lshr i16 %46, 8
  %51 = trunc i16 %50 to i8
  store i8 %51, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i64 0, i64 41), align 1, !tbaa !12
  %52 = trunc i16 %44 to i8
  store i8 %52, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @lin, i64 0, i64 42), align 2, !tbaa !12
  %53 = load i1, i1* @icrc.init, align 2
  br i1 %53, label %85, label %54

54:                                               ; preds = %49
  store i1 true, i1* @icrc.init, align 2
  br label %55

55:                                               ; preds = %69, %54
  %56 = phi i64 [ 0, %54 ], [ %82, %69 ]
  %57 = phi i32 [ 0, %54 ], [ %83, %69 ]
  %58 = trunc i64 %56 to i16
  %59 = shl i16 %58, 8
  br label %60

60:                                               ; preds = %60, %55
  %61 = phi i16 [ %59, %55 ], [ %66, %60 ]
  %62 = phi i32 [ 0, %55 ], [ %67, %60 ]
  %63 = icmp sgt i16 %61, -1
  %64 = shl i16 %61, 1
  %65 = xor i16 %64, 4129
  %66 = select i1 %63, i16 %64, i16 %65
  %67 = add nuw nsw i32 %62, 1
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %60, !llvm.loop !5

69:                                               ; preds = %60
  %70 = getelementptr inbounds [256 x i16], [256 x i16]* @icrc.icrctb, i64 0, i64 %56
  store i16 %66, i16* %70, align 2, !tbaa !8
  %71 = and i32 %57, 15
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !12
  %75 = shl i8 %74, 4
  %76 = lshr i32 %57, 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* @icrc.it, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1, !tbaa !12
  %80 = or i8 %75, %79
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* @icrc.rchr, i64 0, i64 %56
  store i8 %80, i8* %81, align 1, !tbaa !12
  %82 = add nuw nsw i64 %56, 1
  %83 = trunc i64 %82 to i32
  %84 = icmp eq i64 %82, 256
  br i1 %84, label %85, label %55, !llvm.loop !13

85:                                               ; preds = %69, %49
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind readnone sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!"short", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
