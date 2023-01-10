; ModuleID = 'nsichneu.c'
source_filename = "nsichneu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@P1_is_marked = dso_local global i32 3, align 4
@P2_is_marked = dso_local global i32 5, align 4
@P3_is_marked = dso_local global i32 0, align 4
@P1_marking_member_0 = dso_local global [3 x i64] zeroinitializer, align 16
@P3_marking_member_0 = dso_local global [6 x i64] zeroinitializer, align 16
@P2_marking_member_0 = dso_local global [5 x i64] zeroinitializer, align 16

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %4461
  %2 = phi i32 [ 2, %0 ], [ %3, %4461 ]
  %3 = add nsw i32 %2, -1
  %4 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 2
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %11 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %15 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %19 = add nsw i32 %18, -3
  store volatile i32 %19, i32* @P1_is_marked, align 4, !tbaa !5
  %20 = sub nsw i64 %14, %15
  %21 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %22
  store volatile i64 %14, i64* %23, align 8, !tbaa !9
  %24 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %26
  store volatile i64 %15, i64* %27, align 8, !tbaa !9
  %28 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %29 = add nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %30
  store volatile i64 %20, i64* %31, align 8, !tbaa !9
  %32 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %33 = add nsw i32 %32, 3
  store volatile i32 %33, i32* @P3_is_marked, align 4, !tbaa !5
  br label %34

34:                                               ; preds = %13, %17, %9, %6, %1
  %35 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %42 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %46 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %50 = add nsw i32 %49, -3
  store volatile i32 %50, i32* @P1_is_marked, align 4, !tbaa !5
  %51 = sub nsw i64 %45, %46
  %52 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %53
  store volatile i64 %45, i64* %54, align 8, !tbaa !9
  %55 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %57
  store volatile i64 %46, i64* %58, align 8, !tbaa !9
  %59 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %61
  store volatile i64 %51, i64* %62, align 8, !tbaa !9
  %63 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %64 = add nsw i32 %63, 3
  store volatile i32 %64, i32* @P3_is_marked, align 4, !tbaa !5
  br label %65

65:                                               ; preds = %44, %48, %40, %37, %34
  %66 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %73 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %77 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %81 = add nsw i32 %80, -3
  store volatile i32 %81, i32* @P1_is_marked, align 4, !tbaa !5
  %82 = sub nsw i64 %76, %77
  %83 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %84
  store volatile i64 %76, i64* %85, align 8, !tbaa !9
  %86 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %88
  store volatile i64 %77, i64* %89, align 8, !tbaa !9
  %90 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %92
  store volatile i64 %82, i64* %93, align 8, !tbaa !9
  %94 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %95 = add nsw i32 %94, 3
  store volatile i32 %95, i32* @P3_is_marked, align 4, !tbaa !5
  br label %96

96:                                               ; preds = %75, %79, %71, %68, %65
  %97 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %98 = icmp sgt i32 %97, 2
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  %100 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %127

102:                                              ; preds = %99
  %103 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %104 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %108 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %112 = add nsw i32 %111, -3
  store volatile i32 %112, i32* @P1_is_marked, align 4, !tbaa !5
  %113 = sub nsw i64 %107, %108
  %114 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %115
  store volatile i64 %107, i64* %116, align 8, !tbaa !9
  %117 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %119
  store volatile i64 %108, i64* %120, align 8, !tbaa !9
  %121 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %122 = add nsw i32 %121, 2
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %123
  store volatile i64 %113, i64* %124, align 8, !tbaa !9
  %125 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %126 = add nsw i32 %125, 3
  store volatile i32 %126, i32* @P3_is_marked, align 4, !tbaa !5
  br label %127

127:                                              ; preds = %106, %110, %102, %99, %96
  %128 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %129 = icmp sgt i32 %128, 2
  br i1 %129, label %130, label %158

130:                                              ; preds = %127
  %131 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %158

133:                                              ; preds = %130
  %134 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %135 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %133
  %138 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %139 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %137
  %142 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %143 = add nsw i32 %142, -3
  store volatile i32 %143, i32* @P1_is_marked, align 4, !tbaa !5
  %144 = sub nsw i64 %138, %139
  %145 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %146
  store volatile i64 %138, i64* %147, align 8, !tbaa !9
  %148 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %150
  store volatile i64 %139, i64* %151, align 8, !tbaa !9
  %152 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %154
  store volatile i64 %144, i64* %155, align 8, !tbaa !9
  %156 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %157 = add nsw i32 %156, 3
  store volatile i32 %157, i32* @P3_is_marked, align 4, !tbaa !5
  br label %158

158:                                              ; preds = %137, %141, %133, %130, %127
  %159 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %160 = icmp sgt i32 %159, 2
  br i1 %160, label %161, label %189

161:                                              ; preds = %158
  %162 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %189

164:                                              ; preds = %161
  %165 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %166 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %164
  %169 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %170 = load volatile i64, i64* getelementptr inbounds ([3 x i64], [3 x i64]* @P1_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load volatile i32, i32* @P1_is_marked, align 4, !tbaa !5
  %174 = add nsw i32 %173, -3
  store volatile i32 %174, i32* @P1_is_marked, align 4, !tbaa !5
  %175 = sub nsw i64 %169, %170
  %176 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %177
  store volatile i64 %169, i64* %178, align 8, !tbaa !9
  %179 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %181
  store volatile i64 %170, i64* %182, align 8, !tbaa !9
  %183 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %184 = add nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %185
  store volatile i64 %175, i64* %186, align 8, !tbaa !9
  %187 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %188 = add nsw i32 %187, 3
  store volatile i32 %188, i32* @P3_is_marked, align 4, !tbaa !5
  br label %189

189:                                              ; preds = %168, %172, %164, %161, %158
  %190 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %191 = icmp sgt i32 %190, 3
  br i1 %191, label %192, label %224

192:                                              ; preds = %189
  %193 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %194 = icmp slt i32 %193, 4
  br i1 %194, label %195, label %224

195:                                              ; preds = %192
  %196 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %197 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %224

199:                                              ; preds = %195
  %200 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %201 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %224

203:                                              ; preds = %199
  %204 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %205 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %206 = icmp sgt i64 %205, %204
  br i1 %206, label %207, label %224

207:                                              ; preds = %203
  %208 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %209 = add nsw i32 %208, -4
  store volatile i32 %209, i32* @P2_is_marked, align 4, !tbaa !5
  %210 = add nsw i64 %205, %204
  %211 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %212
  store volatile i64 %204, i64* %213, align 8, !tbaa !9
  %214 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %216
  store volatile i64 %205, i64* %217, align 8, !tbaa !9
  %218 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %219 = add nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %220
  store volatile i64 %210, i64* %221, align 8, !tbaa !9
  %222 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %223 = add nsw i32 %222, 3
  store volatile i32 %223, i32* @P3_is_marked, align 4, !tbaa !5
  br label %224

224:                                              ; preds = %203, %207, %199, %195, %192, %189
  %225 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %226 = icmp sgt i32 %225, 3
  br i1 %226, label %227, label %259

227:                                              ; preds = %224
  %228 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %259

230:                                              ; preds = %227
  %231 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %232 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %230
  %235 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %236 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %259

238:                                              ; preds = %234
  %239 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %240 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %241 = icmp sgt i64 %240, %239
  br i1 %241, label %242, label %259

242:                                              ; preds = %238
  %243 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %244 = add nsw i32 %243, -4
  store volatile i32 %244, i32* @P2_is_marked, align 4, !tbaa !5
  %245 = add nsw i64 %240, %239
  %246 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %247
  store volatile i64 %239, i64* %248, align 8, !tbaa !9
  %249 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %251
  store volatile i64 %240, i64* %252, align 8, !tbaa !9
  %253 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %254 = add nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %255
  store volatile i64 %245, i64* %256, align 8, !tbaa !9
  %257 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %258 = add nsw i32 %257, 3
  store volatile i32 %258, i32* @P3_is_marked, align 4, !tbaa !5
  br label %259

259:                                              ; preds = %238, %242, %234, %230, %227, %224
  %260 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %261 = icmp sgt i32 %260, 3
  br i1 %261, label %262, label %294

262:                                              ; preds = %259
  %263 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %264 = icmp slt i32 %263, 4
  br i1 %264, label %265, label %294

265:                                              ; preds = %262
  %266 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %267 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %294

269:                                              ; preds = %265
  %270 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %271 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %294

273:                                              ; preds = %269
  %274 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %275 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %276 = icmp sgt i64 %275, %274
  br i1 %276, label %277, label %294

277:                                              ; preds = %273
  %278 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %279 = add nsw i32 %278, -4
  store volatile i32 %279, i32* @P2_is_marked, align 4, !tbaa !5
  %280 = add nsw i64 %275, %274
  %281 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %282
  store volatile i64 %274, i64* %283, align 8, !tbaa !9
  %284 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %286
  store volatile i64 %275, i64* %287, align 8, !tbaa !9
  %288 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %289 = add nsw i32 %288, 2
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %290
  store volatile i64 %280, i64* %291, align 8, !tbaa !9
  %292 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %293 = add nsw i32 %292, 3
  store volatile i32 %293, i32* @P3_is_marked, align 4, !tbaa !5
  br label %294

294:                                              ; preds = %273, %277, %269, %265, %262, %259
  %295 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %296 = icmp sgt i32 %295, 3
  br i1 %296, label %297, label %329

297:                                              ; preds = %294
  %298 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %299 = icmp slt i32 %298, 4
  br i1 %299, label %300, label %329

300:                                              ; preds = %297
  %301 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %302 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %329

304:                                              ; preds = %300
  %305 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %306 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %329

308:                                              ; preds = %304
  %309 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %310 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %311 = icmp sgt i64 %310, %309
  br i1 %311, label %312, label %329

312:                                              ; preds = %308
  %313 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %314 = add nsw i32 %313, -4
  store volatile i32 %314, i32* @P2_is_marked, align 4, !tbaa !5
  %315 = add nsw i64 %310, %309
  %316 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %317
  store volatile i64 %309, i64* %318, align 8, !tbaa !9
  %319 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %321
  store volatile i64 %310, i64* %322, align 8, !tbaa !9
  %323 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %324 = add nsw i32 %323, 2
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %325
  store volatile i64 %315, i64* %326, align 8, !tbaa !9
  %327 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %328 = add nsw i32 %327, 3
  store volatile i32 %328, i32* @P3_is_marked, align 4, !tbaa !5
  br label %329

329:                                              ; preds = %308, %312, %304, %300, %297, %294
  %330 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %331 = icmp sgt i32 %330, 3
  br i1 %331, label %332, label %364

332:                                              ; preds = %329
  %333 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %334 = icmp slt i32 %333, 4
  br i1 %334, label %335, label %364

335:                                              ; preds = %332
  %336 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %337 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %364

339:                                              ; preds = %335
  %340 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %341 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %364

343:                                              ; preds = %339
  %344 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %345 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %346 = icmp sgt i64 %345, %344
  br i1 %346, label %347, label %364

347:                                              ; preds = %343
  %348 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %349 = add nsw i32 %348, -4
  store volatile i32 %349, i32* @P2_is_marked, align 4, !tbaa !5
  %350 = add nsw i64 %345, %344
  %351 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %352
  store volatile i64 %344, i64* %353, align 8, !tbaa !9
  %354 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %355 = add nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %356
  store volatile i64 %345, i64* %357, align 8, !tbaa !9
  %358 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %359 = add nsw i32 %358, 2
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %360
  store volatile i64 %350, i64* %361, align 8, !tbaa !9
  %362 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %363 = add nsw i32 %362, 3
  store volatile i32 %363, i32* @P3_is_marked, align 4, !tbaa !5
  br label %364

364:                                              ; preds = %343, %347, %339, %335, %332, %329
  %365 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %366 = icmp sgt i32 %365, 3
  br i1 %366, label %367, label %399

367:                                              ; preds = %364
  %368 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %369 = icmp slt i32 %368, 4
  br i1 %369, label %370, label %399

370:                                              ; preds = %367
  %371 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %372 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %399

374:                                              ; preds = %370
  %375 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %376 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %377 = icmp eq i64 %375, %376
  br i1 %377, label %378, label %399

378:                                              ; preds = %374
  %379 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %380 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %381 = icmp sgt i64 %380, %379
  br i1 %381, label %382, label %399

382:                                              ; preds = %378
  %383 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %384 = add nsw i32 %383, -4
  store volatile i32 %384, i32* @P2_is_marked, align 4, !tbaa !5
  %385 = add nsw i64 %380, %379
  %386 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %387
  store volatile i64 %379, i64* %388, align 8, !tbaa !9
  %389 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %390 = add nsw i32 %389, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %391
  store volatile i64 %380, i64* %392, align 8, !tbaa !9
  %393 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %394 = add nsw i32 %393, 2
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %395
  store volatile i64 %385, i64* %396, align 8, !tbaa !9
  %397 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %398 = add nsw i32 %397, 3
  store volatile i32 %398, i32* @P3_is_marked, align 4, !tbaa !5
  br label %399

399:                                              ; preds = %378, %382, %374, %370, %367, %364
  %400 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %401 = icmp sgt i32 %400, 3
  br i1 %401, label %402, label %434

402:                                              ; preds = %399
  %403 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %404 = icmp slt i32 %403, 4
  br i1 %404, label %405, label %434

405:                                              ; preds = %402
  %406 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %407 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %434

409:                                              ; preds = %405
  %410 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %411 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %434

413:                                              ; preds = %409
  %414 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %415 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %416 = icmp sgt i64 %415, %414
  br i1 %416, label %417, label %434

417:                                              ; preds = %413
  %418 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %419 = add nsw i32 %418, -4
  store volatile i32 %419, i32* @P2_is_marked, align 4, !tbaa !5
  %420 = add nsw i64 %415, %414
  %421 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %422
  store volatile i64 %414, i64* %423, align 8, !tbaa !9
  %424 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %425 = add nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %426
  store volatile i64 %415, i64* %427, align 8, !tbaa !9
  %428 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %429 = add nsw i32 %428, 2
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %430
  store volatile i64 %420, i64* %431, align 8, !tbaa !9
  %432 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %433 = add nsw i32 %432, 3
  store volatile i32 %433, i32* @P3_is_marked, align 4, !tbaa !5
  br label %434

434:                                              ; preds = %413, %417, %409, %405, %402, %399
  %435 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %436 = icmp sgt i32 %435, 3
  br i1 %436, label %437, label %469

437:                                              ; preds = %434
  %438 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %439 = icmp slt i32 %438, 4
  br i1 %439, label %440, label %469

440:                                              ; preds = %437
  %441 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %442 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %469

444:                                              ; preds = %440
  %445 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %446 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %469

448:                                              ; preds = %444
  %449 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %450 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %451 = icmp sgt i64 %450, %449
  br i1 %451, label %452, label %469

452:                                              ; preds = %448
  %453 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %454 = add nsw i32 %453, -4
  store volatile i32 %454, i32* @P2_is_marked, align 4, !tbaa !5
  %455 = add nsw i64 %450, %449
  %456 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %457
  store volatile i64 %449, i64* %458, align 8, !tbaa !9
  %459 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %460 = add nsw i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %461
  store volatile i64 %450, i64* %462, align 8, !tbaa !9
  %463 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %464 = add nsw i32 %463, 2
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %465
  store volatile i64 %455, i64* %466, align 8, !tbaa !9
  %467 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %468 = add nsw i32 %467, 3
  store volatile i32 %468, i32* @P3_is_marked, align 4, !tbaa !5
  br label %469

469:                                              ; preds = %448, %452, %444, %440, %437, %434
  %470 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %471 = icmp sgt i32 %470, 3
  br i1 %471, label %472, label %504

472:                                              ; preds = %469
  %473 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %474 = icmp slt i32 %473, 4
  br i1 %474, label %475, label %504

475:                                              ; preds = %472
  %476 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %477 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %504

479:                                              ; preds = %475
  %480 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %481 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %504

483:                                              ; preds = %479
  %484 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %485 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %486 = icmp sgt i64 %485, %484
  br i1 %486, label %487, label %504

487:                                              ; preds = %483
  %488 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %489 = add nsw i32 %488, -4
  store volatile i32 %489, i32* @P2_is_marked, align 4, !tbaa !5
  %490 = add nsw i64 %485, %484
  %491 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %492
  store volatile i64 %484, i64* %493, align 8, !tbaa !9
  %494 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %495 = add nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %496
  store volatile i64 %485, i64* %497, align 8, !tbaa !9
  %498 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %499 = add nsw i32 %498, 2
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %500
  store volatile i64 %490, i64* %501, align 8, !tbaa !9
  %502 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %503 = add nsw i32 %502, 3
  store volatile i32 %503, i32* @P3_is_marked, align 4, !tbaa !5
  br label %504

504:                                              ; preds = %483, %487, %479, %475, %472, %469
  %505 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %506 = icmp sgt i32 %505, 3
  br i1 %506, label %507, label %539

507:                                              ; preds = %504
  %508 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %509 = icmp slt i32 %508, 4
  br i1 %509, label %510, label %539

510:                                              ; preds = %507
  %511 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %512 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %513 = icmp eq i64 %511, %512
  br i1 %513, label %514, label %539

514:                                              ; preds = %510
  %515 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %516 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %539

518:                                              ; preds = %514
  %519 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %520 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %521 = icmp sgt i64 %520, %519
  br i1 %521, label %522, label %539

522:                                              ; preds = %518
  %523 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %524 = add nsw i32 %523, -4
  store volatile i32 %524, i32* @P2_is_marked, align 4, !tbaa !5
  %525 = add nsw i64 %520, %519
  %526 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %527
  store volatile i64 %519, i64* %528, align 8, !tbaa !9
  %529 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %530 = add nsw i32 %529, 1
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %531
  store volatile i64 %520, i64* %532, align 8, !tbaa !9
  %533 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %534 = add nsw i32 %533, 2
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %535
  store volatile i64 %525, i64* %536, align 8, !tbaa !9
  %537 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %538 = add nsw i32 %537, 3
  store volatile i32 %538, i32* @P3_is_marked, align 4, !tbaa !5
  br label %539

539:                                              ; preds = %518, %522, %514, %510, %507, %504
  %540 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %541 = icmp sgt i32 %540, 3
  br i1 %541, label %542, label %574

542:                                              ; preds = %539
  %543 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %544 = icmp slt i32 %543, 4
  br i1 %544, label %545, label %574

545:                                              ; preds = %542
  %546 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %547 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %548 = icmp eq i64 %546, %547
  br i1 %548, label %549, label %574

549:                                              ; preds = %545
  %550 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %551 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %552 = icmp eq i64 %550, %551
  br i1 %552, label %553, label %574

553:                                              ; preds = %549
  %554 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %555 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %556 = icmp sgt i64 %555, %554
  br i1 %556, label %557, label %574

557:                                              ; preds = %553
  %558 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %559 = add nsw i32 %558, -4
  store volatile i32 %559, i32* @P2_is_marked, align 4, !tbaa !5
  %560 = add nsw i64 %555, %554
  %561 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %562
  store volatile i64 %554, i64* %563, align 8, !tbaa !9
  %564 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %565 = add nsw i32 %564, 1
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %566
  store volatile i64 %555, i64* %567, align 8, !tbaa !9
  %568 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %569 = add nsw i32 %568, 2
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %570
  store volatile i64 %560, i64* %571, align 8, !tbaa !9
  %572 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %573 = add nsw i32 %572, 3
  store volatile i32 %573, i32* @P3_is_marked, align 4, !tbaa !5
  br label %574

574:                                              ; preds = %553, %557, %549, %545, %542, %539
  %575 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %576 = icmp sgt i32 %575, 3
  br i1 %576, label %577, label %609

577:                                              ; preds = %574
  %578 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %579 = icmp slt i32 %578, 4
  br i1 %579, label %580, label %609

580:                                              ; preds = %577
  %581 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %582 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %583 = icmp eq i64 %581, %582
  br i1 %583, label %584, label %609

584:                                              ; preds = %580
  %585 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %586 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %587 = icmp eq i64 %585, %586
  br i1 %587, label %588, label %609

588:                                              ; preds = %584
  %589 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %590 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %591 = icmp sgt i64 %590, %589
  br i1 %591, label %592, label %609

592:                                              ; preds = %588
  %593 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %594 = add nsw i32 %593, -4
  store volatile i32 %594, i32* @P2_is_marked, align 4, !tbaa !5
  %595 = add nsw i64 %590, %589
  %596 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %597
  store volatile i64 %589, i64* %598, align 8, !tbaa !9
  %599 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %600 = add nsw i32 %599, 1
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %601
  store volatile i64 %590, i64* %602, align 8, !tbaa !9
  %603 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %604 = add nsw i32 %603, 2
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %605
  store volatile i64 %595, i64* %606, align 8, !tbaa !9
  %607 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %608 = add nsw i32 %607, 3
  store volatile i32 %608, i32* @P3_is_marked, align 4, !tbaa !5
  br label %609

609:                                              ; preds = %588, %592, %584, %580, %577, %574
  %610 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %611 = icmp sgt i32 %610, 3
  br i1 %611, label %612, label %644

612:                                              ; preds = %609
  %613 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %614 = icmp slt i32 %613, 4
  br i1 %614, label %615, label %644

615:                                              ; preds = %612
  %616 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %617 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %618 = icmp eq i64 %616, %617
  br i1 %618, label %619, label %644

619:                                              ; preds = %615
  %620 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %621 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %622 = icmp eq i64 %620, %621
  br i1 %622, label %623, label %644

623:                                              ; preds = %619
  %624 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %625 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %626 = icmp sgt i64 %625, %624
  br i1 %626, label %627, label %644

627:                                              ; preds = %623
  %628 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %629 = add nsw i32 %628, -4
  store volatile i32 %629, i32* @P2_is_marked, align 4, !tbaa !5
  %630 = add nsw i64 %625, %624
  %631 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %632
  store volatile i64 %624, i64* %633, align 8, !tbaa !9
  %634 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %635 = add nsw i32 %634, 1
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %636
  store volatile i64 %625, i64* %637, align 8, !tbaa !9
  %638 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %639 = add nsw i32 %638, 2
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %640
  store volatile i64 %630, i64* %641, align 8, !tbaa !9
  %642 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %643 = add nsw i32 %642, 3
  store volatile i32 %643, i32* @P3_is_marked, align 4, !tbaa !5
  br label %644

644:                                              ; preds = %623, %627, %619, %615, %612, %609
  %645 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %646 = icmp sgt i32 %645, 3
  br i1 %646, label %647, label %679

647:                                              ; preds = %644
  %648 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %649 = icmp slt i32 %648, 4
  br i1 %649, label %650, label %679

650:                                              ; preds = %647
  %651 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %652 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %653 = icmp eq i64 %651, %652
  br i1 %653, label %654, label %679

654:                                              ; preds = %650
  %655 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %656 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %657 = icmp eq i64 %655, %656
  br i1 %657, label %658, label %679

658:                                              ; preds = %654
  %659 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %660 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %661 = icmp sgt i64 %660, %659
  br i1 %661, label %662, label %679

662:                                              ; preds = %658
  %663 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %664 = add nsw i32 %663, -4
  store volatile i32 %664, i32* @P2_is_marked, align 4, !tbaa !5
  %665 = add nsw i64 %660, %659
  %666 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %667
  store volatile i64 %659, i64* %668, align 8, !tbaa !9
  %669 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %670 = add nsw i32 %669, 1
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %671
  store volatile i64 %660, i64* %672, align 8, !tbaa !9
  %673 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %674 = add nsw i32 %673, 2
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %675
  store volatile i64 %665, i64* %676, align 8, !tbaa !9
  %677 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %678 = add nsw i32 %677, 3
  store volatile i32 %678, i32* @P3_is_marked, align 4, !tbaa !5
  br label %679

679:                                              ; preds = %658, %662, %654, %650, %647, %644
  %680 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %681 = icmp sgt i32 %680, 3
  br i1 %681, label %682, label %714

682:                                              ; preds = %679
  %683 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %684 = icmp slt i32 %683, 4
  br i1 %684, label %685, label %714

685:                                              ; preds = %682
  %686 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %687 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %688 = icmp eq i64 %686, %687
  br i1 %688, label %689, label %714

689:                                              ; preds = %685
  %690 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %691 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %692 = icmp eq i64 %690, %691
  br i1 %692, label %693, label %714

693:                                              ; preds = %689
  %694 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %695 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %696 = icmp sgt i64 %695, %694
  br i1 %696, label %697, label %714

697:                                              ; preds = %693
  %698 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %699 = add nsw i32 %698, -4
  store volatile i32 %699, i32* @P2_is_marked, align 4, !tbaa !5
  %700 = add nsw i64 %695, %694
  %701 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %702
  store volatile i64 %694, i64* %703, align 8, !tbaa !9
  %704 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %705 = add nsw i32 %704, 1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %706
  store volatile i64 %695, i64* %707, align 8, !tbaa !9
  %708 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %709 = add nsw i32 %708, 2
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %710
  store volatile i64 %700, i64* %711, align 8, !tbaa !9
  %712 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %713 = add nsw i32 %712, 3
  store volatile i32 %713, i32* @P3_is_marked, align 4, !tbaa !5
  br label %714

714:                                              ; preds = %693, %697, %689, %685, %682, %679
  %715 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %716 = icmp sgt i32 %715, 3
  br i1 %716, label %717, label %749

717:                                              ; preds = %714
  %718 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %719 = icmp slt i32 %718, 4
  br i1 %719, label %720, label %749

720:                                              ; preds = %717
  %721 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %722 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %723 = icmp eq i64 %721, %722
  br i1 %723, label %724, label %749

724:                                              ; preds = %720
  %725 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %726 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %727 = icmp eq i64 %725, %726
  br i1 %727, label %728, label %749

728:                                              ; preds = %724
  %729 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %730 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %731 = icmp sgt i64 %730, %729
  br i1 %731, label %732, label %749

732:                                              ; preds = %728
  %733 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %734 = add nsw i32 %733, -4
  store volatile i32 %734, i32* @P2_is_marked, align 4, !tbaa !5
  %735 = add nsw i64 %730, %729
  %736 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %737
  store volatile i64 %729, i64* %738, align 8, !tbaa !9
  %739 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %740 = add nsw i32 %739, 1
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %741
  store volatile i64 %730, i64* %742, align 8, !tbaa !9
  %743 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %744 = add nsw i32 %743, 2
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %745
  store volatile i64 %735, i64* %746, align 8, !tbaa !9
  %747 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %748 = add nsw i32 %747, 3
  store volatile i32 %748, i32* @P3_is_marked, align 4, !tbaa !5
  br label %749

749:                                              ; preds = %728, %732, %724, %720, %717, %714
  %750 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %751 = icmp sgt i32 %750, 3
  br i1 %751, label %752, label %784

752:                                              ; preds = %749
  %753 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %754 = icmp slt i32 %753, 4
  br i1 %754, label %755, label %784

755:                                              ; preds = %752
  %756 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %757 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %758 = icmp eq i64 %756, %757
  br i1 %758, label %759, label %784

759:                                              ; preds = %755
  %760 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %761 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %762 = icmp eq i64 %760, %761
  br i1 %762, label %763, label %784

763:                                              ; preds = %759
  %764 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %765 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %766 = icmp sgt i64 %765, %764
  br i1 %766, label %767, label %784

767:                                              ; preds = %763
  %768 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %769 = add nsw i32 %768, -4
  store volatile i32 %769, i32* @P2_is_marked, align 4, !tbaa !5
  %770 = add nsw i64 %765, %764
  %771 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %772
  store volatile i64 %764, i64* %773, align 8, !tbaa !9
  %774 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %775 = add nsw i32 %774, 1
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %776
  store volatile i64 %765, i64* %777, align 8, !tbaa !9
  %778 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %779 = add nsw i32 %778, 2
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %780
  store volatile i64 %770, i64* %781, align 8, !tbaa !9
  %782 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %783 = add nsw i32 %782, 3
  store volatile i32 %783, i32* @P3_is_marked, align 4, !tbaa !5
  br label %784

784:                                              ; preds = %763, %767, %759, %755, %752, %749
  %785 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %786 = icmp sgt i32 %785, 3
  br i1 %786, label %787, label %819

787:                                              ; preds = %784
  %788 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %789 = icmp slt i32 %788, 4
  br i1 %789, label %790, label %819

790:                                              ; preds = %787
  %791 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %792 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %793 = icmp eq i64 %791, %792
  br i1 %793, label %794, label %819

794:                                              ; preds = %790
  %795 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %796 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %797 = icmp eq i64 %795, %796
  br i1 %797, label %798, label %819

798:                                              ; preds = %794
  %799 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %800 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %801 = icmp sgt i64 %800, %799
  br i1 %801, label %802, label %819

802:                                              ; preds = %798
  %803 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %804 = add nsw i32 %803, -4
  store volatile i32 %804, i32* @P2_is_marked, align 4, !tbaa !5
  %805 = add nsw i64 %800, %799
  %806 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %807
  store volatile i64 %799, i64* %808, align 8, !tbaa !9
  %809 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %810 = add nsw i32 %809, 1
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %811
  store volatile i64 %800, i64* %812, align 8, !tbaa !9
  %813 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %814 = add nsw i32 %813, 2
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %815
  store volatile i64 %805, i64* %816, align 8, !tbaa !9
  %817 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %818 = add nsw i32 %817, 3
  store volatile i32 %818, i32* @P3_is_marked, align 4, !tbaa !5
  br label %819

819:                                              ; preds = %798, %802, %794, %790, %787, %784
  %820 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %821 = icmp sgt i32 %820, 3
  br i1 %821, label %822, label %854

822:                                              ; preds = %819
  %823 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %824 = icmp slt i32 %823, 4
  br i1 %824, label %825, label %854

825:                                              ; preds = %822
  %826 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %827 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %828 = icmp eq i64 %826, %827
  br i1 %828, label %829, label %854

829:                                              ; preds = %825
  %830 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %831 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %832 = icmp eq i64 %830, %831
  br i1 %832, label %833, label %854

833:                                              ; preds = %829
  %834 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %835 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %836 = icmp sgt i64 %835, %834
  br i1 %836, label %837, label %854

837:                                              ; preds = %833
  %838 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %839 = add nsw i32 %838, -4
  store volatile i32 %839, i32* @P2_is_marked, align 4, !tbaa !5
  %840 = add nsw i64 %835, %834
  %841 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %842
  store volatile i64 %834, i64* %843, align 8, !tbaa !9
  %844 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %845 = add nsw i32 %844, 1
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %846
  store volatile i64 %835, i64* %847, align 8, !tbaa !9
  %848 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %849 = add nsw i32 %848, 2
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %850
  store volatile i64 %840, i64* %851, align 8, !tbaa !9
  %852 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %853 = add nsw i32 %852, 3
  store volatile i32 %853, i32* @P3_is_marked, align 4, !tbaa !5
  br label %854

854:                                              ; preds = %833, %837, %829, %825, %822, %819
  %855 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %856 = icmp sgt i32 %855, 3
  br i1 %856, label %857, label %889

857:                                              ; preds = %854
  %858 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %859 = icmp slt i32 %858, 4
  br i1 %859, label %860, label %889

860:                                              ; preds = %857
  %861 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %862 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %863 = icmp eq i64 %861, %862
  br i1 %863, label %864, label %889

864:                                              ; preds = %860
  %865 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %866 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %867 = icmp eq i64 %865, %866
  br i1 %867, label %868, label %889

868:                                              ; preds = %864
  %869 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %870 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %871 = icmp sgt i64 %870, %869
  br i1 %871, label %872, label %889

872:                                              ; preds = %868
  %873 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %874 = add nsw i32 %873, -4
  store volatile i32 %874, i32* @P2_is_marked, align 4, !tbaa !5
  %875 = add nsw i64 %870, %869
  %876 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %877
  store volatile i64 %869, i64* %878, align 8, !tbaa !9
  %879 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %880 = add nsw i32 %879, 1
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %881
  store volatile i64 %870, i64* %882, align 8, !tbaa !9
  %883 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %884 = add nsw i32 %883, 2
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %885
  store volatile i64 %875, i64* %886, align 8, !tbaa !9
  %887 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %888 = add nsw i32 %887, 3
  store volatile i32 %888, i32* @P3_is_marked, align 4, !tbaa !5
  br label %889

889:                                              ; preds = %868, %872, %864, %860, %857, %854
  %890 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %891 = icmp sgt i32 %890, 3
  br i1 %891, label %892, label %924

892:                                              ; preds = %889
  %893 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %894 = icmp slt i32 %893, 4
  br i1 %894, label %895, label %924

895:                                              ; preds = %892
  %896 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %897 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %898 = icmp eq i64 %896, %897
  br i1 %898, label %899, label %924

899:                                              ; preds = %895
  %900 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %901 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %902 = icmp eq i64 %900, %901
  br i1 %902, label %903, label %924

903:                                              ; preds = %899
  %904 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %905 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %906 = icmp sgt i64 %905, %904
  br i1 %906, label %907, label %924

907:                                              ; preds = %903
  %908 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %909 = add nsw i32 %908, -4
  store volatile i32 %909, i32* @P2_is_marked, align 4, !tbaa !5
  %910 = add nsw i64 %905, %904
  %911 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %912
  store volatile i64 %904, i64* %913, align 8, !tbaa !9
  %914 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %915 = add nsw i32 %914, 1
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %916
  store volatile i64 %905, i64* %917, align 8, !tbaa !9
  %918 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %919 = add nsw i32 %918, 2
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %920
  store volatile i64 %910, i64* %921, align 8, !tbaa !9
  %922 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %923 = add nsw i32 %922, 3
  store volatile i32 %923, i32* @P3_is_marked, align 4, !tbaa !5
  br label %924

924:                                              ; preds = %903, %907, %899, %895, %892, %889
  %925 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %926 = icmp sgt i32 %925, 3
  br i1 %926, label %927, label %959

927:                                              ; preds = %924
  %928 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %929 = icmp slt i32 %928, 4
  br i1 %929, label %930, label %959

930:                                              ; preds = %927
  %931 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %932 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %933 = icmp eq i64 %931, %932
  br i1 %933, label %934, label %959

934:                                              ; preds = %930
  %935 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %936 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %937 = icmp eq i64 %935, %936
  br i1 %937, label %938, label %959

938:                                              ; preds = %934
  %939 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %940 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %941 = icmp sgt i64 %940, %939
  br i1 %941, label %942, label %959

942:                                              ; preds = %938
  %943 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %944 = add nsw i32 %943, -4
  store volatile i32 %944, i32* @P2_is_marked, align 4, !tbaa !5
  %945 = add nsw i64 %940, %939
  %946 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %947
  store volatile i64 %939, i64* %948, align 8, !tbaa !9
  %949 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %950 = add nsw i32 %949, 1
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %951
  store volatile i64 %940, i64* %952, align 8, !tbaa !9
  %953 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %954 = add nsw i32 %953, 2
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %955
  store volatile i64 %945, i64* %956, align 8, !tbaa !9
  %957 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %958 = add nsw i32 %957, 3
  store volatile i32 %958, i32* @P3_is_marked, align 4, !tbaa !5
  br label %959

959:                                              ; preds = %938, %942, %934, %930, %927, %924
  %960 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %961 = icmp sgt i32 %960, 3
  br i1 %961, label %962, label %994

962:                                              ; preds = %959
  %963 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %964 = icmp slt i32 %963, 4
  br i1 %964, label %965, label %994

965:                                              ; preds = %962
  %966 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %967 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %968 = icmp eq i64 %966, %967
  br i1 %968, label %969, label %994

969:                                              ; preds = %965
  %970 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %971 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %972 = icmp eq i64 %970, %971
  br i1 %972, label %973, label %994

973:                                              ; preds = %969
  %974 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %975 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %976 = icmp sgt i64 %975, %974
  br i1 %976, label %977, label %994

977:                                              ; preds = %973
  %978 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %979 = add nsw i32 %978, -4
  store volatile i32 %979, i32* @P2_is_marked, align 4, !tbaa !5
  %980 = add nsw i64 %975, %974
  %981 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %982
  store volatile i64 %974, i64* %983, align 8, !tbaa !9
  %984 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %985 = add nsw i32 %984, 1
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %986
  store volatile i64 %975, i64* %987, align 8, !tbaa !9
  %988 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %989 = add nsw i32 %988, 2
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %990
  store volatile i64 %980, i64* %991, align 8, !tbaa !9
  %992 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %993 = add nsw i32 %992, 3
  store volatile i32 %993, i32* @P3_is_marked, align 4, !tbaa !5
  br label %994

994:                                              ; preds = %973, %977, %969, %965, %962, %959
  %995 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %996 = icmp sgt i32 %995, 3
  br i1 %996, label %997, label %1029

997:                                              ; preds = %994
  %998 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %999 = icmp slt i32 %998, 4
  br i1 %999, label %1000, label %1029

1000:                                             ; preds = %997
  %1001 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1002 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1003 = icmp eq i64 %1001, %1002
  br i1 %1003, label %1004, label %1029

1004:                                             ; preds = %1000
  %1005 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1006 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1007 = icmp eq i64 %1005, %1006
  br i1 %1007, label %1008, label %1029

1008:                                             ; preds = %1004
  %1009 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1010 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1011 = icmp sgt i64 %1010, %1009
  br i1 %1011, label %1012, label %1029

1012:                                             ; preds = %1008
  %1013 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1014 = add nsw i32 %1013, -4
  store volatile i32 %1014, i32* @P2_is_marked, align 4, !tbaa !5
  %1015 = add nsw i64 %1010, %1009
  %1016 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1017
  store volatile i64 %1009, i64* %1018, align 8, !tbaa !9
  %1019 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1020 = add nsw i32 %1019, 1
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1021
  store volatile i64 %1010, i64* %1022, align 8, !tbaa !9
  %1023 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1024 = add nsw i32 %1023, 2
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1025
  store volatile i64 %1015, i64* %1026, align 8, !tbaa !9
  %1027 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1028 = add nsw i32 %1027, 3
  store volatile i32 %1028, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1029

1029:                                             ; preds = %1008, %1012, %1004, %1000, %997, %994
  %1030 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1031 = icmp sgt i32 %1030, 4
  br i1 %1031, label %1032, label %1065

1032:                                             ; preds = %1029
  %1033 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1034 = icmp slt i32 %1033, 4
  br i1 %1034, label %1035, label %1065

1035:                                             ; preds = %1032
  %1036 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1037 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1038 = icmp eq i64 %1036, %1037
  br i1 %1038, label %1039, label %1065

1039:                                             ; preds = %1035
  %1040 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1041 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1042 = icmp eq i64 %1040, %1041
  br i1 %1042, label %1043, label %1065

1043:                                             ; preds = %1039
  %1044 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1045 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1046 = icmp sgt i64 %1045, %1044
  br i1 %1046, label %1047, label %1065

1047:                                             ; preds = %1043
  %1048 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1048, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1049 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1050 = add nsw i32 %1049, -4
  store volatile i32 %1050, i32* @P2_is_marked, align 4, !tbaa !5
  %1051 = add nsw i64 %1045, %1044
  %1052 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1053
  store volatile i64 %1044, i64* %1054, align 8, !tbaa !9
  %1055 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1056 = add nsw i32 %1055, 1
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1057
  store volatile i64 %1045, i64* %1058, align 8, !tbaa !9
  %1059 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1060 = add nsw i32 %1059, 2
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1061
  store volatile i64 %1051, i64* %1062, align 8, !tbaa !9
  %1063 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1064 = add nsw i32 %1063, 3
  store volatile i32 %1064, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1065

1065:                                             ; preds = %1043, %1047, %1039, %1035, %1032, %1029
  %1066 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1067 = icmp sgt i32 %1066, 4
  br i1 %1067, label %1068, label %1101

1068:                                             ; preds = %1065
  %1069 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1070 = icmp slt i32 %1069, 4
  br i1 %1070, label %1071, label %1101

1071:                                             ; preds = %1068
  %1072 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1073 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1074 = icmp eq i64 %1072, %1073
  br i1 %1074, label %1075, label %1101

1075:                                             ; preds = %1071
  %1076 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1077 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1078 = icmp eq i64 %1076, %1077
  br i1 %1078, label %1079, label %1101

1079:                                             ; preds = %1075
  %1080 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1081 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1082 = icmp sgt i64 %1081, %1080
  br i1 %1082, label %1083, label %1101

1083:                                             ; preds = %1079
  %1084 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1084, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1085 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1086 = add nsw i32 %1085, -4
  store volatile i32 %1086, i32* @P2_is_marked, align 4, !tbaa !5
  %1087 = add nsw i64 %1081, %1080
  %1088 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1089
  store volatile i64 %1080, i64* %1090, align 8, !tbaa !9
  %1091 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1092 = add nsw i32 %1091, 1
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1093
  store volatile i64 %1081, i64* %1094, align 8, !tbaa !9
  %1095 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1096 = add nsw i32 %1095, 2
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1097
  store volatile i64 %1087, i64* %1098, align 8, !tbaa !9
  %1099 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1100 = add nsw i32 %1099, 3
  store volatile i32 %1100, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1101

1101:                                             ; preds = %1079, %1083, %1075, %1071, %1068, %1065
  %1102 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1103 = icmp sgt i32 %1102, 4
  br i1 %1103, label %1104, label %1137

1104:                                             ; preds = %1101
  %1105 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1106 = icmp slt i32 %1105, 4
  br i1 %1106, label %1107, label %1137

1107:                                             ; preds = %1104
  %1108 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1109 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1110 = icmp eq i64 %1108, %1109
  br i1 %1110, label %1111, label %1137

1111:                                             ; preds = %1107
  %1112 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1113 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1114 = icmp eq i64 %1112, %1113
  br i1 %1114, label %1115, label %1137

1115:                                             ; preds = %1111
  %1116 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1117 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1118 = icmp sgt i64 %1117, %1116
  br i1 %1118, label %1119, label %1137

1119:                                             ; preds = %1115
  %1120 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1120, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1121 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1122 = add nsw i32 %1121, -4
  store volatile i32 %1122, i32* @P2_is_marked, align 4, !tbaa !5
  %1123 = add nsw i64 %1117, %1116
  %1124 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1125
  store volatile i64 %1116, i64* %1126, align 8, !tbaa !9
  %1127 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1128 = add nsw i32 %1127, 1
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1129
  store volatile i64 %1117, i64* %1130, align 8, !tbaa !9
  %1131 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1132 = add nsw i32 %1131, 2
  %1133 = sext i32 %1132 to i64
  %1134 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1133
  store volatile i64 %1123, i64* %1134, align 8, !tbaa !9
  %1135 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1136 = add nsw i32 %1135, 3
  store volatile i32 %1136, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1137

1137:                                             ; preds = %1115, %1119, %1111, %1107, %1104, %1101
  %1138 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1139 = icmp sgt i32 %1138, 4
  br i1 %1139, label %1140, label %1173

1140:                                             ; preds = %1137
  %1141 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1142 = icmp slt i32 %1141, 4
  br i1 %1142, label %1143, label %1173

1143:                                             ; preds = %1140
  %1144 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1145 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1146 = icmp eq i64 %1144, %1145
  br i1 %1146, label %1147, label %1173

1147:                                             ; preds = %1143
  %1148 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1149 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1150 = icmp eq i64 %1148, %1149
  br i1 %1150, label %1151, label %1173

1151:                                             ; preds = %1147
  %1152 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1153 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1154 = icmp sgt i64 %1153, %1152
  br i1 %1154, label %1155, label %1173

1155:                                             ; preds = %1151
  %1156 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1156, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1157 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1158 = add nsw i32 %1157, -4
  store volatile i32 %1158, i32* @P2_is_marked, align 4, !tbaa !5
  %1159 = add nsw i64 %1153, %1152
  %1160 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1161
  store volatile i64 %1152, i64* %1162, align 8, !tbaa !9
  %1163 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1164 = add nsw i32 %1163, 1
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1165
  store volatile i64 %1153, i64* %1166, align 8, !tbaa !9
  %1167 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1168 = add nsw i32 %1167, 2
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1169
  store volatile i64 %1159, i64* %1170, align 8, !tbaa !9
  %1171 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1172 = add nsw i32 %1171, 3
  store volatile i32 %1172, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1173

1173:                                             ; preds = %1151, %1155, %1147, %1143, %1140, %1137
  %1174 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1175 = icmp sgt i32 %1174, 4
  br i1 %1175, label %1176, label %1209

1176:                                             ; preds = %1173
  %1177 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1178 = icmp slt i32 %1177, 4
  br i1 %1178, label %1179, label %1209

1179:                                             ; preds = %1176
  %1180 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1181 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1182 = icmp eq i64 %1180, %1181
  br i1 %1182, label %1183, label %1209

1183:                                             ; preds = %1179
  %1184 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1185 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1186 = icmp eq i64 %1184, %1185
  br i1 %1186, label %1187, label %1209

1187:                                             ; preds = %1183
  %1188 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1189 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1190 = icmp sgt i64 %1189, %1188
  br i1 %1190, label %1191, label %1209

1191:                                             ; preds = %1187
  %1192 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1192, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1193 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1194 = add nsw i32 %1193, -4
  store volatile i32 %1194, i32* @P2_is_marked, align 4, !tbaa !5
  %1195 = add nsw i64 %1189, %1188
  %1196 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1197
  store volatile i64 %1188, i64* %1198, align 8, !tbaa !9
  %1199 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1200 = add nsw i32 %1199, 1
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1201
  store volatile i64 %1189, i64* %1202, align 8, !tbaa !9
  %1203 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1204 = add nsw i32 %1203, 2
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1205
  store volatile i64 %1195, i64* %1206, align 8, !tbaa !9
  %1207 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1208 = add nsw i32 %1207, 3
  store volatile i32 %1208, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1209

1209:                                             ; preds = %1187, %1191, %1183, %1179, %1176, %1173
  %1210 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1211 = icmp sgt i32 %1210, 4
  br i1 %1211, label %1212, label %1245

1212:                                             ; preds = %1209
  %1213 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1214 = icmp slt i32 %1213, 4
  br i1 %1214, label %1215, label %1245

1215:                                             ; preds = %1212
  %1216 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1217 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1218 = icmp eq i64 %1216, %1217
  br i1 %1218, label %1219, label %1245

1219:                                             ; preds = %1215
  %1220 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1221 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1222 = icmp eq i64 %1220, %1221
  br i1 %1222, label %1223, label %1245

1223:                                             ; preds = %1219
  %1224 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1225 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1226 = icmp sgt i64 %1225, %1224
  br i1 %1226, label %1227, label %1245

1227:                                             ; preds = %1223
  %1228 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %1228, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1229 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1230 = add nsw i32 %1229, -4
  store volatile i32 %1230, i32* @P2_is_marked, align 4, !tbaa !5
  %1231 = add nsw i64 %1225, %1224
  %1232 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1233
  store volatile i64 %1224, i64* %1234, align 8, !tbaa !9
  %1235 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1236 = add nsw i32 %1235, 1
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1237
  store volatile i64 %1225, i64* %1238, align 8, !tbaa !9
  %1239 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1240 = add nsw i32 %1239, 2
  %1241 = sext i32 %1240 to i64
  %1242 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1241
  store volatile i64 %1231, i64* %1242, align 8, !tbaa !9
  %1243 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1244 = add nsw i32 %1243, 3
  store volatile i32 %1244, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1245

1245:                                             ; preds = %1223, %1227, %1219, %1215, %1212, %1209
  %1246 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1247 = icmp sgt i32 %1246, 4
  br i1 %1247, label %1248, label %1281

1248:                                             ; preds = %1245
  %1249 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1250 = icmp slt i32 %1249, 4
  br i1 %1250, label %1251, label %1281

1251:                                             ; preds = %1248
  %1252 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1253 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1254 = icmp eq i64 %1252, %1253
  br i1 %1254, label %1255, label %1281

1255:                                             ; preds = %1251
  %1256 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1257 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1258 = icmp eq i64 %1256, %1257
  br i1 %1258, label %1259, label %1281

1259:                                             ; preds = %1255
  %1260 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1261 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1262 = icmp sgt i64 %1261, %1260
  br i1 %1262, label %1263, label %1281

1263:                                             ; preds = %1259
  %1264 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1264, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1265 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1266 = add nsw i32 %1265, -4
  store volatile i32 %1266, i32* @P2_is_marked, align 4, !tbaa !5
  %1267 = add nsw i64 %1261, %1260
  %1268 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1269 = sext i32 %1268 to i64
  %1270 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1269
  store volatile i64 %1260, i64* %1270, align 8, !tbaa !9
  %1271 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1272 = add nsw i32 %1271, 1
  %1273 = sext i32 %1272 to i64
  %1274 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1273
  store volatile i64 %1261, i64* %1274, align 8, !tbaa !9
  %1275 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1276 = add nsw i32 %1275, 2
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1277
  store volatile i64 %1267, i64* %1278, align 8, !tbaa !9
  %1279 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1280 = add nsw i32 %1279, 3
  store volatile i32 %1280, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1281

1281:                                             ; preds = %1259, %1263, %1255, %1251, %1248, %1245
  %1282 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1283 = icmp sgt i32 %1282, 4
  br i1 %1283, label %1284, label %1317

1284:                                             ; preds = %1281
  %1285 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1286 = icmp slt i32 %1285, 4
  br i1 %1286, label %1287, label %1317

1287:                                             ; preds = %1284
  %1288 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1289 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1290 = icmp eq i64 %1288, %1289
  br i1 %1290, label %1291, label %1317

1291:                                             ; preds = %1287
  %1292 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1293 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1294 = icmp eq i64 %1292, %1293
  br i1 %1294, label %1295, label %1317

1295:                                             ; preds = %1291
  %1296 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1297 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1298 = icmp sgt i64 %1297, %1296
  br i1 %1298, label %1299, label %1317

1299:                                             ; preds = %1295
  %1300 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %1300, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1301 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1302 = add nsw i32 %1301, -4
  store volatile i32 %1302, i32* @P2_is_marked, align 4, !tbaa !5
  %1303 = add nsw i64 %1297, %1296
  %1304 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1305 = sext i32 %1304 to i64
  %1306 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1305
  store volatile i64 %1296, i64* %1306, align 8, !tbaa !9
  %1307 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1308 = add nsw i32 %1307, 1
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1309
  store volatile i64 %1297, i64* %1310, align 8, !tbaa !9
  %1311 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1312 = add nsw i32 %1311, 2
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1313
  store volatile i64 %1303, i64* %1314, align 8, !tbaa !9
  %1315 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1316 = add nsw i32 %1315, 3
  store volatile i32 %1316, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1317

1317:                                             ; preds = %1295, %1299, %1291, %1287, %1284, %1281
  %1318 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1319 = icmp sgt i32 %1318, 4
  br i1 %1319, label %1320, label %1353

1320:                                             ; preds = %1317
  %1321 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1322 = icmp slt i32 %1321, 4
  br i1 %1322, label %1323, label %1353

1323:                                             ; preds = %1320
  %1324 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1325 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1326 = icmp eq i64 %1324, %1325
  br i1 %1326, label %1327, label %1353

1327:                                             ; preds = %1323
  %1328 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1329 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1330 = icmp eq i64 %1328, %1329
  br i1 %1330, label %1331, label %1353

1331:                                             ; preds = %1327
  %1332 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1333 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1334 = icmp sgt i64 %1333, %1332
  br i1 %1334, label %1335, label %1353

1335:                                             ; preds = %1331
  %1336 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1336, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1337 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1338 = add nsw i32 %1337, -4
  store volatile i32 %1338, i32* @P2_is_marked, align 4, !tbaa !5
  %1339 = add nsw i64 %1333, %1332
  %1340 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1341
  store volatile i64 %1332, i64* %1342, align 8, !tbaa !9
  %1343 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1344 = add nsw i32 %1343, 1
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1345
  store volatile i64 %1333, i64* %1346, align 8, !tbaa !9
  %1347 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1348 = add nsw i32 %1347, 2
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1349
  store volatile i64 %1339, i64* %1350, align 8, !tbaa !9
  %1351 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1352 = add nsw i32 %1351, 3
  store volatile i32 %1352, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1353

1353:                                             ; preds = %1331, %1335, %1327, %1323, %1320, %1317
  %1354 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1355 = icmp sgt i32 %1354, 4
  br i1 %1355, label %1356, label %1389

1356:                                             ; preds = %1353
  %1357 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1358 = icmp slt i32 %1357, 4
  br i1 %1358, label %1359, label %1389

1359:                                             ; preds = %1356
  %1360 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1361 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1362 = icmp eq i64 %1360, %1361
  br i1 %1362, label %1363, label %1389

1363:                                             ; preds = %1359
  %1364 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1365 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1366 = icmp eq i64 %1364, %1365
  br i1 %1366, label %1367, label %1389

1367:                                             ; preds = %1363
  %1368 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1369 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1370 = icmp sgt i64 %1369, %1368
  br i1 %1370, label %1371, label %1389

1371:                                             ; preds = %1367
  %1372 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %1372, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1373 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1374 = add nsw i32 %1373, -4
  store volatile i32 %1374, i32* @P2_is_marked, align 4, !tbaa !5
  %1375 = add nsw i64 %1369, %1368
  %1376 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1377 = sext i32 %1376 to i64
  %1378 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1377
  store volatile i64 %1368, i64* %1378, align 8, !tbaa !9
  %1379 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1380 = add nsw i32 %1379, 1
  %1381 = sext i32 %1380 to i64
  %1382 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1381
  store volatile i64 %1369, i64* %1382, align 8, !tbaa !9
  %1383 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1384 = add nsw i32 %1383, 2
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1385
  store volatile i64 %1375, i64* %1386, align 8, !tbaa !9
  %1387 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1388 = add nsw i32 %1387, 3
  store volatile i32 %1388, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1389

1389:                                             ; preds = %1367, %1371, %1363, %1359, %1356, %1353
  %1390 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1391 = icmp sgt i32 %1390, 4
  br i1 %1391, label %1392, label %1425

1392:                                             ; preds = %1389
  %1393 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1394 = icmp slt i32 %1393, 4
  br i1 %1394, label %1395, label %1425

1395:                                             ; preds = %1392
  %1396 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1397 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1398 = icmp eq i64 %1396, %1397
  br i1 %1398, label %1399, label %1425

1399:                                             ; preds = %1395
  %1400 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1401 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1402 = icmp eq i64 %1400, %1401
  br i1 %1402, label %1403, label %1425

1403:                                             ; preds = %1399
  %1404 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1405 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1406 = icmp sgt i64 %1405, %1404
  br i1 %1406, label %1407, label %1425

1407:                                             ; preds = %1403
  %1408 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1408, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1409 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1410 = add nsw i32 %1409, -4
  store volatile i32 %1410, i32* @P2_is_marked, align 4, !tbaa !5
  %1411 = add nsw i64 %1405, %1404
  %1412 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1413 = sext i32 %1412 to i64
  %1414 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1413
  store volatile i64 %1404, i64* %1414, align 8, !tbaa !9
  %1415 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1416 = add nsw i32 %1415, 1
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1417
  store volatile i64 %1405, i64* %1418, align 8, !tbaa !9
  %1419 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1420 = add nsw i32 %1419, 2
  %1421 = sext i32 %1420 to i64
  %1422 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1421
  store volatile i64 %1411, i64* %1422, align 8, !tbaa !9
  %1423 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1424 = add nsw i32 %1423, 3
  store volatile i32 %1424, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1425

1425:                                             ; preds = %1403, %1407, %1399, %1395, %1392, %1389
  %1426 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1427 = icmp sgt i32 %1426, 4
  br i1 %1427, label %1428, label %1461

1428:                                             ; preds = %1425
  %1429 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1430 = icmp slt i32 %1429, 4
  br i1 %1430, label %1431, label %1461

1431:                                             ; preds = %1428
  %1432 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1433 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1434 = icmp eq i64 %1432, %1433
  br i1 %1434, label %1435, label %1461

1435:                                             ; preds = %1431
  %1436 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1437 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1438 = icmp eq i64 %1436, %1437
  br i1 %1438, label %1439, label %1461

1439:                                             ; preds = %1435
  %1440 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1441 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1442 = icmp sgt i64 %1441, %1440
  br i1 %1442, label %1443, label %1461

1443:                                             ; preds = %1439
  %1444 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %1444, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1445 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1446 = add nsw i32 %1445, -4
  store volatile i32 %1446, i32* @P2_is_marked, align 4, !tbaa !5
  %1447 = add nsw i64 %1441, %1440
  %1448 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1449
  store volatile i64 %1440, i64* %1450, align 8, !tbaa !9
  %1451 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1452 = add nsw i32 %1451, 1
  %1453 = sext i32 %1452 to i64
  %1454 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1453
  store volatile i64 %1441, i64* %1454, align 8, !tbaa !9
  %1455 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1456 = add nsw i32 %1455, 2
  %1457 = sext i32 %1456 to i64
  %1458 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1457
  store volatile i64 %1447, i64* %1458, align 8, !tbaa !9
  %1459 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1460 = add nsw i32 %1459, 3
  store volatile i32 %1460, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1461

1461:                                             ; preds = %1439, %1443, %1435, %1431, %1428, %1425
  %1462 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1463 = icmp sgt i32 %1462, 4
  br i1 %1463, label %1464, label %1497

1464:                                             ; preds = %1461
  %1465 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1466 = icmp slt i32 %1465, 4
  br i1 %1466, label %1467, label %1497

1467:                                             ; preds = %1464
  %1468 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1469 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1470 = icmp eq i64 %1468, %1469
  br i1 %1470, label %1471, label %1497

1471:                                             ; preds = %1467
  %1472 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1473 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1474 = icmp eq i64 %1472, %1473
  br i1 %1474, label %1475, label %1497

1475:                                             ; preds = %1471
  %1476 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1477 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1478 = icmp sgt i64 %1477, %1476
  br i1 %1478, label %1479, label %1497

1479:                                             ; preds = %1475
  %1480 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1480, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1481 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1482 = add nsw i32 %1481, -4
  store volatile i32 %1482, i32* @P2_is_marked, align 4, !tbaa !5
  %1483 = add nsw i64 %1477, %1476
  %1484 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1485 = sext i32 %1484 to i64
  %1486 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1485
  store volatile i64 %1476, i64* %1486, align 8, !tbaa !9
  %1487 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1488 = add nsw i32 %1487, 1
  %1489 = sext i32 %1488 to i64
  %1490 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1489
  store volatile i64 %1477, i64* %1490, align 8, !tbaa !9
  %1491 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1492 = add nsw i32 %1491, 2
  %1493 = sext i32 %1492 to i64
  %1494 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1493
  store volatile i64 %1483, i64* %1494, align 8, !tbaa !9
  %1495 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1496 = add nsw i32 %1495, 3
  store volatile i32 %1496, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1497

1497:                                             ; preds = %1475, %1479, %1471, %1467, %1464, %1461
  %1498 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1499 = icmp sgt i32 %1498, 4
  br i1 %1499, label %1500, label %1533

1500:                                             ; preds = %1497
  %1501 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1502 = icmp slt i32 %1501, 4
  br i1 %1502, label %1503, label %1533

1503:                                             ; preds = %1500
  %1504 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1505 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1506 = icmp eq i64 %1504, %1505
  br i1 %1506, label %1507, label %1533

1507:                                             ; preds = %1503
  %1508 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1509 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1510 = icmp eq i64 %1508, %1509
  br i1 %1510, label %1511, label %1533

1511:                                             ; preds = %1507
  %1512 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1513 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1514 = icmp sgt i64 %1513, %1512
  br i1 %1514, label %1515, label %1533

1515:                                             ; preds = %1511
  %1516 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1516, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1517 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1518 = add nsw i32 %1517, -4
  store volatile i32 %1518, i32* @P2_is_marked, align 4, !tbaa !5
  %1519 = add nsw i64 %1513, %1512
  %1520 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1521 = sext i32 %1520 to i64
  %1522 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1521
  store volatile i64 %1512, i64* %1522, align 8, !tbaa !9
  %1523 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1524 = add nsw i32 %1523, 1
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1525
  store volatile i64 %1513, i64* %1526, align 8, !tbaa !9
  %1527 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1528 = add nsw i32 %1527, 2
  %1529 = sext i32 %1528 to i64
  %1530 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1529
  store volatile i64 %1519, i64* %1530, align 8, !tbaa !9
  %1531 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1532 = add nsw i32 %1531, 3
  store volatile i32 %1532, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1533

1533:                                             ; preds = %1511, %1515, %1507, %1503, %1500, %1497
  %1534 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1535 = icmp sgt i32 %1534, 4
  br i1 %1535, label %1536, label %1569

1536:                                             ; preds = %1533
  %1537 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1538 = icmp slt i32 %1537, 4
  br i1 %1538, label %1539, label %1569

1539:                                             ; preds = %1536
  %1540 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1541 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1542 = icmp eq i64 %1540, %1541
  br i1 %1542, label %1543, label %1569

1543:                                             ; preds = %1539
  %1544 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1545 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1546 = icmp eq i64 %1544, %1545
  br i1 %1546, label %1547, label %1569

1547:                                             ; preds = %1543
  %1548 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1549 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1550 = icmp sgt i64 %1549, %1548
  br i1 %1550, label %1551, label %1569

1551:                                             ; preds = %1547
  %1552 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1552, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1553 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1554 = add nsw i32 %1553, -4
  store volatile i32 %1554, i32* @P2_is_marked, align 4, !tbaa !5
  %1555 = add nsw i64 %1549, %1548
  %1556 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1557
  store volatile i64 %1548, i64* %1558, align 8, !tbaa !9
  %1559 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1560 = add nsw i32 %1559, 1
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1561
  store volatile i64 %1549, i64* %1562, align 8, !tbaa !9
  %1563 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1564 = add nsw i32 %1563, 2
  %1565 = sext i32 %1564 to i64
  %1566 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1565
  store volatile i64 %1555, i64* %1566, align 8, !tbaa !9
  %1567 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1568 = add nsw i32 %1567, 3
  store volatile i32 %1568, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1569

1569:                                             ; preds = %1547, %1551, %1543, %1539, %1536, %1533
  %1570 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1571 = icmp sgt i32 %1570, 4
  br i1 %1571, label %1572, label %1605

1572:                                             ; preds = %1569
  %1573 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1574 = icmp slt i32 %1573, 4
  br i1 %1574, label %1575, label %1605

1575:                                             ; preds = %1572
  %1576 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1577 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1578 = icmp eq i64 %1576, %1577
  br i1 %1578, label %1579, label %1605

1579:                                             ; preds = %1575
  %1580 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1581 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1582 = icmp eq i64 %1580, %1581
  br i1 %1582, label %1583, label %1605

1583:                                             ; preds = %1579
  %1584 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1585 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1586 = icmp sgt i64 %1585, %1584
  br i1 %1586, label %1587, label %1605

1587:                                             ; preds = %1583
  %1588 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %1588, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1589 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1590 = add nsw i32 %1589, -4
  store volatile i32 %1590, i32* @P2_is_marked, align 4, !tbaa !5
  %1591 = add nsw i64 %1585, %1584
  %1592 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1593 = sext i32 %1592 to i64
  %1594 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1593
  store volatile i64 %1584, i64* %1594, align 8, !tbaa !9
  %1595 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1596 = add nsw i32 %1595, 1
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1597
  store volatile i64 %1585, i64* %1598, align 8, !tbaa !9
  %1599 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1600 = add nsw i32 %1599, 2
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1601
  store volatile i64 %1591, i64* %1602, align 8, !tbaa !9
  %1603 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1604 = add nsw i32 %1603, 3
  store volatile i32 %1604, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1605

1605:                                             ; preds = %1583, %1587, %1579, %1575, %1572, %1569
  %1606 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1607 = icmp sgt i32 %1606, 4
  br i1 %1607, label %1608, label %1641

1608:                                             ; preds = %1605
  %1609 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1610 = icmp slt i32 %1609, 4
  br i1 %1610, label %1611, label %1641

1611:                                             ; preds = %1608
  %1612 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1613 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1614 = icmp eq i64 %1612, %1613
  br i1 %1614, label %1615, label %1641

1615:                                             ; preds = %1611
  %1616 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1617 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1618 = icmp eq i64 %1616, %1617
  br i1 %1618, label %1619, label %1641

1619:                                             ; preds = %1615
  %1620 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1621 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1622 = icmp sgt i64 %1621, %1620
  br i1 %1622, label %1623, label %1641

1623:                                             ; preds = %1619
  %1624 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1624, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1625 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1626 = add nsw i32 %1625, -4
  store volatile i32 %1626, i32* @P2_is_marked, align 4, !tbaa !5
  %1627 = add nsw i64 %1621, %1620
  %1628 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1629 = sext i32 %1628 to i64
  %1630 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1629
  store volatile i64 %1620, i64* %1630, align 8, !tbaa !9
  %1631 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1632 = add nsw i32 %1631, 1
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1633
  store volatile i64 %1621, i64* %1634, align 8, !tbaa !9
  %1635 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1636 = add nsw i32 %1635, 2
  %1637 = sext i32 %1636 to i64
  %1638 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1637
  store volatile i64 %1627, i64* %1638, align 8, !tbaa !9
  %1639 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1640 = add nsw i32 %1639, 3
  store volatile i32 %1640, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1641

1641:                                             ; preds = %1619, %1623, %1615, %1611, %1608, %1605
  %1642 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1643 = icmp sgt i32 %1642, 4
  br i1 %1643, label %1644, label %1677

1644:                                             ; preds = %1641
  %1645 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1646 = icmp slt i32 %1645, 4
  br i1 %1646, label %1647, label %1677

1647:                                             ; preds = %1644
  %1648 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1649 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1650 = icmp eq i64 %1648, %1649
  br i1 %1650, label %1651, label %1677

1651:                                             ; preds = %1647
  %1652 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1653 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1654 = icmp eq i64 %1652, %1653
  br i1 %1654, label %1655, label %1677

1655:                                             ; preds = %1651
  %1656 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1657 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1658 = icmp sgt i64 %1657, %1656
  br i1 %1658, label %1659, label %1677

1659:                                             ; preds = %1655
  %1660 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %1660, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1661 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1662 = add nsw i32 %1661, -4
  store volatile i32 %1662, i32* @P2_is_marked, align 4, !tbaa !5
  %1663 = add nsw i64 %1657, %1656
  %1664 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1665 = sext i32 %1664 to i64
  %1666 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1665
  store volatile i64 %1656, i64* %1666, align 8, !tbaa !9
  %1667 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1668 = add nsw i32 %1667, 1
  %1669 = sext i32 %1668 to i64
  %1670 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1669
  store volatile i64 %1657, i64* %1670, align 8, !tbaa !9
  %1671 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1672 = add nsw i32 %1671, 2
  %1673 = sext i32 %1672 to i64
  %1674 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1673
  store volatile i64 %1663, i64* %1674, align 8, !tbaa !9
  %1675 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1676 = add nsw i32 %1675, 3
  store volatile i32 %1676, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1677

1677:                                             ; preds = %1655, %1659, %1651, %1647, %1644, %1641
  %1678 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1679 = icmp sgt i32 %1678, 4
  br i1 %1679, label %1680, label %1713

1680:                                             ; preds = %1677
  %1681 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1682 = icmp slt i32 %1681, 4
  br i1 %1682, label %1683, label %1713

1683:                                             ; preds = %1680
  %1684 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1685 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1686 = icmp eq i64 %1684, %1685
  br i1 %1686, label %1687, label %1713

1687:                                             ; preds = %1683
  %1688 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1689 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1690 = icmp eq i64 %1688, %1689
  br i1 %1690, label %1691, label %1713

1691:                                             ; preds = %1687
  %1692 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1693 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1694 = icmp sgt i64 %1693, %1692
  br i1 %1694, label %1695, label %1713

1695:                                             ; preds = %1691
  %1696 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1696, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1697 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1698 = add nsw i32 %1697, -4
  store volatile i32 %1698, i32* @P2_is_marked, align 4, !tbaa !5
  %1699 = add nsw i64 %1693, %1692
  %1700 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1701
  store volatile i64 %1692, i64* %1702, align 8, !tbaa !9
  %1703 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1704 = add nsw i32 %1703, 1
  %1705 = sext i32 %1704 to i64
  %1706 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1705
  store volatile i64 %1693, i64* %1706, align 8, !tbaa !9
  %1707 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1708 = add nsw i32 %1707, 2
  %1709 = sext i32 %1708 to i64
  %1710 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1709
  store volatile i64 %1699, i64* %1710, align 8, !tbaa !9
  %1711 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1712 = add nsw i32 %1711, 3
  store volatile i32 %1712, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1713

1713:                                             ; preds = %1691, %1695, %1687, %1683, %1680, %1677
  %1714 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1715 = icmp sgt i32 %1714, 4
  br i1 %1715, label %1716, label %1749

1716:                                             ; preds = %1713
  %1717 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1718 = icmp slt i32 %1717, 4
  br i1 %1718, label %1719, label %1749

1719:                                             ; preds = %1716
  %1720 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1721 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1722 = icmp eq i64 %1720, %1721
  br i1 %1722, label %1723, label %1749

1723:                                             ; preds = %1719
  %1724 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1725 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1726 = icmp eq i64 %1724, %1725
  br i1 %1726, label %1727, label %1749

1727:                                             ; preds = %1723
  %1728 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1729 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1730 = icmp sgt i64 %1729, %1728
  br i1 %1730, label %1731, label %1749

1731:                                             ; preds = %1727
  %1732 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1732, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1733 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1734 = add nsw i32 %1733, -4
  store volatile i32 %1734, i32* @P2_is_marked, align 4, !tbaa !5
  %1735 = add nsw i64 %1729, %1728
  %1736 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1737 = sext i32 %1736 to i64
  %1738 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1737
  store volatile i64 %1728, i64* %1738, align 8, !tbaa !9
  %1739 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1740 = add nsw i32 %1739, 1
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1741
  store volatile i64 %1729, i64* %1742, align 8, !tbaa !9
  %1743 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1744 = add nsw i32 %1743, 2
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1745
  store volatile i64 %1735, i64* %1746, align 8, !tbaa !9
  %1747 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1748 = add nsw i32 %1747, 3
  store volatile i32 %1748, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1749

1749:                                             ; preds = %1727, %1731, %1723, %1719, %1716, %1713
  %1750 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1751 = icmp sgt i32 %1750, 4
  br i1 %1751, label %1752, label %1785

1752:                                             ; preds = %1749
  %1753 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1754 = icmp slt i32 %1753, 4
  br i1 %1754, label %1755, label %1785

1755:                                             ; preds = %1752
  %1756 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1757 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1758 = icmp eq i64 %1756, %1757
  br i1 %1758, label %1759, label %1785

1759:                                             ; preds = %1755
  %1760 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1761 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1762 = icmp eq i64 %1760, %1761
  br i1 %1762, label %1763, label %1785

1763:                                             ; preds = %1759
  %1764 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1765 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1766 = icmp sgt i64 %1765, %1764
  br i1 %1766, label %1767, label %1785

1767:                                             ; preds = %1763
  %1768 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1768, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1769 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1770 = add nsw i32 %1769, -4
  store volatile i32 %1770, i32* @P2_is_marked, align 4, !tbaa !5
  %1771 = add nsw i64 %1765, %1764
  %1772 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1773
  store volatile i64 %1764, i64* %1774, align 8, !tbaa !9
  %1775 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1776 = add nsw i32 %1775, 1
  %1777 = sext i32 %1776 to i64
  %1778 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1777
  store volatile i64 %1765, i64* %1778, align 8, !tbaa !9
  %1779 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1780 = add nsw i32 %1779, 2
  %1781 = sext i32 %1780 to i64
  %1782 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1781
  store volatile i64 %1771, i64* %1782, align 8, !tbaa !9
  %1783 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1784 = add nsw i32 %1783, 3
  store volatile i32 %1784, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1785

1785:                                             ; preds = %1763, %1767, %1759, %1755, %1752, %1749
  %1786 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1787 = icmp sgt i32 %1786, 4
  br i1 %1787, label %1788, label %1821

1788:                                             ; preds = %1785
  %1789 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1790 = icmp slt i32 %1789, 4
  br i1 %1790, label %1791, label %1821

1791:                                             ; preds = %1788
  %1792 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1793 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1794 = icmp eq i64 %1792, %1793
  br i1 %1794, label %1795, label %1821

1795:                                             ; preds = %1791
  %1796 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1797 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1798 = icmp eq i64 %1796, %1797
  br i1 %1798, label %1799, label %1821

1799:                                             ; preds = %1795
  %1800 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1801 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1802 = icmp sgt i64 %1801, %1800
  br i1 %1802, label %1803, label %1821

1803:                                             ; preds = %1799
  %1804 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1804, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1805 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1806 = add nsw i32 %1805, -4
  store volatile i32 %1806, i32* @P2_is_marked, align 4, !tbaa !5
  %1807 = add nsw i64 %1801, %1800
  %1808 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1809 = sext i32 %1808 to i64
  %1810 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1809
  store volatile i64 %1800, i64* %1810, align 8, !tbaa !9
  %1811 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1812 = add nsw i32 %1811, 1
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1813
  store volatile i64 %1801, i64* %1814, align 8, !tbaa !9
  %1815 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1816 = add nsw i32 %1815, 2
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1817
  store volatile i64 %1807, i64* %1818, align 8, !tbaa !9
  %1819 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1820 = add nsw i32 %1819, 3
  store volatile i32 %1820, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1821

1821:                                             ; preds = %1799, %1803, %1795, %1791, %1788, %1785
  %1822 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1823 = icmp sgt i32 %1822, 4
  br i1 %1823, label %1824, label %1857

1824:                                             ; preds = %1821
  %1825 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1826 = icmp slt i32 %1825, 4
  br i1 %1826, label %1827, label %1857

1827:                                             ; preds = %1824
  %1828 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1829 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1830 = icmp eq i64 %1828, %1829
  br i1 %1830, label %1831, label %1857

1831:                                             ; preds = %1827
  %1832 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1833 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1834 = icmp eq i64 %1832, %1833
  br i1 %1834, label %1835, label %1857

1835:                                             ; preds = %1831
  %1836 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1837 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1838 = icmp sgt i64 %1837, %1836
  br i1 %1838, label %1839, label %1857

1839:                                             ; preds = %1835
  %1840 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1840, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1841 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1842 = add nsw i32 %1841, -4
  store volatile i32 %1842, i32* @P2_is_marked, align 4, !tbaa !5
  %1843 = add nsw i64 %1837, %1836
  %1844 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1845 = sext i32 %1844 to i64
  %1846 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1845
  store volatile i64 %1836, i64* %1846, align 8, !tbaa !9
  %1847 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1848 = add nsw i32 %1847, 1
  %1849 = sext i32 %1848 to i64
  %1850 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1849
  store volatile i64 %1837, i64* %1850, align 8, !tbaa !9
  %1851 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1852 = add nsw i32 %1851, 2
  %1853 = sext i32 %1852 to i64
  %1854 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1853
  store volatile i64 %1843, i64* %1854, align 8, !tbaa !9
  %1855 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1856 = add nsw i32 %1855, 3
  store volatile i32 %1856, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1857

1857:                                             ; preds = %1835, %1839, %1831, %1827, %1824, %1821
  %1858 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1859 = icmp sgt i32 %1858, 4
  br i1 %1859, label %1860, label %1892

1860:                                             ; preds = %1857
  %1861 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1862 = icmp slt i32 %1861, 4
  br i1 %1862, label %1863, label %1892

1863:                                             ; preds = %1860
  %1864 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1865 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1866 = icmp eq i64 %1864, %1865
  br i1 %1866, label %1867, label %1892

1867:                                             ; preds = %1863
  %1868 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1869 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1870 = icmp eq i64 %1868, %1869
  br i1 %1870, label %1871, label %1892

1871:                                             ; preds = %1867
  %1872 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1873 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1874 = icmp sgt i64 %1873, %1872
  br i1 %1874, label %1875, label %1892

1875:                                             ; preds = %1871
  %1876 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1877 = add nsw i32 %1876, -4
  store volatile i32 %1877, i32* @P2_is_marked, align 4, !tbaa !5
  %1878 = add nsw i64 %1873, %1872
  %1879 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1880 = sext i32 %1879 to i64
  %1881 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1880
  store volatile i64 %1872, i64* %1881, align 8, !tbaa !9
  %1882 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1883 = add nsw i32 %1882, 1
  %1884 = sext i32 %1883 to i64
  %1885 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1884
  store volatile i64 %1873, i64* %1885, align 8, !tbaa !9
  %1886 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1887 = add nsw i32 %1886, 2
  %1888 = sext i32 %1887 to i64
  %1889 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1888
  store volatile i64 %1878, i64* %1889, align 8, !tbaa !9
  %1890 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1891 = add nsw i32 %1890, 3
  store volatile i32 %1891, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1892

1892:                                             ; preds = %1871, %1875, %1867, %1863, %1860, %1857
  %1893 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1894 = icmp sgt i32 %1893, 4
  br i1 %1894, label %1895, label %1928

1895:                                             ; preds = %1892
  %1896 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1897 = icmp slt i32 %1896, 4
  br i1 %1897, label %1898, label %1928

1898:                                             ; preds = %1895
  %1899 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1900 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1901 = icmp eq i64 %1899, %1900
  br i1 %1901, label %1902, label %1928

1902:                                             ; preds = %1898
  %1903 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1904 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1905 = icmp eq i64 %1903, %1904
  br i1 %1905, label %1906, label %1928

1906:                                             ; preds = %1902
  %1907 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1908 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1909 = icmp sgt i64 %1908, %1907
  br i1 %1909, label %1910, label %1928

1910:                                             ; preds = %1906
  %1911 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %1911, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1912 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1913 = add nsw i32 %1912, -4
  store volatile i32 %1913, i32* @P2_is_marked, align 4, !tbaa !5
  %1914 = add nsw i64 %1908, %1907
  %1915 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1916
  store volatile i64 %1907, i64* %1917, align 8, !tbaa !9
  %1918 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1919 = add nsw i32 %1918, 1
  %1920 = sext i32 %1919 to i64
  %1921 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1920
  store volatile i64 %1908, i64* %1921, align 8, !tbaa !9
  %1922 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1923 = add nsw i32 %1922, 2
  %1924 = sext i32 %1923 to i64
  %1925 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1924
  store volatile i64 %1914, i64* %1925, align 8, !tbaa !9
  %1926 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1927 = add nsw i32 %1926, 3
  store volatile i32 %1927, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1928

1928:                                             ; preds = %1906, %1910, %1902, %1898, %1895, %1892
  %1929 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1930 = icmp sgt i32 %1929, 4
  br i1 %1930, label %1931, label %1963

1931:                                             ; preds = %1928
  %1932 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1933 = icmp slt i32 %1932, 4
  br i1 %1933, label %1934, label %1963

1934:                                             ; preds = %1931
  %1935 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1936 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1937 = icmp eq i64 %1935, %1936
  br i1 %1937, label %1938, label %1963

1938:                                             ; preds = %1934
  %1939 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1940 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1941 = icmp eq i64 %1939, %1940
  br i1 %1941, label %1942, label %1963

1942:                                             ; preds = %1938
  %1943 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1944 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %1945 = icmp sgt i64 %1944, %1943
  br i1 %1945, label %1946, label %1963

1946:                                             ; preds = %1942
  %1947 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1948 = add nsw i32 %1947, -4
  store volatile i32 %1948, i32* @P2_is_marked, align 4, !tbaa !5
  %1949 = add nsw i64 %1944, %1943
  %1950 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1951
  store volatile i64 %1943, i64* %1952, align 8, !tbaa !9
  %1953 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1954 = add nsw i32 %1953, 1
  %1955 = sext i32 %1954 to i64
  %1956 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1955
  store volatile i64 %1944, i64* %1956, align 8, !tbaa !9
  %1957 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1958 = add nsw i32 %1957, 2
  %1959 = sext i32 %1958 to i64
  %1960 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1959
  store volatile i64 %1949, i64* %1960, align 8, !tbaa !9
  %1961 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1962 = add nsw i32 %1961, 3
  store volatile i32 %1962, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1963

1963:                                             ; preds = %1942, %1946, %1938, %1934, %1931, %1928
  %1964 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1965 = icmp sgt i32 %1964, 4
  br i1 %1965, label %1966, label %1999

1966:                                             ; preds = %1963
  %1967 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1968 = icmp slt i32 %1967, 4
  br i1 %1968, label %1969, label %1999

1969:                                             ; preds = %1966
  %1970 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1971 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1972 = icmp eq i64 %1970, %1971
  br i1 %1972, label %1973, label %1999

1973:                                             ; preds = %1969
  %1974 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1975 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %1976 = icmp eq i64 %1974, %1975
  br i1 %1976, label %1977, label %1999

1977:                                             ; preds = %1973
  %1978 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %1979 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %1980 = icmp sgt i64 %1979, %1978
  br i1 %1980, label %1981, label %1999

1981:                                             ; preds = %1977
  %1982 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %1982, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %1983 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %1984 = add nsw i32 %1983, -4
  store volatile i32 %1984, i32* @P2_is_marked, align 4, !tbaa !5
  %1985 = add nsw i64 %1979, %1978
  %1986 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1987 = sext i32 %1986 to i64
  %1988 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1987
  store volatile i64 %1978, i64* %1988, align 8, !tbaa !9
  %1989 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1990 = add nsw i32 %1989, 1
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1991
  store volatile i64 %1979, i64* %1992, align 8, !tbaa !9
  %1993 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1994 = add nsw i32 %1993, 2
  %1995 = sext i32 %1994 to i64
  %1996 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %1995
  store volatile i64 %1985, i64* %1996, align 8, !tbaa !9
  %1997 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %1998 = add nsw i32 %1997, 3
  store volatile i32 %1998, i32* @P3_is_marked, align 4, !tbaa !5
  br label %1999

1999:                                             ; preds = %1977, %1981, %1973, %1969, %1966, %1963
  %2000 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2001 = icmp sgt i32 %2000, 4
  br i1 %2001, label %2002, label %2034

2002:                                             ; preds = %1999
  %2003 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2004 = icmp slt i32 %2003, 4
  br i1 %2004, label %2005, label %2034

2005:                                             ; preds = %2002
  %2006 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2007 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2008 = icmp eq i64 %2006, %2007
  br i1 %2008, label %2009, label %2034

2009:                                             ; preds = %2005
  %2010 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2011 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2012 = icmp eq i64 %2010, %2011
  br i1 %2012, label %2013, label %2034

2013:                                             ; preds = %2009
  %2014 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2015 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2016 = icmp sgt i64 %2015, %2014
  br i1 %2016, label %2017, label %2034

2017:                                             ; preds = %2013
  %2018 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2019 = add nsw i32 %2018, -4
  store volatile i32 %2019, i32* @P2_is_marked, align 4, !tbaa !5
  %2020 = add nsw i64 %2015, %2014
  %2021 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2022 = sext i32 %2021 to i64
  %2023 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2022
  store volatile i64 %2014, i64* %2023, align 8, !tbaa !9
  %2024 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2025 = add nsw i32 %2024, 1
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2026
  store volatile i64 %2015, i64* %2027, align 8, !tbaa !9
  %2028 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2029 = add nsw i32 %2028, 2
  %2030 = sext i32 %2029 to i64
  %2031 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2030
  store volatile i64 %2020, i64* %2031, align 8, !tbaa !9
  %2032 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2033 = add nsw i32 %2032, 3
  store volatile i32 %2033, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2034

2034:                                             ; preds = %2013, %2017, %2009, %2005, %2002, %1999
  %2035 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2036 = icmp sgt i32 %2035, 4
  br i1 %2036, label %2037, label %2070

2037:                                             ; preds = %2034
  %2038 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2039 = icmp slt i32 %2038, 4
  br i1 %2039, label %2040, label %2070

2040:                                             ; preds = %2037
  %2041 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2042 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2043 = icmp eq i64 %2041, %2042
  br i1 %2043, label %2044, label %2070

2044:                                             ; preds = %2040
  %2045 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2046 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2047 = icmp eq i64 %2045, %2046
  br i1 %2047, label %2048, label %2070

2048:                                             ; preds = %2044
  %2049 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2050 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2051 = icmp sgt i64 %2050, %2049
  br i1 %2051, label %2052, label %2070

2052:                                             ; preds = %2048
  %2053 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %2053, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2054 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2055 = add nsw i32 %2054, -4
  store volatile i32 %2055, i32* @P2_is_marked, align 4, !tbaa !5
  %2056 = add nsw i64 %2050, %2049
  %2057 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2058 = sext i32 %2057 to i64
  %2059 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2058
  store volatile i64 %2049, i64* %2059, align 8, !tbaa !9
  %2060 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2061 = add nsw i32 %2060, 1
  %2062 = sext i32 %2061 to i64
  %2063 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2062
  store volatile i64 %2050, i64* %2063, align 8, !tbaa !9
  %2064 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2065 = add nsw i32 %2064, 2
  %2066 = sext i32 %2065 to i64
  %2067 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2066
  store volatile i64 %2056, i64* %2067, align 8, !tbaa !9
  %2068 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2069 = add nsw i32 %2068, 3
  store volatile i32 %2069, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2070

2070:                                             ; preds = %2048, %2052, %2044, %2040, %2037, %2034
  %2071 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2072 = icmp sgt i32 %2071, 4
  br i1 %2072, label %2073, label %2105

2073:                                             ; preds = %2070
  %2074 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2075 = icmp slt i32 %2074, 4
  br i1 %2075, label %2076, label %2105

2076:                                             ; preds = %2073
  %2077 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2078 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2079 = icmp eq i64 %2077, %2078
  br i1 %2079, label %2080, label %2105

2080:                                             ; preds = %2076
  %2081 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2082 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2083 = icmp eq i64 %2081, %2082
  br i1 %2083, label %2084, label %2105

2084:                                             ; preds = %2080
  %2085 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2086 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2087 = icmp sgt i64 %2086, %2085
  br i1 %2087, label %2088, label %2105

2088:                                             ; preds = %2084
  %2089 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2090 = add nsw i32 %2089, -4
  store volatile i32 %2090, i32* @P2_is_marked, align 4, !tbaa !5
  %2091 = add nsw i64 %2086, %2085
  %2092 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2093 = sext i32 %2092 to i64
  %2094 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2093
  store volatile i64 %2085, i64* %2094, align 8, !tbaa !9
  %2095 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2096 = add nsw i32 %2095, 1
  %2097 = sext i32 %2096 to i64
  %2098 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2097
  store volatile i64 %2086, i64* %2098, align 8, !tbaa !9
  %2099 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2100 = add nsw i32 %2099, 2
  %2101 = sext i32 %2100 to i64
  %2102 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2101
  store volatile i64 %2091, i64* %2102, align 8, !tbaa !9
  %2103 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2104 = add nsw i32 %2103, 3
  store volatile i32 %2104, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2105

2105:                                             ; preds = %2084, %2088, %2080, %2076, %2073, %2070
  %2106 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2107 = icmp sgt i32 %2106, 4
  br i1 %2107, label %2108, label %2141

2108:                                             ; preds = %2105
  %2109 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2110 = icmp slt i32 %2109, 4
  br i1 %2110, label %2111, label %2141

2111:                                             ; preds = %2108
  %2112 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2113 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2114 = icmp eq i64 %2112, %2113
  br i1 %2114, label %2115, label %2141

2115:                                             ; preds = %2111
  %2116 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2117 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2118 = icmp eq i64 %2116, %2117
  br i1 %2118, label %2119, label %2141

2119:                                             ; preds = %2115
  %2120 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2121 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2122 = icmp sgt i64 %2121, %2120
  br i1 %2122, label %2123, label %2141

2123:                                             ; preds = %2119
  %2124 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2124, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2125 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2126 = add nsw i32 %2125, -4
  store volatile i32 %2126, i32* @P2_is_marked, align 4, !tbaa !5
  %2127 = add nsw i64 %2121, %2120
  %2128 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2129 = sext i32 %2128 to i64
  %2130 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2129
  store volatile i64 %2120, i64* %2130, align 8, !tbaa !9
  %2131 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2132 = add nsw i32 %2131, 1
  %2133 = sext i32 %2132 to i64
  %2134 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2133
  store volatile i64 %2121, i64* %2134, align 8, !tbaa !9
  %2135 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2136 = add nsw i32 %2135, 2
  %2137 = sext i32 %2136 to i64
  %2138 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2137
  store volatile i64 %2127, i64* %2138, align 8, !tbaa !9
  %2139 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2140 = add nsw i32 %2139, 3
  store volatile i32 %2140, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2141

2141:                                             ; preds = %2119, %2123, %2115, %2111, %2108, %2105
  %2142 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2143 = icmp sgt i32 %2142, 4
  br i1 %2143, label %2144, label %2177

2144:                                             ; preds = %2141
  %2145 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2146 = icmp slt i32 %2145, 4
  br i1 %2146, label %2147, label %2177

2147:                                             ; preds = %2144
  %2148 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2149 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2150 = icmp eq i64 %2148, %2149
  br i1 %2150, label %2151, label %2177

2151:                                             ; preds = %2147
  %2152 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2153 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2154 = icmp eq i64 %2152, %2153
  br i1 %2154, label %2155, label %2177

2155:                                             ; preds = %2151
  %2156 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2157 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2158 = icmp sgt i64 %2157, %2156
  br i1 %2158, label %2159, label %2177

2159:                                             ; preds = %2155
  %2160 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %2160, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2161 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2162 = add nsw i32 %2161, -4
  store volatile i32 %2162, i32* @P2_is_marked, align 4, !tbaa !5
  %2163 = add nsw i64 %2157, %2156
  %2164 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2165 = sext i32 %2164 to i64
  %2166 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2165
  store volatile i64 %2156, i64* %2166, align 8, !tbaa !9
  %2167 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2168 = add nsw i32 %2167, 1
  %2169 = sext i32 %2168 to i64
  %2170 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2169
  store volatile i64 %2157, i64* %2170, align 8, !tbaa !9
  %2171 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2172 = add nsw i32 %2171, 2
  %2173 = sext i32 %2172 to i64
  %2174 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2173
  store volatile i64 %2163, i64* %2174, align 8, !tbaa !9
  %2175 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2176 = add nsw i32 %2175, 3
  store volatile i32 %2176, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2177

2177:                                             ; preds = %2155, %2159, %2151, %2147, %2144, %2141
  %2178 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2179 = icmp sgt i32 %2178, 4
  br i1 %2179, label %2180, label %2213

2180:                                             ; preds = %2177
  %2181 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2182 = icmp slt i32 %2181, 4
  br i1 %2182, label %2183, label %2213

2183:                                             ; preds = %2180
  %2184 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2185 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2186 = icmp eq i64 %2184, %2185
  br i1 %2186, label %2187, label %2213

2187:                                             ; preds = %2183
  %2188 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2189 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2190 = icmp eq i64 %2188, %2189
  br i1 %2190, label %2191, label %2213

2191:                                             ; preds = %2187
  %2192 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2193 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2194 = icmp sgt i64 %2193, %2192
  br i1 %2194, label %2195, label %2213

2195:                                             ; preds = %2191
  %2196 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2196, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2197 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2198 = add nsw i32 %2197, -4
  store volatile i32 %2198, i32* @P2_is_marked, align 4, !tbaa !5
  %2199 = add nsw i64 %2193, %2192
  %2200 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2201 = sext i32 %2200 to i64
  %2202 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2201
  store volatile i64 %2192, i64* %2202, align 8, !tbaa !9
  %2203 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2204 = add nsw i32 %2203, 1
  %2205 = sext i32 %2204 to i64
  %2206 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2205
  store volatile i64 %2193, i64* %2206, align 8, !tbaa !9
  %2207 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2208 = add nsw i32 %2207, 2
  %2209 = sext i32 %2208 to i64
  %2210 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2209
  store volatile i64 %2199, i64* %2210, align 8, !tbaa !9
  %2211 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2212 = add nsw i32 %2211, 3
  store volatile i32 %2212, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2213

2213:                                             ; preds = %2191, %2195, %2187, %2183, %2180, %2177
  %2214 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2215 = icmp sgt i32 %2214, 4
  br i1 %2215, label %2216, label %2248

2216:                                             ; preds = %2213
  %2217 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2218 = icmp slt i32 %2217, 4
  br i1 %2218, label %2219, label %2248

2219:                                             ; preds = %2216
  %2220 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2221 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2222 = icmp eq i64 %2220, %2221
  br i1 %2222, label %2223, label %2248

2223:                                             ; preds = %2219
  %2224 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2225 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2226 = icmp eq i64 %2224, %2225
  br i1 %2226, label %2227, label %2248

2227:                                             ; preds = %2223
  %2228 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2229 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2230 = icmp sgt i64 %2229, %2228
  br i1 %2230, label %2231, label %2248

2231:                                             ; preds = %2227
  %2232 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2233 = add nsw i32 %2232, -4
  store volatile i32 %2233, i32* @P2_is_marked, align 4, !tbaa !5
  %2234 = add nsw i64 %2229, %2228
  %2235 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2236 = sext i32 %2235 to i64
  %2237 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2236
  store volatile i64 %2228, i64* %2237, align 8, !tbaa !9
  %2238 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2239 = add nsw i32 %2238, 1
  %2240 = sext i32 %2239 to i64
  %2241 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2240
  store volatile i64 %2229, i64* %2241, align 8, !tbaa !9
  %2242 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2243 = add nsw i32 %2242, 2
  %2244 = sext i32 %2243 to i64
  %2245 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2244
  store volatile i64 %2234, i64* %2245, align 8, !tbaa !9
  %2246 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2247 = add nsw i32 %2246, 3
  store volatile i32 %2247, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2248

2248:                                             ; preds = %2227, %2231, %2223, %2219, %2216, %2213
  %2249 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2250 = icmp sgt i32 %2249, 4
  br i1 %2250, label %2251, label %2284

2251:                                             ; preds = %2248
  %2252 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2253 = icmp slt i32 %2252, 4
  br i1 %2253, label %2254, label %2284

2254:                                             ; preds = %2251
  %2255 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2256 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2257 = icmp eq i64 %2255, %2256
  br i1 %2257, label %2258, label %2284

2258:                                             ; preds = %2254
  %2259 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2260 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2261 = icmp eq i64 %2259, %2260
  br i1 %2261, label %2262, label %2284

2262:                                             ; preds = %2258
  %2263 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2264 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2265 = icmp sgt i64 %2264, %2263
  br i1 %2265, label %2266, label %2284

2266:                                             ; preds = %2262
  %2267 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %2267, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2268 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2269 = add nsw i32 %2268, -4
  store volatile i32 %2269, i32* @P2_is_marked, align 4, !tbaa !5
  %2270 = add nsw i64 %2264, %2263
  %2271 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2272 = sext i32 %2271 to i64
  %2273 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2272
  store volatile i64 %2263, i64* %2273, align 8, !tbaa !9
  %2274 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2275 = add nsw i32 %2274, 1
  %2276 = sext i32 %2275 to i64
  %2277 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2276
  store volatile i64 %2264, i64* %2277, align 8, !tbaa !9
  %2278 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2279 = add nsw i32 %2278, 2
  %2280 = sext i32 %2279 to i64
  %2281 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2280
  store volatile i64 %2270, i64* %2281, align 8, !tbaa !9
  %2282 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2283 = add nsw i32 %2282, 3
  store volatile i32 %2283, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2284

2284:                                             ; preds = %2262, %2266, %2258, %2254, %2251, %2248
  %2285 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2286 = icmp sgt i32 %2285, 4
  br i1 %2286, label %2287, label %2319

2287:                                             ; preds = %2284
  %2288 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2289 = icmp slt i32 %2288, 4
  br i1 %2289, label %2290, label %2319

2290:                                             ; preds = %2287
  %2291 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2292 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2293 = icmp eq i64 %2291, %2292
  br i1 %2293, label %2294, label %2319

2294:                                             ; preds = %2290
  %2295 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2296 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2297 = icmp eq i64 %2295, %2296
  br i1 %2297, label %2298, label %2319

2298:                                             ; preds = %2294
  %2299 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2300 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2301 = icmp sgt i64 %2300, %2299
  br i1 %2301, label %2302, label %2319

2302:                                             ; preds = %2298
  %2303 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2304 = add nsw i32 %2303, -4
  store volatile i32 %2304, i32* @P2_is_marked, align 4, !tbaa !5
  %2305 = add nsw i64 %2300, %2299
  %2306 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2307 = sext i32 %2306 to i64
  %2308 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2307
  store volatile i64 %2299, i64* %2308, align 8, !tbaa !9
  %2309 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2310 = add nsw i32 %2309, 1
  %2311 = sext i32 %2310 to i64
  %2312 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2311
  store volatile i64 %2300, i64* %2312, align 8, !tbaa !9
  %2313 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2314 = add nsw i32 %2313, 2
  %2315 = sext i32 %2314 to i64
  %2316 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2315
  store volatile i64 %2305, i64* %2316, align 8, !tbaa !9
  %2317 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2318 = add nsw i32 %2317, 3
  store volatile i32 %2318, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2319

2319:                                             ; preds = %2298, %2302, %2294, %2290, %2287, %2284
  %2320 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2321 = icmp sgt i32 %2320, 4
  br i1 %2321, label %2322, label %2355

2322:                                             ; preds = %2319
  %2323 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2324 = icmp slt i32 %2323, 4
  br i1 %2324, label %2325, label %2355

2325:                                             ; preds = %2322
  %2326 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2327 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2328 = icmp eq i64 %2326, %2327
  br i1 %2328, label %2329, label %2355

2329:                                             ; preds = %2325
  %2330 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2331 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2332 = icmp eq i64 %2330, %2331
  br i1 %2332, label %2333, label %2355

2333:                                             ; preds = %2329
  %2334 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2335 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2336 = icmp sgt i64 %2335, %2334
  br i1 %2336, label %2337, label %2355

2337:                                             ; preds = %2333
  %2338 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2338, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2339 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2340 = add nsw i32 %2339, -4
  store volatile i32 %2340, i32* @P2_is_marked, align 4, !tbaa !5
  %2341 = add nsw i64 %2335, %2334
  %2342 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2343 = sext i32 %2342 to i64
  %2344 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2343
  store volatile i64 %2334, i64* %2344, align 8, !tbaa !9
  %2345 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2346 = add nsw i32 %2345, 1
  %2347 = sext i32 %2346 to i64
  %2348 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2347
  store volatile i64 %2335, i64* %2348, align 8, !tbaa !9
  %2349 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2350 = add nsw i32 %2349, 2
  %2351 = sext i32 %2350 to i64
  %2352 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2351
  store volatile i64 %2341, i64* %2352, align 8, !tbaa !9
  %2353 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2354 = add nsw i32 %2353, 3
  store volatile i32 %2354, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2355

2355:                                             ; preds = %2333, %2337, %2329, %2325, %2322, %2319
  %2356 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2357 = icmp sgt i32 %2356, 4
  br i1 %2357, label %2358, label %2391

2358:                                             ; preds = %2355
  %2359 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2360 = icmp slt i32 %2359, 4
  br i1 %2360, label %2361, label %2391

2361:                                             ; preds = %2358
  %2362 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2363 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2364 = icmp eq i64 %2362, %2363
  br i1 %2364, label %2365, label %2391

2365:                                             ; preds = %2361
  %2366 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2367 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2368 = icmp eq i64 %2366, %2367
  br i1 %2368, label %2369, label %2391

2369:                                             ; preds = %2365
  %2370 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2371 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2372 = icmp sgt i64 %2371, %2370
  br i1 %2372, label %2373, label %2391

2373:                                             ; preds = %2369
  %2374 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %2374, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2375 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2376 = add nsw i32 %2375, -4
  store volatile i32 %2376, i32* @P2_is_marked, align 4, !tbaa !5
  %2377 = add nsw i64 %2371, %2370
  %2378 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2379 = sext i32 %2378 to i64
  %2380 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2379
  store volatile i64 %2370, i64* %2380, align 8, !tbaa !9
  %2381 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2382 = add nsw i32 %2381, 1
  %2383 = sext i32 %2382 to i64
  %2384 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2383
  store volatile i64 %2371, i64* %2384, align 8, !tbaa !9
  %2385 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2386 = add nsw i32 %2385, 2
  %2387 = sext i32 %2386 to i64
  %2388 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2387
  store volatile i64 %2377, i64* %2388, align 8, !tbaa !9
  %2389 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2390 = add nsw i32 %2389, 3
  store volatile i32 %2390, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2391

2391:                                             ; preds = %2369, %2373, %2365, %2361, %2358, %2355
  %2392 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2393 = icmp sgt i32 %2392, 4
  br i1 %2393, label %2394, label %2427

2394:                                             ; preds = %2391
  %2395 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2396 = icmp slt i32 %2395, 4
  br i1 %2396, label %2397, label %2427

2397:                                             ; preds = %2394
  %2398 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2399 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2400 = icmp eq i64 %2398, %2399
  br i1 %2400, label %2401, label %2427

2401:                                             ; preds = %2397
  %2402 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2403 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2404 = icmp eq i64 %2402, %2403
  br i1 %2404, label %2405, label %2427

2405:                                             ; preds = %2401
  %2406 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2407 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2408 = icmp sgt i64 %2407, %2406
  br i1 %2408, label %2409, label %2427

2409:                                             ; preds = %2405
  %2410 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2410, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2411 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2412 = add nsw i32 %2411, -4
  store volatile i32 %2412, i32* @P2_is_marked, align 4, !tbaa !5
  %2413 = add nsw i64 %2407, %2406
  %2414 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2415 = sext i32 %2414 to i64
  %2416 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2415
  store volatile i64 %2406, i64* %2416, align 8, !tbaa !9
  %2417 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2418 = add nsw i32 %2417, 1
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2419
  store volatile i64 %2407, i64* %2420, align 8, !tbaa !9
  %2421 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2422 = add nsw i32 %2421, 2
  %2423 = sext i32 %2422 to i64
  %2424 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2423
  store volatile i64 %2413, i64* %2424, align 8, !tbaa !9
  %2425 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2426 = add nsw i32 %2425, 3
  store volatile i32 %2426, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2427

2427:                                             ; preds = %2405, %2409, %2401, %2397, %2394, %2391
  %2428 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2429 = icmp sgt i32 %2428, 4
  br i1 %2429, label %2430, label %2463

2430:                                             ; preds = %2427
  %2431 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2432 = icmp slt i32 %2431, 4
  br i1 %2432, label %2433, label %2463

2433:                                             ; preds = %2430
  %2434 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2435 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2436 = icmp eq i64 %2434, %2435
  br i1 %2436, label %2437, label %2463

2437:                                             ; preds = %2433
  %2438 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2439 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2440 = icmp eq i64 %2438, %2439
  br i1 %2440, label %2441, label %2463

2441:                                             ; preds = %2437
  %2442 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2443 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2444 = icmp sgt i64 %2443, %2442
  br i1 %2444, label %2445, label %2463

2445:                                             ; preds = %2441
  %2446 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %2446, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2447 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2448 = add nsw i32 %2447, -4
  store volatile i32 %2448, i32* @P2_is_marked, align 4, !tbaa !5
  %2449 = add nsw i64 %2443, %2442
  %2450 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2451 = sext i32 %2450 to i64
  %2452 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2451
  store volatile i64 %2442, i64* %2452, align 8, !tbaa !9
  %2453 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2454 = add nsw i32 %2453, 1
  %2455 = sext i32 %2454 to i64
  %2456 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2455
  store volatile i64 %2443, i64* %2456, align 8, !tbaa !9
  %2457 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2458 = add nsw i32 %2457, 2
  %2459 = sext i32 %2458 to i64
  %2460 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2459
  store volatile i64 %2449, i64* %2460, align 8, !tbaa !9
  %2461 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2462 = add nsw i32 %2461, 3
  store volatile i32 %2462, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2463

2463:                                             ; preds = %2441, %2445, %2437, %2433, %2430, %2427
  %2464 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2465 = icmp sgt i32 %2464, 4
  br i1 %2465, label %2466, label %2499

2466:                                             ; preds = %2463
  %2467 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2468 = icmp slt i32 %2467, 4
  br i1 %2468, label %2469, label %2499

2469:                                             ; preds = %2466
  %2470 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2471 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2472 = icmp eq i64 %2470, %2471
  br i1 %2472, label %2473, label %2499

2473:                                             ; preds = %2469
  %2474 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2475 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2476 = icmp eq i64 %2474, %2475
  br i1 %2476, label %2477, label %2499

2477:                                             ; preds = %2473
  %2478 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2479 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2480 = icmp sgt i64 %2479, %2478
  br i1 %2480, label %2481, label %2499

2481:                                             ; preds = %2477
  %2482 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2482, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2483 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2484 = add nsw i32 %2483, -4
  store volatile i32 %2484, i32* @P2_is_marked, align 4, !tbaa !5
  %2485 = add nsw i64 %2479, %2478
  %2486 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2487 = sext i32 %2486 to i64
  %2488 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2487
  store volatile i64 %2478, i64* %2488, align 8, !tbaa !9
  %2489 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2490 = add nsw i32 %2489, 1
  %2491 = sext i32 %2490 to i64
  %2492 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2491
  store volatile i64 %2479, i64* %2492, align 8, !tbaa !9
  %2493 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2494 = add nsw i32 %2493, 2
  %2495 = sext i32 %2494 to i64
  %2496 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2495
  store volatile i64 %2485, i64* %2496, align 8, !tbaa !9
  %2497 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2498 = add nsw i32 %2497, 3
  store volatile i32 %2498, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2499

2499:                                             ; preds = %2477, %2481, %2473, %2469, %2466, %2463
  %2500 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2501 = icmp sgt i32 %2500, 4
  br i1 %2501, label %2502, label %2534

2502:                                             ; preds = %2499
  %2503 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2504 = icmp slt i32 %2503, 4
  br i1 %2504, label %2505, label %2534

2505:                                             ; preds = %2502
  %2506 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2507 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2508 = icmp eq i64 %2506, %2507
  br i1 %2508, label %2509, label %2534

2509:                                             ; preds = %2505
  %2510 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2511 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2512 = icmp eq i64 %2510, %2511
  br i1 %2512, label %2513, label %2534

2513:                                             ; preds = %2509
  %2514 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2515 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2516 = icmp sgt i64 %2515, %2514
  br i1 %2516, label %2517, label %2534

2517:                                             ; preds = %2513
  %2518 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2519 = add nsw i32 %2518, -4
  store volatile i32 %2519, i32* @P2_is_marked, align 4, !tbaa !5
  %2520 = add nsw i64 %2515, %2514
  %2521 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2522 = sext i32 %2521 to i64
  %2523 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2522
  store volatile i64 %2514, i64* %2523, align 8, !tbaa !9
  %2524 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2525 = add nsw i32 %2524, 1
  %2526 = sext i32 %2525 to i64
  %2527 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2526
  store volatile i64 %2515, i64* %2527, align 8, !tbaa !9
  %2528 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2529 = add nsw i32 %2528, 2
  %2530 = sext i32 %2529 to i64
  %2531 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2530
  store volatile i64 %2520, i64* %2531, align 8, !tbaa !9
  %2532 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2533 = add nsw i32 %2532, 3
  store volatile i32 %2533, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2534

2534:                                             ; preds = %2513, %2517, %2509, %2505, %2502, %2499
  %2535 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2536 = icmp sgt i32 %2535, 4
  br i1 %2536, label %2537, label %2570

2537:                                             ; preds = %2534
  %2538 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2539 = icmp slt i32 %2538, 4
  br i1 %2539, label %2540, label %2570

2540:                                             ; preds = %2537
  %2541 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2542 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2543 = icmp eq i64 %2541, %2542
  br i1 %2543, label %2544, label %2570

2544:                                             ; preds = %2540
  %2545 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2546 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2547 = icmp eq i64 %2545, %2546
  br i1 %2547, label %2548, label %2570

2548:                                             ; preds = %2544
  %2549 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2550 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2551 = icmp sgt i64 %2550, %2549
  br i1 %2551, label %2552, label %2570

2552:                                             ; preds = %2548
  %2553 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2553, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2554 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2555 = add nsw i32 %2554, -4
  store volatile i32 %2555, i32* @P2_is_marked, align 4, !tbaa !5
  %2556 = add nsw i64 %2550, %2549
  %2557 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2558 = sext i32 %2557 to i64
  %2559 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2558
  store volatile i64 %2549, i64* %2559, align 8, !tbaa !9
  %2560 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2561 = add nsw i32 %2560, 1
  %2562 = sext i32 %2561 to i64
  %2563 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2562
  store volatile i64 %2550, i64* %2563, align 8, !tbaa !9
  %2564 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2565 = add nsw i32 %2564, 2
  %2566 = sext i32 %2565 to i64
  %2567 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2566
  store volatile i64 %2556, i64* %2567, align 8, !tbaa !9
  %2568 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2569 = add nsw i32 %2568, 3
  store volatile i32 %2569, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2570

2570:                                             ; preds = %2548, %2552, %2544, %2540, %2537, %2534
  %2571 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2572 = icmp sgt i32 %2571, 4
  br i1 %2572, label %2573, label %2605

2573:                                             ; preds = %2570
  %2574 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2575 = icmp slt i32 %2574, 4
  br i1 %2575, label %2576, label %2605

2576:                                             ; preds = %2573
  %2577 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2578 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2579 = icmp eq i64 %2577, %2578
  br i1 %2579, label %2580, label %2605

2580:                                             ; preds = %2576
  %2581 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2582 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2583 = icmp eq i64 %2581, %2582
  br i1 %2583, label %2584, label %2605

2584:                                             ; preds = %2580
  %2585 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2586 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2587 = icmp sgt i64 %2586, %2585
  br i1 %2587, label %2588, label %2605

2588:                                             ; preds = %2584
  %2589 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2590 = add nsw i32 %2589, -4
  store volatile i32 %2590, i32* @P2_is_marked, align 4, !tbaa !5
  %2591 = add nsw i64 %2586, %2585
  %2592 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2593 = sext i32 %2592 to i64
  %2594 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2593
  store volatile i64 %2585, i64* %2594, align 8, !tbaa !9
  %2595 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2596 = add nsw i32 %2595, 1
  %2597 = sext i32 %2596 to i64
  %2598 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2597
  store volatile i64 %2586, i64* %2598, align 8, !tbaa !9
  %2599 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2600 = add nsw i32 %2599, 2
  %2601 = sext i32 %2600 to i64
  %2602 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2601
  store volatile i64 %2591, i64* %2602, align 8, !tbaa !9
  %2603 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2604 = add nsw i32 %2603, 3
  store volatile i32 %2604, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2605

2605:                                             ; preds = %2584, %2588, %2580, %2576, %2573, %2570
  %2606 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2607 = icmp sgt i32 %2606, 4
  br i1 %2607, label %2608, label %2641

2608:                                             ; preds = %2605
  %2609 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2610 = icmp slt i32 %2609, 4
  br i1 %2610, label %2611, label %2641

2611:                                             ; preds = %2608
  %2612 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2613 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2614 = icmp eq i64 %2612, %2613
  br i1 %2614, label %2615, label %2641

2615:                                             ; preds = %2611
  %2616 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2617 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2618 = icmp eq i64 %2616, %2617
  br i1 %2618, label %2619, label %2641

2619:                                             ; preds = %2615
  %2620 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2621 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2622 = icmp sgt i64 %2621, %2620
  br i1 %2622, label %2623, label %2641

2623:                                             ; preds = %2619
  %2624 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %2624, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2625 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2626 = add nsw i32 %2625, -4
  store volatile i32 %2626, i32* @P2_is_marked, align 4, !tbaa !5
  %2627 = add nsw i64 %2621, %2620
  %2628 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2629 = sext i32 %2628 to i64
  %2630 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2629
  store volatile i64 %2620, i64* %2630, align 8, !tbaa !9
  %2631 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2632 = add nsw i32 %2631, 1
  %2633 = sext i32 %2632 to i64
  %2634 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2633
  store volatile i64 %2621, i64* %2634, align 8, !tbaa !9
  %2635 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2636 = add nsw i32 %2635, 2
  %2637 = sext i32 %2636 to i64
  %2638 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2637
  store volatile i64 %2627, i64* %2638, align 8, !tbaa !9
  %2639 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2640 = add nsw i32 %2639, 3
  store volatile i32 %2640, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2641

2641:                                             ; preds = %2619, %2623, %2615, %2611, %2608, %2605
  %2642 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2643 = icmp sgt i32 %2642, 4
  br i1 %2643, label %2644, label %2676

2644:                                             ; preds = %2641
  %2645 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2646 = icmp slt i32 %2645, 4
  br i1 %2646, label %2647, label %2676

2647:                                             ; preds = %2644
  %2648 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2649 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2650 = icmp eq i64 %2648, %2649
  br i1 %2650, label %2651, label %2676

2651:                                             ; preds = %2647
  %2652 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2653 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2654 = icmp eq i64 %2652, %2653
  br i1 %2654, label %2655, label %2676

2655:                                             ; preds = %2651
  %2656 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2657 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2658 = icmp sgt i64 %2657, %2656
  br i1 %2658, label %2659, label %2676

2659:                                             ; preds = %2655
  %2660 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2661 = add nsw i32 %2660, -4
  store volatile i32 %2661, i32* @P2_is_marked, align 4, !tbaa !5
  %2662 = add nsw i64 %2657, %2656
  %2663 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2664 = sext i32 %2663 to i64
  %2665 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2664
  store volatile i64 %2656, i64* %2665, align 8, !tbaa !9
  %2666 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2667 = add nsw i32 %2666, 1
  %2668 = sext i32 %2667 to i64
  %2669 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2668
  store volatile i64 %2657, i64* %2669, align 8, !tbaa !9
  %2670 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2671 = add nsw i32 %2670, 2
  %2672 = sext i32 %2671 to i64
  %2673 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2672
  store volatile i64 %2662, i64* %2673, align 8, !tbaa !9
  %2674 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2675 = add nsw i32 %2674, 3
  store volatile i32 %2675, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2676

2676:                                             ; preds = %2655, %2659, %2651, %2647, %2644, %2641
  %2677 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2678 = icmp sgt i32 %2677, 4
  br i1 %2678, label %2679, label %2712

2679:                                             ; preds = %2676
  %2680 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2681 = icmp slt i32 %2680, 4
  br i1 %2681, label %2682, label %2712

2682:                                             ; preds = %2679
  %2683 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2684 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2685 = icmp eq i64 %2683, %2684
  br i1 %2685, label %2686, label %2712

2686:                                             ; preds = %2682
  %2687 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2688 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2689 = icmp eq i64 %2687, %2688
  br i1 %2689, label %2690, label %2712

2690:                                             ; preds = %2686
  %2691 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2692 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2693 = icmp sgt i64 %2692, %2691
  br i1 %2693, label %2694, label %2712

2694:                                             ; preds = %2690
  %2695 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %2695, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2696 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2697 = add nsw i32 %2696, -4
  store volatile i32 %2697, i32* @P2_is_marked, align 4, !tbaa !5
  %2698 = add nsw i64 %2692, %2691
  %2699 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2700 = sext i32 %2699 to i64
  %2701 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2700
  store volatile i64 %2691, i64* %2701, align 8, !tbaa !9
  %2702 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2703 = add nsw i32 %2702, 1
  %2704 = sext i32 %2703 to i64
  %2705 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2704
  store volatile i64 %2692, i64* %2705, align 8, !tbaa !9
  %2706 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2707 = add nsw i32 %2706, 2
  %2708 = sext i32 %2707 to i64
  %2709 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2708
  store volatile i64 %2698, i64* %2709, align 8, !tbaa !9
  %2710 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2711 = add nsw i32 %2710, 3
  store volatile i32 %2711, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2712

2712:                                             ; preds = %2690, %2694, %2686, %2682, %2679, %2676
  %2713 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2714 = icmp sgt i32 %2713, 4
  br i1 %2714, label %2715, label %2747

2715:                                             ; preds = %2712
  %2716 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2717 = icmp slt i32 %2716, 4
  br i1 %2717, label %2718, label %2747

2718:                                             ; preds = %2715
  %2719 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2720 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2721 = icmp eq i64 %2719, %2720
  br i1 %2721, label %2722, label %2747

2722:                                             ; preds = %2718
  %2723 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2724 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2725 = icmp eq i64 %2723, %2724
  br i1 %2725, label %2726, label %2747

2726:                                             ; preds = %2722
  %2727 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2728 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2729 = icmp sgt i64 %2728, %2727
  br i1 %2729, label %2730, label %2747

2730:                                             ; preds = %2726
  %2731 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2732 = add nsw i32 %2731, -4
  store volatile i32 %2732, i32* @P2_is_marked, align 4, !tbaa !5
  %2733 = add nsw i64 %2728, %2727
  %2734 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2735 = sext i32 %2734 to i64
  %2736 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2735
  store volatile i64 %2727, i64* %2736, align 8, !tbaa !9
  %2737 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2738 = add nsw i32 %2737, 1
  %2739 = sext i32 %2738 to i64
  %2740 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2739
  store volatile i64 %2728, i64* %2740, align 8, !tbaa !9
  %2741 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2742 = add nsw i32 %2741, 2
  %2743 = sext i32 %2742 to i64
  %2744 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2743
  store volatile i64 %2733, i64* %2744, align 8, !tbaa !9
  %2745 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2746 = add nsw i32 %2745, 3
  store volatile i32 %2746, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2747

2747:                                             ; preds = %2726, %2730, %2722, %2718, %2715, %2712
  %2748 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2749 = icmp sgt i32 %2748, 4
  br i1 %2749, label %2750, label %2783

2750:                                             ; preds = %2747
  %2751 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2752 = icmp slt i32 %2751, 4
  br i1 %2752, label %2753, label %2783

2753:                                             ; preds = %2750
  %2754 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2755 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2756 = icmp eq i64 %2754, %2755
  br i1 %2756, label %2757, label %2783

2757:                                             ; preds = %2753
  %2758 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2759 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2760 = icmp eq i64 %2758, %2759
  br i1 %2760, label %2761, label %2783

2761:                                             ; preds = %2757
  %2762 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2763 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2764 = icmp sgt i64 %2763, %2762
  br i1 %2764, label %2765, label %2783

2765:                                             ; preds = %2761
  %2766 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2766, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2767 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2768 = add nsw i32 %2767, -4
  store volatile i32 %2768, i32* @P2_is_marked, align 4, !tbaa !5
  %2769 = add nsw i64 %2763, %2762
  %2770 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2771 = sext i32 %2770 to i64
  %2772 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2771
  store volatile i64 %2762, i64* %2772, align 8, !tbaa !9
  %2773 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2774 = add nsw i32 %2773, 1
  %2775 = sext i32 %2774 to i64
  %2776 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2775
  store volatile i64 %2763, i64* %2776, align 8, !tbaa !9
  %2777 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2778 = add nsw i32 %2777, 2
  %2779 = sext i32 %2778 to i64
  %2780 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2779
  store volatile i64 %2769, i64* %2780, align 8, !tbaa !9
  %2781 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2782 = add nsw i32 %2781, 3
  store volatile i32 %2782, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2783

2783:                                             ; preds = %2761, %2765, %2757, %2753, %2750, %2747
  %2784 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2785 = icmp sgt i32 %2784, 4
  br i1 %2785, label %2786, label %2819

2786:                                             ; preds = %2783
  %2787 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2788 = icmp slt i32 %2787, 4
  br i1 %2788, label %2789, label %2819

2789:                                             ; preds = %2786
  %2790 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2791 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2792 = icmp eq i64 %2790, %2791
  br i1 %2792, label %2793, label %2819

2793:                                             ; preds = %2789
  %2794 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2795 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2796 = icmp eq i64 %2794, %2795
  br i1 %2796, label %2797, label %2819

2797:                                             ; preds = %2793
  %2798 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2799 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2800 = icmp sgt i64 %2799, %2798
  br i1 %2800, label %2801, label %2819

2801:                                             ; preds = %2797
  %2802 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %2802, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2803 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2804 = add nsw i32 %2803, -4
  store volatile i32 %2804, i32* @P2_is_marked, align 4, !tbaa !5
  %2805 = add nsw i64 %2799, %2798
  %2806 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2807 = sext i32 %2806 to i64
  %2808 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2807
  store volatile i64 %2798, i64* %2808, align 8, !tbaa !9
  %2809 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2810 = add nsw i32 %2809, 1
  %2811 = sext i32 %2810 to i64
  %2812 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2811
  store volatile i64 %2799, i64* %2812, align 8, !tbaa !9
  %2813 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2814 = add nsw i32 %2813, 2
  %2815 = sext i32 %2814 to i64
  %2816 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2815
  store volatile i64 %2805, i64* %2816, align 8, !tbaa !9
  %2817 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2818 = add nsw i32 %2817, 3
  store volatile i32 %2818, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2819

2819:                                             ; preds = %2797, %2801, %2793, %2789, %2786, %2783
  %2820 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2821 = icmp sgt i32 %2820, 4
  br i1 %2821, label %2822, label %2855

2822:                                             ; preds = %2819
  %2823 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2824 = icmp slt i32 %2823, 4
  br i1 %2824, label %2825, label %2855

2825:                                             ; preds = %2822
  %2826 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2827 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2828 = icmp eq i64 %2826, %2827
  br i1 %2828, label %2829, label %2855

2829:                                             ; preds = %2825
  %2830 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2831 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2832 = icmp eq i64 %2830, %2831
  br i1 %2832, label %2833, label %2855

2833:                                             ; preds = %2829
  %2834 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2835 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2836 = icmp sgt i64 %2835, %2834
  br i1 %2836, label %2837, label %2855

2837:                                             ; preds = %2833
  %2838 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %2838, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2839 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2840 = add nsw i32 %2839, -4
  store volatile i32 %2840, i32* @P2_is_marked, align 4, !tbaa !5
  %2841 = add nsw i64 %2835, %2834
  %2842 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2843 = sext i32 %2842 to i64
  %2844 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2843
  store volatile i64 %2834, i64* %2844, align 8, !tbaa !9
  %2845 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2846 = add nsw i32 %2845, 1
  %2847 = sext i32 %2846 to i64
  %2848 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2847
  store volatile i64 %2835, i64* %2848, align 8, !tbaa !9
  %2849 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2850 = add nsw i32 %2849, 2
  %2851 = sext i32 %2850 to i64
  %2852 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2851
  store volatile i64 %2841, i64* %2852, align 8, !tbaa !9
  %2853 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2854 = add nsw i32 %2853, 3
  store volatile i32 %2854, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2855

2855:                                             ; preds = %2833, %2837, %2829, %2825, %2822, %2819
  %2856 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2857 = icmp sgt i32 %2856, 4
  br i1 %2857, label %2858, label %2890

2858:                                             ; preds = %2855
  %2859 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2860 = icmp slt i32 %2859, 4
  br i1 %2860, label %2861, label %2890

2861:                                             ; preds = %2858
  %2862 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2863 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2864 = icmp eq i64 %2862, %2863
  br i1 %2864, label %2865, label %2890

2865:                                             ; preds = %2861
  %2866 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2867 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2868 = icmp eq i64 %2866, %2867
  br i1 %2868, label %2869, label %2890

2869:                                             ; preds = %2865
  %2870 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2871 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2872 = icmp sgt i64 %2871, %2870
  br i1 %2872, label %2873, label %2890

2873:                                             ; preds = %2869
  %2874 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2875 = add nsw i32 %2874, -4
  store volatile i32 %2875, i32* @P2_is_marked, align 4, !tbaa !5
  %2876 = add nsw i64 %2871, %2870
  %2877 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2878 = sext i32 %2877 to i64
  %2879 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2878
  store volatile i64 %2870, i64* %2879, align 8, !tbaa !9
  %2880 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2881 = add nsw i32 %2880, 1
  %2882 = sext i32 %2881 to i64
  %2883 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2882
  store volatile i64 %2871, i64* %2883, align 8, !tbaa !9
  %2884 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2885 = add nsw i32 %2884, 2
  %2886 = sext i32 %2885 to i64
  %2887 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2886
  store volatile i64 %2876, i64* %2887, align 8, !tbaa !9
  %2888 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2889 = add nsw i32 %2888, 3
  store volatile i32 %2889, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2890

2890:                                             ; preds = %2869, %2873, %2865, %2861, %2858, %2855
  %2891 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2892 = icmp sgt i32 %2891, 4
  br i1 %2892, label %2893, label %2926

2893:                                             ; preds = %2890
  %2894 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2895 = icmp slt i32 %2894, 4
  br i1 %2895, label %2896, label %2926

2896:                                             ; preds = %2893
  %2897 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2898 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2899 = icmp eq i64 %2897, %2898
  br i1 %2899, label %2900, label %2926

2900:                                             ; preds = %2896
  %2901 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2902 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2903 = icmp eq i64 %2901, %2902
  br i1 %2903, label %2904, label %2926

2904:                                             ; preds = %2900
  %2905 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2906 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2907 = icmp sgt i64 %2906, %2905
  br i1 %2907, label %2908, label %2926

2908:                                             ; preds = %2904
  %2909 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %2909, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2910 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2911 = add nsw i32 %2910, -4
  store volatile i32 %2911, i32* @P2_is_marked, align 4, !tbaa !5
  %2912 = add nsw i64 %2906, %2905
  %2913 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2914 = sext i32 %2913 to i64
  %2915 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2914
  store volatile i64 %2905, i64* %2915, align 8, !tbaa !9
  %2916 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2917 = add nsw i32 %2916, 1
  %2918 = sext i32 %2917 to i64
  %2919 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2918
  store volatile i64 %2906, i64* %2919, align 8, !tbaa !9
  %2920 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2921 = add nsw i32 %2920, 2
  %2922 = sext i32 %2921 to i64
  %2923 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2922
  store volatile i64 %2912, i64* %2923, align 8, !tbaa !9
  %2924 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2925 = add nsw i32 %2924, 3
  store volatile i32 %2925, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2926

2926:                                             ; preds = %2904, %2908, %2900, %2896, %2893, %2890
  %2927 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2928 = icmp sgt i32 %2927, 4
  br i1 %2928, label %2929, label %2961

2929:                                             ; preds = %2926
  %2930 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2931 = icmp slt i32 %2930, 4
  br i1 %2931, label %2932, label %2961

2932:                                             ; preds = %2929
  %2933 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2934 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2935 = icmp eq i64 %2933, %2934
  br i1 %2935, label %2936, label %2961

2936:                                             ; preds = %2932
  %2937 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2938 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2939 = icmp eq i64 %2937, %2938
  br i1 %2939, label %2940, label %2961

2940:                                             ; preds = %2936
  %2941 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %2942 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2943 = icmp sgt i64 %2942, %2941
  br i1 %2943, label %2944, label %2961

2944:                                             ; preds = %2940
  %2945 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2946 = add nsw i32 %2945, -4
  store volatile i32 %2946, i32* @P2_is_marked, align 4, !tbaa !5
  %2947 = add nsw i64 %2942, %2941
  %2948 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2949 = sext i32 %2948 to i64
  %2950 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2949
  store volatile i64 %2941, i64* %2950, align 8, !tbaa !9
  %2951 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2952 = add nsw i32 %2951, 1
  %2953 = sext i32 %2952 to i64
  %2954 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2953
  store volatile i64 %2942, i64* %2954, align 8, !tbaa !9
  %2955 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2956 = add nsw i32 %2955, 2
  %2957 = sext i32 %2956 to i64
  %2958 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2957
  store volatile i64 %2947, i64* %2958, align 8, !tbaa !9
  %2959 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2960 = add nsw i32 %2959, 3
  store volatile i32 %2960, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2961

2961:                                             ; preds = %2940, %2944, %2936, %2932, %2929, %2926
  %2962 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2963 = icmp sgt i32 %2962, 4
  br i1 %2963, label %2964, label %2997

2964:                                             ; preds = %2961
  %2965 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2966 = icmp slt i32 %2965, 4
  br i1 %2966, label %2967, label %2997

2967:                                             ; preds = %2964
  %2968 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2969 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %2970 = icmp eq i64 %2968, %2969
  br i1 %2970, label %2971, label %2997

2971:                                             ; preds = %2967
  %2972 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2973 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %2974 = icmp eq i64 %2972, %2973
  br i1 %2974, label %2975, label %2997

2975:                                             ; preds = %2971
  %2976 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %2977 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2978 = icmp sgt i64 %2977, %2976
  br i1 %2978, label %2979, label %2997

2979:                                             ; preds = %2975
  %2980 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %2980, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %2981 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2982 = add nsw i32 %2981, -4
  store volatile i32 %2982, i32* @P2_is_marked, align 4, !tbaa !5
  %2983 = add nsw i64 %2977, %2976
  %2984 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2985 = sext i32 %2984 to i64
  %2986 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2985
  store volatile i64 %2976, i64* %2986, align 8, !tbaa !9
  %2987 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2988 = add nsw i32 %2987, 1
  %2989 = sext i32 %2988 to i64
  %2990 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2989
  store volatile i64 %2977, i64* %2990, align 8, !tbaa !9
  %2991 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2992 = add nsw i32 %2991, 2
  %2993 = sext i32 %2992 to i64
  %2994 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %2993
  store volatile i64 %2983, i64* %2994, align 8, !tbaa !9
  %2995 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %2996 = add nsw i32 %2995, 3
  store volatile i32 %2996, i32* @P3_is_marked, align 4, !tbaa !5
  br label %2997

2997:                                             ; preds = %2975, %2979, %2971, %2967, %2964, %2961
  %2998 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %2999 = icmp sgt i32 %2998, 4
  br i1 %2999, label %3000, label %3033

3000:                                             ; preds = %2997
  %3001 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3002 = icmp slt i32 %3001, 4
  br i1 %3002, label %3003, label %3033

3003:                                             ; preds = %3000
  %3004 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3005 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3006 = icmp eq i64 %3004, %3005
  br i1 %3006, label %3007, label %3033

3007:                                             ; preds = %3003
  %3008 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3009 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3010 = icmp eq i64 %3008, %3009
  br i1 %3010, label %3011, label %3033

3011:                                             ; preds = %3007
  %3012 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3013 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3014 = icmp sgt i64 %3013, %3012
  br i1 %3014, label %3015, label %3033

3015:                                             ; preds = %3011
  %3016 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3016, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3017 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3018 = add nsw i32 %3017, -4
  store volatile i32 %3018, i32* @P2_is_marked, align 4, !tbaa !5
  %3019 = add nsw i64 %3013, %3012
  %3020 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3021 = sext i32 %3020 to i64
  %3022 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3021
  store volatile i64 %3012, i64* %3022, align 8, !tbaa !9
  %3023 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3024 = add nsw i32 %3023, 1
  %3025 = sext i32 %3024 to i64
  %3026 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3025
  store volatile i64 %3013, i64* %3026, align 8, !tbaa !9
  %3027 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3028 = add nsw i32 %3027, 2
  %3029 = sext i32 %3028 to i64
  %3030 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3029
  store volatile i64 %3019, i64* %3030, align 8, !tbaa !9
  %3031 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3032 = add nsw i32 %3031, 3
  store volatile i32 %3032, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3033

3033:                                             ; preds = %3011, %3015, %3007, %3003, %3000, %2997
  %3034 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3035 = icmp sgt i32 %3034, 4
  br i1 %3035, label %3036, label %3069

3036:                                             ; preds = %3033
  %3037 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3038 = icmp slt i32 %3037, 4
  br i1 %3038, label %3039, label %3069

3039:                                             ; preds = %3036
  %3040 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3041 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3042 = icmp eq i64 %3040, %3041
  br i1 %3042, label %3043, label %3069

3043:                                             ; preds = %3039
  %3044 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3045 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3046 = icmp eq i64 %3044, %3045
  br i1 %3046, label %3047, label %3069

3047:                                             ; preds = %3043
  %3048 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3049 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3050 = icmp sgt i64 %3049, %3048
  br i1 %3050, label %3051, label %3069

3051:                                             ; preds = %3047
  %3052 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3052, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3053 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3054 = add nsw i32 %3053, -4
  store volatile i32 %3054, i32* @P2_is_marked, align 4, !tbaa !5
  %3055 = add nsw i64 %3049, %3048
  %3056 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3057 = sext i32 %3056 to i64
  %3058 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3057
  store volatile i64 %3048, i64* %3058, align 8, !tbaa !9
  %3059 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3060 = add nsw i32 %3059, 1
  %3061 = sext i32 %3060 to i64
  %3062 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3061
  store volatile i64 %3049, i64* %3062, align 8, !tbaa !9
  %3063 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3064 = add nsw i32 %3063, 2
  %3065 = sext i32 %3064 to i64
  %3066 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3065
  store volatile i64 %3055, i64* %3066, align 8, !tbaa !9
  %3067 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3068 = add nsw i32 %3067, 3
  store volatile i32 %3068, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3069

3069:                                             ; preds = %3047, %3051, %3043, %3039, %3036, %3033
  %3070 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3071 = icmp sgt i32 %3070, 4
  br i1 %3071, label %3072, label %3105

3072:                                             ; preds = %3069
  %3073 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3074 = icmp slt i32 %3073, 4
  br i1 %3074, label %3075, label %3105

3075:                                             ; preds = %3072
  %3076 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3077 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3078 = icmp eq i64 %3076, %3077
  br i1 %3078, label %3079, label %3105

3079:                                             ; preds = %3075
  %3080 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3081 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3082 = icmp eq i64 %3080, %3081
  br i1 %3082, label %3083, label %3105

3083:                                             ; preds = %3079
  %3084 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3085 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3086 = icmp sgt i64 %3085, %3084
  br i1 %3086, label %3087, label %3105

3087:                                             ; preds = %3083
  %3088 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3088, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3089 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3090 = add nsw i32 %3089, -4
  store volatile i32 %3090, i32* @P2_is_marked, align 4, !tbaa !5
  %3091 = add nsw i64 %3085, %3084
  %3092 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3093 = sext i32 %3092 to i64
  %3094 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3093
  store volatile i64 %3084, i64* %3094, align 8, !tbaa !9
  %3095 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3096 = add nsw i32 %3095, 1
  %3097 = sext i32 %3096 to i64
  %3098 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3097
  store volatile i64 %3085, i64* %3098, align 8, !tbaa !9
  %3099 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3100 = add nsw i32 %3099, 2
  %3101 = sext i32 %3100 to i64
  %3102 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3101
  store volatile i64 %3091, i64* %3102, align 8, !tbaa !9
  %3103 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3104 = add nsw i32 %3103, 3
  store volatile i32 %3104, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3105

3105:                                             ; preds = %3083, %3087, %3079, %3075, %3072, %3069
  %3106 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3107 = icmp sgt i32 %3106, 4
  br i1 %3107, label %3108, label %3141

3108:                                             ; preds = %3105
  %3109 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3110 = icmp slt i32 %3109, 4
  br i1 %3110, label %3111, label %3141

3111:                                             ; preds = %3108
  %3112 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3113 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3114 = icmp eq i64 %3112, %3113
  br i1 %3114, label %3115, label %3141

3115:                                             ; preds = %3111
  %3116 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3117 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3118 = icmp eq i64 %3116, %3117
  br i1 %3118, label %3119, label %3141

3119:                                             ; preds = %3115
  %3120 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3121 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3122 = icmp sgt i64 %3121, %3120
  br i1 %3122, label %3123, label %3141

3123:                                             ; preds = %3119
  %3124 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3124, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3125 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3126 = add nsw i32 %3125, -4
  store volatile i32 %3126, i32* @P2_is_marked, align 4, !tbaa !5
  %3127 = add nsw i64 %3121, %3120
  %3128 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3129 = sext i32 %3128 to i64
  %3130 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3129
  store volatile i64 %3120, i64* %3130, align 8, !tbaa !9
  %3131 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3132 = add nsw i32 %3131, 1
  %3133 = sext i32 %3132 to i64
  %3134 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3133
  store volatile i64 %3121, i64* %3134, align 8, !tbaa !9
  %3135 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3136 = add nsw i32 %3135, 2
  %3137 = sext i32 %3136 to i64
  %3138 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3137
  store volatile i64 %3127, i64* %3138, align 8, !tbaa !9
  %3139 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3140 = add nsw i32 %3139, 3
  store volatile i32 %3140, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3141

3141:                                             ; preds = %3119, %3123, %3115, %3111, %3108, %3105
  %3142 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3143 = icmp sgt i32 %3142, 4
  br i1 %3143, label %3144, label %3176

3144:                                             ; preds = %3141
  %3145 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3146 = icmp slt i32 %3145, 4
  br i1 %3146, label %3147, label %3176

3147:                                             ; preds = %3144
  %3148 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3149 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3150 = icmp eq i64 %3148, %3149
  br i1 %3150, label %3151, label %3176

3151:                                             ; preds = %3147
  %3152 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3153 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3154 = icmp eq i64 %3152, %3153
  br i1 %3154, label %3155, label %3176

3155:                                             ; preds = %3151
  %3156 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3157 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3158 = icmp sgt i64 %3157, %3156
  br i1 %3158, label %3159, label %3176

3159:                                             ; preds = %3155
  %3160 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3161 = add nsw i32 %3160, -4
  store volatile i32 %3161, i32* @P2_is_marked, align 4, !tbaa !5
  %3162 = add nsw i64 %3157, %3156
  %3163 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3164 = sext i32 %3163 to i64
  %3165 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3164
  store volatile i64 %3156, i64* %3165, align 8, !tbaa !9
  %3166 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3167 = add nsw i32 %3166, 1
  %3168 = sext i32 %3167 to i64
  %3169 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3168
  store volatile i64 %3157, i64* %3169, align 8, !tbaa !9
  %3170 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3171 = add nsw i32 %3170, 2
  %3172 = sext i32 %3171 to i64
  %3173 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3172
  store volatile i64 %3162, i64* %3173, align 8, !tbaa !9
  %3174 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3175 = add nsw i32 %3174, 3
  store volatile i32 %3175, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3176

3176:                                             ; preds = %3155, %3159, %3151, %3147, %3144, %3141
  %3177 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3178 = icmp sgt i32 %3177, 4
  br i1 %3178, label %3179, label %3212

3179:                                             ; preds = %3176
  %3180 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3181 = icmp slt i32 %3180, 4
  br i1 %3181, label %3182, label %3212

3182:                                             ; preds = %3179
  %3183 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3184 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3185 = icmp eq i64 %3183, %3184
  br i1 %3185, label %3186, label %3212

3186:                                             ; preds = %3182
  %3187 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3188 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3189 = icmp eq i64 %3187, %3188
  br i1 %3189, label %3190, label %3212

3190:                                             ; preds = %3186
  %3191 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3192 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3193 = icmp sgt i64 %3192, %3191
  br i1 %3193, label %3194, label %3212

3194:                                             ; preds = %3190
  %3195 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3195, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3196 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3197 = add nsw i32 %3196, -4
  store volatile i32 %3197, i32* @P2_is_marked, align 4, !tbaa !5
  %3198 = add nsw i64 %3192, %3191
  %3199 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3200 = sext i32 %3199 to i64
  %3201 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3200
  store volatile i64 %3191, i64* %3201, align 8, !tbaa !9
  %3202 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3203 = add nsw i32 %3202, 1
  %3204 = sext i32 %3203 to i64
  %3205 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3204
  store volatile i64 %3192, i64* %3205, align 8, !tbaa !9
  %3206 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3207 = add nsw i32 %3206, 2
  %3208 = sext i32 %3207 to i64
  %3209 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3208
  store volatile i64 %3198, i64* %3209, align 8, !tbaa !9
  %3210 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3211 = add nsw i32 %3210, 3
  store volatile i32 %3211, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3212

3212:                                             ; preds = %3190, %3194, %3186, %3182, %3179, %3176
  %3213 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3214 = icmp sgt i32 %3213, 4
  br i1 %3214, label %3215, label %3247

3215:                                             ; preds = %3212
  %3216 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3217 = icmp slt i32 %3216, 4
  br i1 %3217, label %3218, label %3247

3218:                                             ; preds = %3215
  %3219 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3220 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3221 = icmp eq i64 %3219, %3220
  br i1 %3221, label %3222, label %3247

3222:                                             ; preds = %3218
  %3223 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3224 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3225 = icmp eq i64 %3223, %3224
  br i1 %3225, label %3226, label %3247

3226:                                             ; preds = %3222
  %3227 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3228 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3229 = icmp sgt i64 %3228, %3227
  br i1 %3229, label %3230, label %3247

3230:                                             ; preds = %3226
  %3231 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3232 = add nsw i32 %3231, -4
  store volatile i32 %3232, i32* @P2_is_marked, align 4, !tbaa !5
  %3233 = add nsw i64 %3228, %3227
  %3234 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3235 = sext i32 %3234 to i64
  %3236 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3235
  store volatile i64 %3227, i64* %3236, align 8, !tbaa !9
  %3237 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3238 = add nsw i32 %3237, 1
  %3239 = sext i32 %3238 to i64
  %3240 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3239
  store volatile i64 %3228, i64* %3240, align 8, !tbaa !9
  %3241 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3242 = add nsw i32 %3241, 2
  %3243 = sext i32 %3242 to i64
  %3244 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3243
  store volatile i64 %3233, i64* %3244, align 8, !tbaa !9
  %3245 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3246 = add nsw i32 %3245, 3
  store volatile i32 %3246, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3247

3247:                                             ; preds = %3226, %3230, %3222, %3218, %3215, %3212
  %3248 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3249 = icmp sgt i32 %3248, 4
  br i1 %3249, label %3250, label %3283

3250:                                             ; preds = %3247
  %3251 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3252 = icmp slt i32 %3251, 4
  br i1 %3252, label %3253, label %3283

3253:                                             ; preds = %3250
  %3254 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3255 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3256 = icmp eq i64 %3254, %3255
  br i1 %3256, label %3257, label %3283

3257:                                             ; preds = %3253
  %3258 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3259 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3260 = icmp eq i64 %3258, %3259
  br i1 %3260, label %3261, label %3283

3261:                                             ; preds = %3257
  %3262 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3263 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3264 = icmp sgt i64 %3263, %3262
  br i1 %3264, label %3265, label %3283

3265:                                             ; preds = %3261
  %3266 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3266, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3267 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3268 = add nsw i32 %3267, -4
  store volatile i32 %3268, i32* @P2_is_marked, align 4, !tbaa !5
  %3269 = add nsw i64 %3263, %3262
  %3270 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3271 = sext i32 %3270 to i64
  %3272 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3271
  store volatile i64 %3262, i64* %3272, align 8, !tbaa !9
  %3273 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3274 = add nsw i32 %3273, 1
  %3275 = sext i32 %3274 to i64
  %3276 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3275
  store volatile i64 %3263, i64* %3276, align 8, !tbaa !9
  %3277 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3278 = add nsw i32 %3277, 2
  %3279 = sext i32 %3278 to i64
  %3280 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3279
  store volatile i64 %3269, i64* %3280, align 8, !tbaa !9
  %3281 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3282 = add nsw i32 %3281, 3
  store volatile i32 %3282, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3283

3283:                                             ; preds = %3261, %3265, %3257, %3253, %3250, %3247
  %3284 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3285 = icmp sgt i32 %3284, 4
  br i1 %3285, label %3286, label %3318

3286:                                             ; preds = %3283
  %3287 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3288 = icmp slt i32 %3287, 4
  br i1 %3288, label %3289, label %3318

3289:                                             ; preds = %3286
  %3290 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3291 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3292 = icmp eq i64 %3290, %3291
  br i1 %3292, label %3293, label %3318

3293:                                             ; preds = %3289
  %3294 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3295 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3296 = icmp eq i64 %3294, %3295
  br i1 %3296, label %3297, label %3318

3297:                                             ; preds = %3293
  %3298 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3299 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3300 = icmp sgt i64 %3299, %3298
  br i1 %3300, label %3301, label %3318

3301:                                             ; preds = %3297
  %3302 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3303 = add nsw i32 %3302, -4
  store volatile i32 %3303, i32* @P2_is_marked, align 4, !tbaa !5
  %3304 = add nsw i64 %3299, %3298
  %3305 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3306 = sext i32 %3305 to i64
  %3307 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3306
  store volatile i64 %3298, i64* %3307, align 8, !tbaa !9
  %3308 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3309 = add nsw i32 %3308, 1
  %3310 = sext i32 %3309 to i64
  %3311 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3310
  store volatile i64 %3299, i64* %3311, align 8, !tbaa !9
  %3312 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3313 = add nsw i32 %3312, 2
  %3314 = sext i32 %3313 to i64
  %3315 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3314
  store volatile i64 %3304, i64* %3315, align 8, !tbaa !9
  %3316 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3317 = add nsw i32 %3316, 3
  store volatile i32 %3317, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3318

3318:                                             ; preds = %3297, %3301, %3293, %3289, %3286, %3283
  %3319 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3320 = icmp sgt i32 %3319, 4
  br i1 %3320, label %3321, label %3354

3321:                                             ; preds = %3318
  %3322 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3323 = icmp slt i32 %3322, 4
  br i1 %3323, label %3324, label %3354

3324:                                             ; preds = %3321
  %3325 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3326 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3327 = icmp eq i64 %3325, %3326
  br i1 %3327, label %3328, label %3354

3328:                                             ; preds = %3324
  %3329 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3330 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3331 = icmp eq i64 %3329, %3330
  br i1 %3331, label %3332, label %3354

3332:                                             ; preds = %3328
  %3333 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3334 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3335 = icmp sgt i64 %3334, %3333
  br i1 %3335, label %3336, label %3354

3336:                                             ; preds = %3332
  %3337 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3337, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3338 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3339 = add nsw i32 %3338, -4
  store volatile i32 %3339, i32* @P2_is_marked, align 4, !tbaa !5
  %3340 = add nsw i64 %3334, %3333
  %3341 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3342 = sext i32 %3341 to i64
  %3343 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3342
  store volatile i64 %3333, i64* %3343, align 8, !tbaa !9
  %3344 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3345 = add nsw i32 %3344, 1
  %3346 = sext i32 %3345 to i64
  %3347 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3346
  store volatile i64 %3334, i64* %3347, align 8, !tbaa !9
  %3348 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3349 = add nsw i32 %3348, 2
  %3350 = sext i32 %3349 to i64
  %3351 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3350
  store volatile i64 %3340, i64* %3351, align 8, !tbaa !9
  %3352 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3353 = add nsw i32 %3352, 3
  store volatile i32 %3353, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3354

3354:                                             ; preds = %3332, %3336, %3328, %3324, %3321, %3318
  %3355 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3356 = icmp sgt i32 %3355, 4
  br i1 %3356, label %3357, label %3389

3357:                                             ; preds = %3354
  %3358 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3359 = icmp slt i32 %3358, 4
  br i1 %3359, label %3360, label %3389

3360:                                             ; preds = %3357
  %3361 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3362 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3363 = icmp eq i64 %3361, %3362
  br i1 %3363, label %3364, label %3389

3364:                                             ; preds = %3360
  %3365 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3366 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3367 = icmp eq i64 %3365, %3366
  br i1 %3367, label %3368, label %3389

3368:                                             ; preds = %3364
  %3369 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3370 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3371 = icmp sgt i64 %3370, %3369
  br i1 %3371, label %3372, label %3389

3372:                                             ; preds = %3368
  %3373 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3374 = add nsw i32 %3373, -4
  store volatile i32 %3374, i32* @P2_is_marked, align 4, !tbaa !5
  %3375 = add nsw i64 %3370, %3369
  %3376 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3377 = sext i32 %3376 to i64
  %3378 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3377
  store volatile i64 %3369, i64* %3378, align 8, !tbaa !9
  %3379 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3380 = add nsw i32 %3379, 1
  %3381 = sext i32 %3380 to i64
  %3382 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3381
  store volatile i64 %3370, i64* %3382, align 8, !tbaa !9
  %3383 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3384 = add nsw i32 %3383, 2
  %3385 = sext i32 %3384 to i64
  %3386 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3385
  store volatile i64 %3375, i64* %3386, align 8, !tbaa !9
  %3387 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3388 = add nsw i32 %3387, 3
  store volatile i32 %3388, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3389

3389:                                             ; preds = %3368, %3372, %3364, %3360, %3357, %3354
  %3390 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3391 = icmp sgt i32 %3390, 4
  br i1 %3391, label %3392, label %3425

3392:                                             ; preds = %3389
  %3393 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3394 = icmp slt i32 %3393, 4
  br i1 %3394, label %3395, label %3425

3395:                                             ; preds = %3392
  %3396 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3397 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3398 = icmp eq i64 %3396, %3397
  br i1 %3398, label %3399, label %3425

3399:                                             ; preds = %3395
  %3400 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3401 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3402 = icmp eq i64 %3400, %3401
  br i1 %3402, label %3403, label %3425

3403:                                             ; preds = %3399
  %3404 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3405 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3406 = icmp sgt i64 %3405, %3404
  br i1 %3406, label %3407, label %3425

3407:                                             ; preds = %3403
  %3408 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3408, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3409 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3410 = add nsw i32 %3409, -4
  store volatile i32 %3410, i32* @P2_is_marked, align 4, !tbaa !5
  %3411 = add nsw i64 %3405, %3404
  %3412 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3413 = sext i32 %3412 to i64
  %3414 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3413
  store volatile i64 %3404, i64* %3414, align 8, !tbaa !9
  %3415 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3416 = add nsw i32 %3415, 1
  %3417 = sext i32 %3416 to i64
  %3418 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3417
  store volatile i64 %3405, i64* %3418, align 8, !tbaa !9
  %3419 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3420 = add nsw i32 %3419, 2
  %3421 = sext i32 %3420 to i64
  %3422 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3421
  store volatile i64 %3411, i64* %3422, align 8, !tbaa !9
  %3423 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3424 = add nsw i32 %3423, 3
  store volatile i32 %3424, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3425

3425:                                             ; preds = %3403, %3407, %3399, %3395, %3392, %3389
  %3426 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3427 = icmp sgt i32 %3426, 4
  br i1 %3427, label %3428, label %3461

3428:                                             ; preds = %3425
  %3429 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3430 = icmp slt i32 %3429, 4
  br i1 %3430, label %3431, label %3461

3431:                                             ; preds = %3428
  %3432 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3433 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3434 = icmp eq i64 %3432, %3433
  br i1 %3434, label %3435, label %3461

3435:                                             ; preds = %3431
  %3436 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3437 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3438 = icmp eq i64 %3436, %3437
  br i1 %3438, label %3439, label %3461

3439:                                             ; preds = %3435
  %3440 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3441 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3442 = icmp sgt i64 %3441, %3440
  br i1 %3442, label %3443, label %3461

3443:                                             ; preds = %3439
  %3444 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3444, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3445 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3446 = add nsw i32 %3445, -4
  store volatile i32 %3446, i32* @P2_is_marked, align 4, !tbaa !5
  %3447 = add nsw i64 %3441, %3440
  %3448 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3449 = sext i32 %3448 to i64
  %3450 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3449
  store volatile i64 %3440, i64* %3450, align 8, !tbaa !9
  %3451 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3452 = add nsw i32 %3451, 1
  %3453 = sext i32 %3452 to i64
  %3454 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3453
  store volatile i64 %3441, i64* %3454, align 8, !tbaa !9
  %3455 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3456 = add nsw i32 %3455, 2
  %3457 = sext i32 %3456 to i64
  %3458 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3457
  store volatile i64 %3447, i64* %3458, align 8, !tbaa !9
  %3459 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3460 = add nsw i32 %3459, 3
  store volatile i32 %3460, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3461

3461:                                             ; preds = %3439, %3443, %3435, %3431, %3428, %3425
  %3462 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3463 = icmp sgt i32 %3462, 4
  br i1 %3463, label %3464, label %3497

3464:                                             ; preds = %3461
  %3465 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3466 = icmp slt i32 %3465, 4
  br i1 %3466, label %3467, label %3497

3467:                                             ; preds = %3464
  %3468 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3469 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3470 = icmp eq i64 %3468, %3469
  br i1 %3470, label %3471, label %3497

3471:                                             ; preds = %3467
  %3472 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3473 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3474 = icmp eq i64 %3472, %3473
  br i1 %3474, label %3475, label %3497

3475:                                             ; preds = %3471
  %3476 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3477 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3478 = icmp sgt i64 %3477, %3476
  br i1 %3478, label %3479, label %3497

3479:                                             ; preds = %3475
  %3480 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3480, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3481 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3482 = add nsw i32 %3481, -4
  store volatile i32 %3482, i32* @P2_is_marked, align 4, !tbaa !5
  %3483 = add nsw i64 %3477, %3476
  %3484 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3485 = sext i32 %3484 to i64
  %3486 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3485
  store volatile i64 %3476, i64* %3486, align 8, !tbaa !9
  %3487 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3488 = add nsw i32 %3487, 1
  %3489 = sext i32 %3488 to i64
  %3490 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3489
  store volatile i64 %3477, i64* %3490, align 8, !tbaa !9
  %3491 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3492 = add nsw i32 %3491, 2
  %3493 = sext i32 %3492 to i64
  %3494 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3493
  store volatile i64 %3483, i64* %3494, align 8, !tbaa !9
  %3495 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3496 = add nsw i32 %3495, 3
  store volatile i32 %3496, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3497

3497:                                             ; preds = %3475, %3479, %3471, %3467, %3464, %3461
  %3498 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3499 = icmp sgt i32 %3498, 4
  br i1 %3499, label %3500, label %3532

3500:                                             ; preds = %3497
  %3501 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3502 = icmp slt i32 %3501, 4
  br i1 %3502, label %3503, label %3532

3503:                                             ; preds = %3500
  %3504 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3505 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3506 = icmp eq i64 %3504, %3505
  br i1 %3506, label %3507, label %3532

3507:                                             ; preds = %3503
  %3508 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3509 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3510 = icmp eq i64 %3508, %3509
  br i1 %3510, label %3511, label %3532

3511:                                             ; preds = %3507
  %3512 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3513 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3514 = icmp sgt i64 %3513, %3512
  br i1 %3514, label %3515, label %3532

3515:                                             ; preds = %3511
  %3516 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3517 = add nsw i32 %3516, -4
  store volatile i32 %3517, i32* @P2_is_marked, align 4, !tbaa !5
  %3518 = add nsw i64 %3513, %3512
  %3519 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3520 = sext i32 %3519 to i64
  %3521 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3520
  store volatile i64 %3512, i64* %3521, align 8, !tbaa !9
  %3522 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3523 = add nsw i32 %3522, 1
  %3524 = sext i32 %3523 to i64
  %3525 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3524
  store volatile i64 %3513, i64* %3525, align 8, !tbaa !9
  %3526 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3527 = add nsw i32 %3526, 2
  %3528 = sext i32 %3527 to i64
  %3529 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3528
  store volatile i64 %3518, i64* %3529, align 8, !tbaa !9
  %3530 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3531 = add nsw i32 %3530, 3
  store volatile i32 %3531, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3532

3532:                                             ; preds = %3511, %3515, %3507, %3503, %3500, %3497
  %3533 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3534 = icmp sgt i32 %3533, 4
  br i1 %3534, label %3535, label %3568

3535:                                             ; preds = %3532
  %3536 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3537 = icmp slt i32 %3536, 4
  br i1 %3537, label %3538, label %3568

3538:                                             ; preds = %3535
  %3539 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3540 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3541 = icmp eq i64 %3539, %3540
  br i1 %3541, label %3542, label %3568

3542:                                             ; preds = %3538
  %3543 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3544 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3545 = icmp eq i64 %3543, %3544
  br i1 %3545, label %3546, label %3568

3546:                                             ; preds = %3542
  %3547 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3548 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3549 = icmp sgt i64 %3548, %3547
  br i1 %3549, label %3550, label %3568

3550:                                             ; preds = %3546
  %3551 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3551, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3552 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3553 = add nsw i32 %3552, -4
  store volatile i32 %3553, i32* @P2_is_marked, align 4, !tbaa !5
  %3554 = add nsw i64 %3548, %3547
  %3555 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3556 = sext i32 %3555 to i64
  %3557 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3556
  store volatile i64 %3547, i64* %3557, align 8, !tbaa !9
  %3558 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3559 = add nsw i32 %3558, 1
  %3560 = sext i32 %3559 to i64
  %3561 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3560
  store volatile i64 %3548, i64* %3561, align 8, !tbaa !9
  %3562 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3563 = add nsw i32 %3562, 2
  %3564 = sext i32 %3563 to i64
  %3565 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3564
  store volatile i64 %3554, i64* %3565, align 8, !tbaa !9
  %3566 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3567 = add nsw i32 %3566, 3
  store volatile i32 %3567, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3568

3568:                                             ; preds = %3546, %3550, %3542, %3538, %3535, %3532
  %3569 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3570 = icmp sgt i32 %3569, 4
  br i1 %3570, label %3571, label %3603

3571:                                             ; preds = %3568
  %3572 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3573 = icmp slt i32 %3572, 4
  br i1 %3573, label %3574, label %3603

3574:                                             ; preds = %3571
  %3575 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3576 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3577 = icmp eq i64 %3575, %3576
  br i1 %3577, label %3578, label %3603

3578:                                             ; preds = %3574
  %3579 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3580 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3581 = icmp eq i64 %3579, %3580
  br i1 %3581, label %3582, label %3603

3582:                                             ; preds = %3578
  %3583 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3584 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3585 = icmp sgt i64 %3584, %3583
  br i1 %3585, label %3586, label %3603

3586:                                             ; preds = %3582
  %3587 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3588 = add nsw i32 %3587, -4
  store volatile i32 %3588, i32* @P2_is_marked, align 4, !tbaa !5
  %3589 = add nsw i64 %3584, %3583
  %3590 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3591 = sext i32 %3590 to i64
  %3592 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3591
  store volatile i64 %3583, i64* %3592, align 8, !tbaa !9
  %3593 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3594 = add nsw i32 %3593, 1
  %3595 = sext i32 %3594 to i64
  %3596 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3595
  store volatile i64 %3584, i64* %3596, align 8, !tbaa !9
  %3597 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3598 = add nsw i32 %3597, 2
  %3599 = sext i32 %3598 to i64
  %3600 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3599
  store volatile i64 %3589, i64* %3600, align 8, !tbaa !9
  %3601 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3602 = add nsw i32 %3601, 3
  store volatile i32 %3602, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3603

3603:                                             ; preds = %3582, %3586, %3578, %3574, %3571, %3568
  %3604 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3605 = icmp sgt i32 %3604, 4
  br i1 %3605, label %3606, label %3639

3606:                                             ; preds = %3603
  %3607 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3608 = icmp slt i32 %3607, 4
  br i1 %3608, label %3609, label %3639

3609:                                             ; preds = %3606
  %3610 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3611 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3612 = icmp eq i64 %3610, %3611
  br i1 %3612, label %3613, label %3639

3613:                                             ; preds = %3609
  %3614 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3615 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3616 = icmp eq i64 %3614, %3615
  br i1 %3616, label %3617, label %3639

3617:                                             ; preds = %3613
  %3618 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3619 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3620 = icmp sgt i64 %3619, %3618
  br i1 %3620, label %3621, label %3639

3621:                                             ; preds = %3617
  %3622 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %3622, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3623 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3624 = add nsw i32 %3623, -4
  store volatile i32 %3624, i32* @P2_is_marked, align 4, !tbaa !5
  %3625 = add nsw i64 %3619, %3618
  %3626 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3627 = sext i32 %3626 to i64
  %3628 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3627
  store volatile i64 %3618, i64* %3628, align 8, !tbaa !9
  %3629 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3630 = add nsw i32 %3629, 1
  %3631 = sext i32 %3630 to i64
  %3632 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3631
  store volatile i64 %3619, i64* %3632, align 8, !tbaa !9
  %3633 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3634 = add nsw i32 %3633, 2
  %3635 = sext i32 %3634 to i64
  %3636 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3635
  store volatile i64 %3625, i64* %3636, align 8, !tbaa !9
  %3637 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3638 = add nsw i32 %3637, 3
  store volatile i32 %3638, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3639

3639:                                             ; preds = %3617, %3621, %3613, %3609, %3606, %3603
  %3640 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3641 = icmp sgt i32 %3640, 4
  br i1 %3641, label %3642, label %3675

3642:                                             ; preds = %3639
  %3643 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3644 = icmp slt i32 %3643, 4
  br i1 %3644, label %3645, label %3675

3645:                                             ; preds = %3642
  %3646 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3647 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3648 = icmp eq i64 %3646, %3647
  br i1 %3648, label %3649, label %3675

3649:                                             ; preds = %3645
  %3650 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3651 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3652 = icmp eq i64 %3650, %3651
  br i1 %3652, label %3653, label %3675

3653:                                             ; preds = %3649
  %3654 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3655 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3656 = icmp sgt i64 %3655, %3654
  br i1 %3656, label %3657, label %3675

3657:                                             ; preds = %3653
  %3658 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3658, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3659 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3660 = add nsw i32 %3659, -4
  store volatile i32 %3660, i32* @P2_is_marked, align 4, !tbaa !5
  %3661 = add nsw i64 %3655, %3654
  %3662 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3663 = sext i32 %3662 to i64
  %3664 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3663
  store volatile i64 %3654, i64* %3664, align 8, !tbaa !9
  %3665 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3666 = add nsw i32 %3665, 1
  %3667 = sext i32 %3666 to i64
  %3668 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3667
  store volatile i64 %3655, i64* %3668, align 8, !tbaa !9
  %3669 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3670 = add nsw i32 %3669, 2
  %3671 = sext i32 %3670 to i64
  %3672 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3671
  store volatile i64 %3661, i64* %3672, align 8, !tbaa !9
  %3673 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3674 = add nsw i32 %3673, 3
  store volatile i32 %3674, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3675

3675:                                             ; preds = %3653, %3657, %3649, %3645, %3642, %3639
  %3676 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3677 = icmp sgt i32 %3676, 4
  br i1 %3677, label %3678, label %3711

3678:                                             ; preds = %3675
  %3679 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3680 = icmp slt i32 %3679, 4
  br i1 %3680, label %3681, label %3711

3681:                                             ; preds = %3678
  %3682 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3683 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3684 = icmp eq i64 %3682, %3683
  br i1 %3684, label %3685, label %3711

3685:                                             ; preds = %3681
  %3686 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3687 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3688 = icmp eq i64 %3686, %3687
  br i1 %3688, label %3689, label %3711

3689:                                             ; preds = %3685
  %3690 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3691 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3692 = icmp sgt i64 %3691, %3690
  br i1 %3692, label %3693, label %3711

3693:                                             ; preds = %3689
  %3694 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %3694, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3695 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3696 = add nsw i32 %3695, -4
  store volatile i32 %3696, i32* @P2_is_marked, align 4, !tbaa !5
  %3697 = add nsw i64 %3691, %3690
  %3698 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3699 = sext i32 %3698 to i64
  %3700 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3699
  store volatile i64 %3690, i64* %3700, align 8, !tbaa !9
  %3701 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3702 = add nsw i32 %3701, 1
  %3703 = sext i32 %3702 to i64
  %3704 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3703
  store volatile i64 %3691, i64* %3704, align 8, !tbaa !9
  %3705 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3706 = add nsw i32 %3705, 2
  %3707 = sext i32 %3706 to i64
  %3708 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3707
  store volatile i64 %3697, i64* %3708, align 8, !tbaa !9
  %3709 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3710 = add nsw i32 %3709, 3
  store volatile i32 %3710, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3711

3711:                                             ; preds = %3689, %3693, %3685, %3681, %3678, %3675
  %3712 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3713 = icmp sgt i32 %3712, 4
  br i1 %3713, label %3714, label %3747

3714:                                             ; preds = %3711
  %3715 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3716 = icmp slt i32 %3715, 4
  br i1 %3716, label %3717, label %3747

3717:                                             ; preds = %3714
  %3718 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3719 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3720 = icmp eq i64 %3718, %3719
  br i1 %3720, label %3721, label %3747

3721:                                             ; preds = %3717
  %3722 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3723 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3724 = icmp eq i64 %3722, %3723
  br i1 %3724, label %3725, label %3747

3725:                                             ; preds = %3721
  %3726 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3727 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3728 = icmp sgt i64 %3727, %3726
  br i1 %3728, label %3729, label %3747

3729:                                             ; preds = %3725
  %3730 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3730, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3731 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3732 = add nsw i32 %3731, -4
  store volatile i32 %3732, i32* @P2_is_marked, align 4, !tbaa !5
  %3733 = add nsw i64 %3727, %3726
  %3734 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3735 = sext i32 %3734 to i64
  %3736 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3735
  store volatile i64 %3726, i64* %3736, align 8, !tbaa !9
  %3737 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3738 = add nsw i32 %3737, 1
  %3739 = sext i32 %3738 to i64
  %3740 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3739
  store volatile i64 %3727, i64* %3740, align 8, !tbaa !9
  %3741 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3742 = add nsw i32 %3741, 2
  %3743 = sext i32 %3742 to i64
  %3744 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3743
  store volatile i64 %3733, i64* %3744, align 8, !tbaa !9
  %3745 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3746 = add nsw i32 %3745, 3
  store volatile i32 %3746, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3747

3747:                                             ; preds = %3725, %3729, %3721, %3717, %3714, %3711
  %3748 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3749 = icmp sgt i32 %3748, 4
  br i1 %3749, label %3750, label %3783

3750:                                             ; preds = %3747
  %3751 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3752 = icmp slt i32 %3751, 4
  br i1 %3752, label %3753, label %3783

3753:                                             ; preds = %3750
  %3754 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3755 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3756 = icmp eq i64 %3754, %3755
  br i1 %3756, label %3757, label %3783

3757:                                             ; preds = %3753
  %3758 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3759 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3760 = icmp eq i64 %3758, %3759
  br i1 %3760, label %3761, label %3783

3761:                                             ; preds = %3757
  %3762 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3763 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3764 = icmp sgt i64 %3763, %3762
  br i1 %3764, label %3765, label %3783

3765:                                             ; preds = %3761
  %3766 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3766, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3767 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3768 = add nsw i32 %3767, -4
  store volatile i32 %3768, i32* @P2_is_marked, align 4, !tbaa !5
  %3769 = add nsw i64 %3763, %3762
  %3770 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3771 = sext i32 %3770 to i64
  %3772 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3771
  store volatile i64 %3762, i64* %3772, align 8, !tbaa !9
  %3773 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3774 = add nsw i32 %3773, 1
  %3775 = sext i32 %3774 to i64
  %3776 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3775
  store volatile i64 %3763, i64* %3776, align 8, !tbaa !9
  %3777 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3778 = add nsw i32 %3777, 2
  %3779 = sext i32 %3778 to i64
  %3780 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3779
  store volatile i64 %3769, i64* %3780, align 8, !tbaa !9
  %3781 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3782 = add nsw i32 %3781, 3
  store volatile i32 %3782, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3783

3783:                                             ; preds = %3761, %3765, %3757, %3753, %3750, %3747
  %3784 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3785 = icmp sgt i32 %3784, 4
  br i1 %3785, label %3786, label %3819

3786:                                             ; preds = %3783
  %3787 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3788 = icmp slt i32 %3787, 4
  br i1 %3788, label %3789, label %3819

3789:                                             ; preds = %3786
  %3790 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3791 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3792 = icmp eq i64 %3790, %3791
  br i1 %3792, label %3793, label %3819

3793:                                             ; preds = %3789
  %3794 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3795 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3796 = icmp eq i64 %3794, %3795
  br i1 %3796, label %3797, label %3819

3797:                                             ; preds = %3793
  %3798 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3799 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3800 = icmp sgt i64 %3799, %3798
  br i1 %3800, label %3801, label %3819

3801:                                             ; preds = %3797
  %3802 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %3802, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3803 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3804 = add nsw i32 %3803, -4
  store volatile i32 %3804, i32* @P2_is_marked, align 4, !tbaa !5
  %3805 = add nsw i64 %3799, %3798
  %3806 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3807 = sext i32 %3806 to i64
  %3808 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3807
  store volatile i64 %3798, i64* %3808, align 8, !tbaa !9
  %3809 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3810 = add nsw i32 %3809, 1
  %3811 = sext i32 %3810 to i64
  %3812 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3811
  store volatile i64 %3799, i64* %3812, align 8, !tbaa !9
  %3813 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3814 = add nsw i32 %3813, 2
  %3815 = sext i32 %3814 to i64
  %3816 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3815
  store volatile i64 %3805, i64* %3816, align 8, !tbaa !9
  %3817 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3818 = add nsw i32 %3817, 3
  store volatile i32 %3818, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3819

3819:                                             ; preds = %3797, %3801, %3793, %3789, %3786, %3783
  %3820 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3821 = icmp sgt i32 %3820, 4
  br i1 %3821, label %3822, label %3855

3822:                                             ; preds = %3819
  %3823 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3824 = icmp slt i32 %3823, 4
  br i1 %3824, label %3825, label %3855

3825:                                             ; preds = %3822
  %3826 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3827 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3828 = icmp eq i64 %3826, %3827
  br i1 %3828, label %3829, label %3855

3829:                                             ; preds = %3825
  %3830 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3831 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3832 = icmp eq i64 %3830, %3831
  br i1 %3832, label %3833, label %3855

3833:                                             ; preds = %3829
  %3834 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3835 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3836 = icmp sgt i64 %3835, %3834
  br i1 %3836, label %3837, label %3855

3837:                                             ; preds = %3833
  %3838 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %3838, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3839 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3840 = add nsw i32 %3839, -4
  store volatile i32 %3840, i32* @P2_is_marked, align 4, !tbaa !5
  %3841 = add nsw i64 %3835, %3834
  %3842 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3843 = sext i32 %3842 to i64
  %3844 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3843
  store volatile i64 %3834, i64* %3844, align 8, !tbaa !9
  %3845 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3846 = add nsw i32 %3845, 1
  %3847 = sext i32 %3846 to i64
  %3848 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3847
  store volatile i64 %3835, i64* %3848, align 8, !tbaa !9
  %3849 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3850 = add nsw i32 %3849, 2
  %3851 = sext i32 %3850 to i64
  %3852 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3851
  store volatile i64 %3841, i64* %3852, align 8, !tbaa !9
  %3853 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3854 = add nsw i32 %3853, 3
  store volatile i32 %3854, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3855

3855:                                             ; preds = %3833, %3837, %3829, %3825, %3822, %3819
  %3856 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3857 = icmp sgt i32 %3856, 4
  br i1 %3857, label %3858, label %3891

3858:                                             ; preds = %3855
  %3859 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3860 = icmp slt i32 %3859, 4
  br i1 %3860, label %3861, label %3891

3861:                                             ; preds = %3858
  %3862 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3863 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3864 = icmp eq i64 %3862, %3863
  br i1 %3864, label %3865, label %3891

3865:                                             ; preds = %3861
  %3866 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3867 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3868 = icmp eq i64 %3866, %3867
  br i1 %3868, label %3869, label %3891

3869:                                             ; preds = %3865
  %3870 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3871 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3872 = icmp sgt i64 %3871, %3870
  br i1 %3872, label %3873, label %3891

3873:                                             ; preds = %3869
  %3874 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3874, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3875 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3876 = add nsw i32 %3875, -4
  store volatile i32 %3876, i32* @P2_is_marked, align 4, !tbaa !5
  %3877 = add nsw i64 %3871, %3870
  %3878 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3879 = sext i32 %3878 to i64
  %3880 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3879
  store volatile i64 %3870, i64* %3880, align 8, !tbaa !9
  %3881 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3882 = add nsw i32 %3881, 1
  %3883 = sext i32 %3882 to i64
  %3884 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3883
  store volatile i64 %3871, i64* %3884, align 8, !tbaa !9
  %3885 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3886 = add nsw i32 %3885, 2
  %3887 = sext i32 %3886 to i64
  %3888 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3887
  store volatile i64 %3877, i64* %3888, align 8, !tbaa !9
  %3889 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3890 = add nsw i32 %3889, 3
  store volatile i32 %3890, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3891

3891:                                             ; preds = %3869, %3873, %3865, %3861, %3858, %3855
  %3892 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3893 = icmp sgt i32 %3892, 4
  br i1 %3893, label %3894, label %3927

3894:                                             ; preds = %3891
  %3895 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3896 = icmp slt i32 %3895, 4
  br i1 %3896, label %3897, label %3927

3897:                                             ; preds = %3894
  %3898 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3899 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3900 = icmp eq i64 %3898, %3899
  br i1 %3900, label %3901, label %3927

3901:                                             ; preds = %3897
  %3902 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3903 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3904 = icmp eq i64 %3902, %3903
  br i1 %3904, label %3905, label %3927

3905:                                             ; preds = %3901
  %3906 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3907 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3908 = icmp sgt i64 %3907, %3906
  br i1 %3908, label %3909, label %3927

3909:                                             ; preds = %3905
  %3910 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %3910, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3911 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3912 = add nsw i32 %3911, -4
  store volatile i32 %3912, i32* @P2_is_marked, align 4, !tbaa !5
  %3913 = add nsw i64 %3907, %3906
  %3914 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3915 = sext i32 %3914 to i64
  %3916 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3915
  store volatile i64 %3906, i64* %3916, align 8, !tbaa !9
  %3917 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3918 = add nsw i32 %3917, 1
  %3919 = sext i32 %3918 to i64
  %3920 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3919
  store volatile i64 %3907, i64* %3920, align 8, !tbaa !9
  %3921 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3922 = add nsw i32 %3921, 2
  %3923 = sext i32 %3922 to i64
  %3924 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3923
  store volatile i64 %3913, i64* %3924, align 8, !tbaa !9
  %3925 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3926 = add nsw i32 %3925, 3
  store volatile i32 %3926, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3927

3927:                                             ; preds = %3905, %3909, %3901, %3897, %3894, %3891
  %3928 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3929 = icmp sgt i32 %3928, 4
  br i1 %3929, label %3930, label %3962

3930:                                             ; preds = %3927
  %3931 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3932 = icmp slt i32 %3931, 4
  br i1 %3932, label %3933, label %3962

3933:                                             ; preds = %3930
  %3934 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3935 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %3936 = icmp eq i64 %3934, %3935
  br i1 %3936, label %3937, label %3962

3937:                                             ; preds = %3933
  %3938 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3939 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3940 = icmp eq i64 %3938, %3939
  br i1 %3940, label %3941, label %3962

3941:                                             ; preds = %3937
  %3942 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3943 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3944 = icmp sgt i64 %3943, %3942
  br i1 %3944, label %3945, label %3962

3945:                                             ; preds = %3941
  %3946 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3947 = add nsw i32 %3946, -4
  store volatile i32 %3947, i32* @P2_is_marked, align 4, !tbaa !5
  %3948 = add nsw i64 %3943, %3942
  %3949 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3950 = sext i32 %3949 to i64
  %3951 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3950
  store volatile i64 %3942, i64* %3951, align 8, !tbaa !9
  %3952 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3953 = add nsw i32 %3952, 1
  %3954 = sext i32 %3953 to i64
  %3955 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3954
  store volatile i64 %3943, i64* %3955, align 8, !tbaa !9
  %3956 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3957 = add nsw i32 %3956, 2
  %3958 = sext i32 %3957 to i64
  %3959 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3958
  store volatile i64 %3948, i64* %3959, align 8, !tbaa !9
  %3960 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3961 = add nsw i32 %3960, 3
  store volatile i32 %3961, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3962

3962:                                             ; preds = %3941, %3945, %3937, %3933, %3930, %3927
  %3963 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3964 = icmp sgt i32 %3963, 4
  br i1 %3964, label %3965, label %3998

3965:                                             ; preds = %3962
  %3966 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3967 = icmp slt i32 %3966, 4
  br i1 %3967, label %3968, label %3998

3968:                                             ; preds = %3965
  %3969 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3970 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %3971 = icmp eq i64 %3969, %3970
  br i1 %3971, label %3972, label %3998

3972:                                             ; preds = %3968
  %3973 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3974 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3975 = icmp eq i64 %3973, %3974
  br i1 %3975, label %3976, label %3998

3976:                                             ; preds = %3972
  %3977 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %3978 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %3979 = icmp sgt i64 %3978, %3977
  br i1 %3979, label %3980, label %3998

3980:                                             ; preds = %3976
  %3981 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %3981, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %3982 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %3983 = add nsw i32 %3982, -4
  store volatile i32 %3983, i32* @P2_is_marked, align 4, !tbaa !5
  %3984 = add nsw i64 %3978, %3977
  %3985 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3986 = sext i32 %3985 to i64
  %3987 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3986
  store volatile i64 %3977, i64* %3987, align 8, !tbaa !9
  %3988 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3989 = add nsw i32 %3988, 1
  %3990 = sext i32 %3989 to i64
  %3991 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3990
  store volatile i64 %3978, i64* %3991, align 8, !tbaa !9
  %3992 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3993 = add nsw i32 %3992, 2
  %3994 = sext i32 %3993 to i64
  %3995 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %3994
  store volatile i64 %3984, i64* %3995, align 8, !tbaa !9
  %3996 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %3997 = add nsw i32 %3996, 3
  store volatile i32 %3997, i32* @P3_is_marked, align 4, !tbaa !5
  br label %3998

3998:                                             ; preds = %3976, %3980, %3972, %3968, %3965, %3962
  %3999 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4000 = icmp sgt i32 %3999, 4
  br i1 %4000, label %4001, label %4033

4001:                                             ; preds = %3998
  %4002 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4003 = icmp slt i32 %4002, 4
  br i1 %4003, label %4004, label %4033

4004:                                             ; preds = %4001
  %4005 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4006 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4007 = icmp eq i64 %4005, %4006
  br i1 %4007, label %4008, label %4033

4008:                                             ; preds = %4004
  %4009 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4010 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4011 = icmp eq i64 %4009, %4010
  br i1 %4011, label %4012, label %4033

4012:                                             ; preds = %4008
  %4013 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4014 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4015 = icmp sgt i64 %4014, %4013
  br i1 %4015, label %4016, label %4033

4016:                                             ; preds = %4012
  %4017 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4018 = add nsw i32 %4017, -4
  store volatile i32 %4018, i32* @P2_is_marked, align 4, !tbaa !5
  %4019 = add nsw i64 %4014, %4013
  %4020 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4021 = sext i32 %4020 to i64
  %4022 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4021
  store volatile i64 %4013, i64* %4022, align 8, !tbaa !9
  %4023 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4024 = add nsw i32 %4023, 1
  %4025 = sext i32 %4024 to i64
  %4026 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4025
  store volatile i64 %4014, i64* %4026, align 8, !tbaa !9
  %4027 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4028 = add nsw i32 %4027, 2
  %4029 = sext i32 %4028 to i64
  %4030 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4029
  store volatile i64 %4019, i64* %4030, align 8, !tbaa !9
  %4031 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4032 = add nsw i32 %4031, 3
  store volatile i32 %4032, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4033

4033:                                             ; preds = %4012, %4016, %4008, %4004, %4001, %3998
  %4034 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4035 = icmp sgt i32 %4034, 4
  br i1 %4035, label %4036, label %4069

4036:                                             ; preds = %4033
  %4037 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4038 = icmp slt i32 %4037, 4
  br i1 %4038, label %4039, label %4069

4039:                                             ; preds = %4036
  %4040 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4041 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4042 = icmp eq i64 %4040, %4041
  br i1 %4042, label %4043, label %4069

4043:                                             ; preds = %4039
  %4044 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4045 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4046 = icmp eq i64 %4044, %4045
  br i1 %4046, label %4047, label %4069

4047:                                             ; preds = %4043
  %4048 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4049 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4050 = icmp sgt i64 %4049, %4048
  br i1 %4050, label %4051, label %4069

4051:                                             ; preds = %4047
  %4052 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %4052, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4053 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4054 = add nsw i32 %4053, -4
  store volatile i32 %4054, i32* @P2_is_marked, align 4, !tbaa !5
  %4055 = add nsw i64 %4049, %4048
  %4056 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4057 = sext i32 %4056 to i64
  %4058 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4057
  store volatile i64 %4048, i64* %4058, align 8, !tbaa !9
  %4059 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4060 = add nsw i32 %4059, 1
  %4061 = sext i32 %4060 to i64
  %4062 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4061
  store volatile i64 %4049, i64* %4062, align 8, !tbaa !9
  %4063 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4064 = add nsw i32 %4063, 2
  %4065 = sext i32 %4064 to i64
  %4066 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4065
  store volatile i64 %4055, i64* %4066, align 8, !tbaa !9
  %4067 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4068 = add nsw i32 %4067, 3
  store volatile i32 %4068, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4069

4069:                                             ; preds = %4047, %4051, %4043, %4039, %4036, %4033
  %4070 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4071 = icmp sgt i32 %4070, 4
  br i1 %4071, label %4072, label %4105

4072:                                             ; preds = %4069
  %4073 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4074 = icmp slt i32 %4073, 4
  br i1 %4074, label %4075, label %4105

4075:                                             ; preds = %4072
  %4076 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4077 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4078 = icmp eq i64 %4076, %4077
  br i1 %4078, label %4079, label %4105

4079:                                             ; preds = %4075
  %4080 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4081 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4082 = icmp eq i64 %4080, %4081
  br i1 %4082, label %4083, label %4105

4083:                                             ; preds = %4079
  %4084 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4085 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4086 = icmp sgt i64 %4085, %4084
  br i1 %4086, label %4087, label %4105

4087:                                             ; preds = %4083
  %4088 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %4088, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4089 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4090 = add nsw i32 %4089, -4
  store volatile i32 %4090, i32* @P2_is_marked, align 4, !tbaa !5
  %4091 = add nsw i64 %4085, %4084
  %4092 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4093 = sext i32 %4092 to i64
  %4094 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4093
  store volatile i64 %4084, i64* %4094, align 8, !tbaa !9
  %4095 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4096 = add nsw i32 %4095, 1
  %4097 = sext i32 %4096 to i64
  %4098 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4097
  store volatile i64 %4085, i64* %4098, align 8, !tbaa !9
  %4099 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4100 = add nsw i32 %4099, 2
  %4101 = sext i32 %4100 to i64
  %4102 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4101
  store volatile i64 %4091, i64* %4102, align 8, !tbaa !9
  %4103 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4104 = add nsw i32 %4103, 3
  store volatile i32 %4104, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4105

4105:                                             ; preds = %4083, %4087, %4079, %4075, %4072, %4069
  %4106 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4107 = icmp sgt i32 %4106, 4
  br i1 %4107, label %4108, label %4141

4108:                                             ; preds = %4105
  %4109 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4110 = icmp slt i32 %4109, 4
  br i1 %4110, label %4111, label %4141

4111:                                             ; preds = %4108
  %4112 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4113 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4114 = icmp eq i64 %4112, %4113
  br i1 %4114, label %4115, label %4141

4115:                                             ; preds = %4111
  %4116 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4117 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4118 = icmp eq i64 %4116, %4117
  br i1 %4118, label %4119, label %4141

4119:                                             ; preds = %4115
  %4120 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4121 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4122 = icmp sgt i64 %4121, %4120
  br i1 %4122, label %4123, label %4141

4123:                                             ; preds = %4119
  %4124 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  store volatile i64 %4124, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4125 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4126 = add nsw i32 %4125, -4
  store volatile i32 %4126, i32* @P2_is_marked, align 4, !tbaa !5
  %4127 = add nsw i64 %4121, %4120
  %4128 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4129 = sext i32 %4128 to i64
  %4130 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4129
  store volatile i64 %4120, i64* %4130, align 8, !tbaa !9
  %4131 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4132 = add nsw i32 %4131, 1
  %4133 = sext i32 %4132 to i64
  %4134 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4133
  store volatile i64 %4121, i64* %4134, align 8, !tbaa !9
  %4135 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4136 = add nsw i32 %4135, 2
  %4137 = sext i32 %4136 to i64
  %4138 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4137
  store volatile i64 %4127, i64* %4138, align 8, !tbaa !9
  %4139 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4140 = add nsw i32 %4139, 3
  store volatile i32 %4140, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4141

4141:                                             ; preds = %4119, %4123, %4115, %4111, %4108, %4105
  %4142 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4143 = icmp sgt i32 %4142, 4
  br i1 %4143, label %4144, label %4176

4144:                                             ; preds = %4141
  %4145 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4146 = icmp slt i32 %4145, 4
  br i1 %4146, label %4147, label %4176

4147:                                             ; preds = %4144
  %4148 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4149 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4150 = icmp eq i64 %4148, %4149
  br i1 %4150, label %4151, label %4176

4151:                                             ; preds = %4147
  %4152 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4153 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4154 = icmp eq i64 %4152, %4153
  br i1 %4154, label %4155, label %4176

4155:                                             ; preds = %4151
  %4156 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4157 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4158 = icmp sgt i64 %4157, %4156
  br i1 %4158, label %4159, label %4176

4159:                                             ; preds = %4155
  %4160 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4161 = add nsw i32 %4160, -4
  store volatile i32 %4161, i32* @P2_is_marked, align 4, !tbaa !5
  %4162 = add nsw i64 %4157, %4156
  %4163 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4164 = sext i32 %4163 to i64
  %4165 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4164
  store volatile i64 %4156, i64* %4165, align 8, !tbaa !9
  %4166 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4167 = add nsw i32 %4166, 1
  %4168 = sext i32 %4167 to i64
  %4169 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4168
  store volatile i64 %4157, i64* %4169, align 8, !tbaa !9
  %4170 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4171 = add nsw i32 %4170, 2
  %4172 = sext i32 %4171 to i64
  %4173 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4172
  store volatile i64 %4162, i64* %4173, align 8, !tbaa !9
  %4174 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4175 = add nsw i32 %4174, 3
  store volatile i32 %4175, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4176

4176:                                             ; preds = %4155, %4159, %4151, %4147, %4144, %4141
  %4177 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4178 = icmp sgt i32 %4177, 4
  br i1 %4178, label %4179, label %4212

4179:                                             ; preds = %4176
  %4180 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4181 = icmp slt i32 %4180, 4
  br i1 %4181, label %4182, label %4212

4182:                                             ; preds = %4179
  %4183 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4184 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4185 = icmp eq i64 %4183, %4184
  br i1 %4185, label %4186, label %4212

4186:                                             ; preds = %4182
  %4187 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4188 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4189 = icmp eq i64 %4187, %4188
  br i1 %4189, label %4190, label %4212

4190:                                             ; preds = %4186
  %4191 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4192 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4193 = icmp sgt i64 %4192, %4191
  br i1 %4193, label %4194, label %4212

4194:                                             ; preds = %4190
  %4195 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %4195, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4196 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4197 = add nsw i32 %4196, -4
  store volatile i32 %4197, i32* @P2_is_marked, align 4, !tbaa !5
  %4198 = add nsw i64 %4192, %4191
  %4199 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4200 = sext i32 %4199 to i64
  %4201 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4200
  store volatile i64 %4191, i64* %4201, align 8, !tbaa !9
  %4202 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4203 = add nsw i32 %4202, 1
  %4204 = sext i32 %4203 to i64
  %4205 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4204
  store volatile i64 %4192, i64* %4205, align 8, !tbaa !9
  %4206 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4207 = add nsw i32 %4206, 2
  %4208 = sext i32 %4207 to i64
  %4209 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4208
  store volatile i64 %4198, i64* %4209, align 8, !tbaa !9
  %4210 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4211 = add nsw i32 %4210, 3
  store volatile i32 %4211, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4212

4212:                                             ; preds = %4190, %4194, %4186, %4182, %4179, %4176
  %4213 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4214 = icmp sgt i32 %4213, 4
  br i1 %4214, label %4215, label %4247

4215:                                             ; preds = %4212
  %4216 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4217 = icmp slt i32 %4216, 4
  br i1 %4217, label %4218, label %4247

4218:                                             ; preds = %4215
  %4219 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4220 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4221 = icmp eq i64 %4219, %4220
  br i1 %4221, label %4222, label %4247

4222:                                             ; preds = %4218
  %4223 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4224 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4225 = icmp eq i64 %4223, %4224
  br i1 %4225, label %4226, label %4247

4226:                                             ; preds = %4222
  %4227 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4228 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4229 = icmp sgt i64 %4228, %4227
  br i1 %4229, label %4230, label %4247

4230:                                             ; preds = %4226
  %4231 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4232 = add nsw i32 %4231, -4
  store volatile i32 %4232, i32* @P2_is_marked, align 4, !tbaa !5
  %4233 = add nsw i64 %4228, %4227
  %4234 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4235 = sext i32 %4234 to i64
  %4236 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4235
  store volatile i64 %4227, i64* %4236, align 8, !tbaa !9
  %4237 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4238 = add nsw i32 %4237, 1
  %4239 = sext i32 %4238 to i64
  %4240 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4239
  store volatile i64 %4228, i64* %4240, align 8, !tbaa !9
  %4241 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4242 = add nsw i32 %4241, 2
  %4243 = sext i32 %4242 to i64
  %4244 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4243
  store volatile i64 %4233, i64* %4244, align 8, !tbaa !9
  %4245 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4246 = add nsw i32 %4245, 3
  store volatile i32 %4246, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4247

4247:                                             ; preds = %4226, %4230, %4222, %4218, %4215, %4212
  %4248 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4249 = icmp sgt i32 %4248, 4
  br i1 %4249, label %4250, label %4283

4250:                                             ; preds = %4247
  %4251 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4252 = icmp slt i32 %4251, 4
  br i1 %4252, label %4253, label %4283

4253:                                             ; preds = %4250
  %4254 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4255 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4256 = icmp eq i64 %4254, %4255
  br i1 %4256, label %4257, label %4283

4257:                                             ; preds = %4253
  %4258 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4259 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4260 = icmp eq i64 %4258, %4259
  br i1 %4260, label %4261, label %4283

4261:                                             ; preds = %4257
  %4262 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4263 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4264 = icmp sgt i64 %4263, %4262
  br i1 %4264, label %4265, label %4283

4265:                                             ; preds = %4261
  %4266 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %4266, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4267 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4268 = add nsw i32 %4267, -4
  store volatile i32 %4268, i32* @P2_is_marked, align 4, !tbaa !5
  %4269 = add nsw i64 %4263, %4262
  %4270 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4271 = sext i32 %4270 to i64
  %4272 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4271
  store volatile i64 %4262, i64* %4272, align 8, !tbaa !9
  %4273 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4274 = add nsw i32 %4273, 1
  %4275 = sext i32 %4274 to i64
  %4276 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4275
  store volatile i64 %4263, i64* %4276, align 8, !tbaa !9
  %4277 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4278 = add nsw i32 %4277, 2
  %4279 = sext i32 %4278 to i64
  %4280 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4279
  store volatile i64 %4269, i64* %4280, align 8, !tbaa !9
  %4281 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4282 = add nsw i32 %4281, 3
  store volatile i32 %4282, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4283

4283:                                             ; preds = %4261, %4265, %4257, %4253, %4250, %4247
  %4284 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4285 = icmp sgt i32 %4284, 4
  br i1 %4285, label %4286, label %4319

4286:                                             ; preds = %4283
  %4287 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4288 = icmp slt i32 %4287, 4
  br i1 %4288, label %4289, label %4319

4289:                                             ; preds = %4286
  %4290 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4291 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4292 = icmp eq i64 %4290, %4291
  br i1 %4292, label %4293, label %4319

4293:                                             ; preds = %4289
  %4294 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4295 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4296 = icmp eq i64 %4294, %4295
  br i1 %4296, label %4297, label %4319

4297:                                             ; preds = %4293
  %4298 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4299 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4300 = icmp sgt i64 %4299, %4298
  br i1 %4300, label %4301, label %4319

4301:                                             ; preds = %4297
  %4302 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %4302, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4303 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4304 = add nsw i32 %4303, -4
  store volatile i32 %4304, i32* @P2_is_marked, align 4, !tbaa !5
  %4305 = add nsw i64 %4299, %4298
  %4306 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4307 = sext i32 %4306 to i64
  %4308 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4307
  store volatile i64 %4298, i64* %4308, align 8, !tbaa !9
  %4309 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4310 = add nsw i32 %4309, 1
  %4311 = sext i32 %4310 to i64
  %4312 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4311
  store volatile i64 %4299, i64* %4312, align 8, !tbaa !9
  %4313 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4314 = add nsw i32 %4313, 2
  %4315 = sext i32 %4314 to i64
  %4316 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4315
  store volatile i64 %4305, i64* %4316, align 8, !tbaa !9
  %4317 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4318 = add nsw i32 %4317, 3
  store volatile i32 %4318, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4319

4319:                                             ; preds = %4297, %4301, %4293, %4289, %4286, %4283
  %4320 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4321 = icmp sgt i32 %4320, 4
  br i1 %4321, label %4322, label %4355

4322:                                             ; preds = %4319
  %4323 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4324 = icmp slt i32 %4323, 4
  br i1 %4324, label %4325, label %4355

4325:                                             ; preds = %4322
  %4326 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4327 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4328 = icmp eq i64 %4326, %4327
  br i1 %4328, label %4329, label %4355

4329:                                             ; preds = %4325
  %4330 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4331 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4332 = icmp eq i64 %4330, %4331
  br i1 %4332, label %4333, label %4355

4333:                                             ; preds = %4329
  %4334 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4335 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4336 = icmp sgt i64 %4335, %4334
  br i1 %4336, label %4337, label %4355

4337:                                             ; preds = %4333
  %4338 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  store volatile i64 %4338, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4339 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4340 = add nsw i32 %4339, -4
  store volatile i32 %4340, i32* @P2_is_marked, align 4, !tbaa !5
  %4341 = add nsw i64 %4335, %4334
  %4342 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4343 = sext i32 %4342 to i64
  %4344 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4343
  store volatile i64 %4334, i64* %4344, align 8, !tbaa !9
  %4345 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4346 = add nsw i32 %4345, 1
  %4347 = sext i32 %4346 to i64
  %4348 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4347
  store volatile i64 %4335, i64* %4348, align 8, !tbaa !9
  %4349 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4350 = add nsw i32 %4349, 2
  %4351 = sext i32 %4350 to i64
  %4352 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4351
  store volatile i64 %4341, i64* %4352, align 8, !tbaa !9
  %4353 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4354 = add nsw i32 %4353, 3
  store volatile i32 %4354, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4355

4355:                                             ; preds = %4333, %4337, %4329, %4325, %4322, %4319
  %4356 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4357 = icmp sgt i32 %4356, 4
  br i1 %4357, label %4358, label %4390

4358:                                             ; preds = %4355
  %4359 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4360 = icmp slt i32 %4359, 4
  br i1 %4360, label %4361, label %4390

4361:                                             ; preds = %4358
  %4362 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4363 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4364 = icmp eq i64 %4362, %4363
  br i1 %4364, label %4365, label %4390

4365:                                             ; preds = %4361
  %4366 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4367 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4368 = icmp eq i64 %4366, %4367
  br i1 %4368, label %4369, label %4390

4369:                                             ; preds = %4365
  %4370 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4371 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4372 = icmp sgt i64 %4371, %4370
  br i1 %4372, label %4373, label %4390

4373:                                             ; preds = %4369
  %4374 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4375 = add nsw i32 %4374, -4
  store volatile i32 %4375, i32* @P2_is_marked, align 4, !tbaa !5
  %4376 = add nsw i64 %4371, %4370
  %4377 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4378 = sext i32 %4377 to i64
  %4379 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4378
  store volatile i64 %4370, i64* %4379, align 8, !tbaa !9
  %4380 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4381 = add nsw i32 %4380, 1
  %4382 = sext i32 %4381 to i64
  %4383 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4382
  store volatile i64 %4371, i64* %4383, align 8, !tbaa !9
  %4384 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4385 = add nsw i32 %4384, 2
  %4386 = sext i32 %4385 to i64
  %4387 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4386
  store volatile i64 %4376, i64* %4387, align 8, !tbaa !9
  %4388 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4389 = add nsw i32 %4388, 3
  store volatile i32 %4389, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4390

4390:                                             ; preds = %4369, %4373, %4365, %4361, %4358, %4355
  %4391 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4392 = icmp sgt i32 %4391, 4
  br i1 %4392, label %4393, label %4426

4393:                                             ; preds = %4390
  %4394 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4395 = icmp slt i32 %4394, 4
  br i1 %4395, label %4396, label %4426

4396:                                             ; preds = %4393
  %4397 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4398 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4399 = icmp eq i64 %4397, %4398
  br i1 %4399, label %4400, label %4426

4400:                                             ; preds = %4396
  %4401 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4402 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4403 = icmp eq i64 %4401, %4402
  br i1 %4403, label %4404, label %4426

4404:                                             ; preds = %4400
  %4405 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4406 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4407 = icmp sgt i64 %4406, %4405
  br i1 %4407, label %4408, label %4426

4408:                                             ; preds = %4404
  %4409 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  store volatile i64 %4409, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 0), align 16, !tbaa !9
  %4410 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4411 = add nsw i32 %4410, -4
  store volatile i32 %4411, i32* @P2_is_marked, align 4, !tbaa !5
  %4412 = add nsw i64 %4406, %4405
  %4413 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4414 = sext i32 %4413 to i64
  %4415 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4414
  store volatile i64 %4405, i64* %4415, align 8, !tbaa !9
  %4416 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4417 = add nsw i32 %4416, 1
  %4418 = sext i32 %4417 to i64
  %4419 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4418
  store volatile i64 %4406, i64* %4419, align 8, !tbaa !9
  %4420 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4421 = add nsw i32 %4420, 2
  %4422 = sext i32 %4421 to i64
  %4423 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4422
  store volatile i64 %4412, i64* %4423, align 8, !tbaa !9
  %4424 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4425 = add nsw i32 %4424, 3
  store volatile i32 %4425, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4426

4426:                                             ; preds = %4404, %4408, %4400, %4396, %4393, %4390
  %4427 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4428 = icmp sgt i32 %4427, 4
  br i1 %4428, label %4429, label %4461

4429:                                             ; preds = %4426
  %4430 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4431 = icmp slt i32 %4430, 4
  br i1 %4431, label %4432, label %4461

4432:                                             ; preds = %4429
  %4433 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4434 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 2), align 16, !tbaa !9
  %4435 = icmp eq i64 %4433, %4434
  br i1 %4435, label %4436, label %4461

4436:                                             ; preds = %4432
  %4437 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4438 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 1), align 8, !tbaa !9
  %4439 = icmp eq i64 %4437, %4438
  br i1 %4439, label %4440, label %4461

4440:                                             ; preds = %4436
  %4441 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 4), align 16, !tbaa !9
  %4442 = load volatile i64, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @P2_marking_member_0, i64 0, i64 3), align 8, !tbaa !9
  %4443 = icmp sgt i64 %4442, %4441
  br i1 %4443, label %4444, label %4461

4444:                                             ; preds = %4440
  %4445 = load volatile i32, i32* @P2_is_marked, align 4, !tbaa !5
  %4446 = add nsw i32 %4445, -4
  store volatile i32 %4446, i32* @P2_is_marked, align 4, !tbaa !5
  %4447 = add nsw i64 %4442, %4441
  %4448 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4449 = sext i32 %4448 to i64
  %4450 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4449
  store volatile i64 %4441, i64* %4450, align 8, !tbaa !9
  %4451 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4452 = add nsw i32 %4451, 1
  %4453 = sext i32 %4452 to i64
  %4454 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4453
  store volatile i64 %4442, i64* %4454, align 8, !tbaa !9
  %4455 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4456 = add nsw i32 %4455, 2
  %4457 = sext i32 %4456 to i64
  %4458 = getelementptr inbounds [6 x i64], [6 x i64]* @P3_marking_member_0, i64 0, i64 %4457
  store volatile i64 %4447, i64* %4458, align 8, !tbaa !9
  %4459 = load volatile i32, i32* @P3_is_marked, align 4, !tbaa !5
  %4460 = add nsw i32 %4459, 3
  store volatile i32 %4460, i32* @P3_is_marked, align 4, !tbaa !5
  br label %4461

4461:                                             ; preds = %4440, %4444, %4436, %4432, %4429, %4426
  %4462 = icmp ugt i32 %2, 1
  br i1 %4462, label %1, label %4463, !llvm.loop !11

4463:                                             ; preds = %4461
  ret i32 77
}

attributes #0 = { nofree norecurse nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
