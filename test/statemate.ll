; ModuleID = 'statemate.c'
source_filename = "statemate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Bitlist = internal unnamed_addr global [64 x i8] zeroinitializer, align 16
@time = dso_local local_unnamed_addr global i64 0, align 8
@tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL = dso_local local_unnamed_addr global i64 0, align 8
@tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL = dso_local local_unnamed_addr global i64 0, align 8
@sc_FH_TUERMODUL_CTRL_2375_2 = dso_local local_unnamed_addr global i64 0, align 8
@FH_TUERMODUL__MFHA_copy = dso_local local_unnamed_addr global i8 0, align 1
@sc_FH_TUERMODUL_CTRL_2352_1 = dso_local local_unnamed_addr global i64 0, align 8
@FH_TUERMODUL__MFHZ_copy = dso_local local_unnamed_addr global i8 0, align 1
@sc_FH_TUERMODUL_CTRL_2329_1 = dso_local local_unnamed_addr global i64 0, align 8
@sc_FH_TUERMODUL_CTRL_1781_10 = dso_local local_unnamed_addr global i64 0, align 8
@sc_FH_TUERMODUL_CTRL_1739_10 = dso_local local_unnamed_addr global i64 0, align 8
@BLOCK_ERKENNUNG_CTRL__N = dso_local local_unnamed_addr global i32 0, align 4
@BLOCK_ERKENNUNG_CTRL__N_old = dso_local local_unnamed_addr global i32 0, align 4
@tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy = dso_local local_unnamed_addr global i64 0, align 8
@NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state = dso_local local_unnamed_addr global i8 0, align 1
@ZENTRAL_KINDERSICHERUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@MEC_KINDERSICHERUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@B_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@A_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@INITIALISIERT_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@OEFFNEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@SCHLIESSEN_FH_TUERMODUL_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state = dso_local local_unnamed_addr global i8 0, align 1
@EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_ZENTRAL = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_ZENTRAL = dso_local local_unnamed_addr global i8 0, align 1
@stable = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_ZENTRAL_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_ZENTRAL_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_MEC = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_MEC = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_MEC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ_MEC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__KL_50 = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__N = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL_CTRL__N_old = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__BLOCK = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__BLOCK_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__MFHZ = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHZ = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS1 = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS2 = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__MFHA = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__POSITION = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__SFHZ_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__SFHA_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS2_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__INREVERS1_copy = dso_local local_unnamed_addr global i8 0, align 1
@step = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__EKS_LEISTE_AKTIV = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__EKS_LEISTE_AKTIV_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__I_EIN = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__I_EIN_old = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__BLOCK_copy = dso_local local_unnamed_addr global i8 0, align 1
@BLOCK_ERKENNUNG_CTRL__I_EIN_MAX = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__MFHA_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__MFHZ_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHZ = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHZ_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFH = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__MFHA = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHA_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUCAN = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUCAN_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__DOOR_ID = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_FTZU = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUDISC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFCAN = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFCAN_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_FTAUF = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFDISC_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_AUFDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_ZUDISC = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__I_EIN = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__EKS_LEISTE_AKTIV = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__POSITION = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL__FT = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__FT = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__KL_50 = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__BLOCK = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFH_copy = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__I_EIN_old = dso_local local_unnamed_addr global i32 0, align 4
@FH_DU__EKS_LEISTE_AKTIV_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__BLOCK_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__BLOCK_old = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHZ_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__MFHA_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL_CTRL__N_copy = dso_local local_unnamed_addr global i32 0, align 4
@BLOCK_ERKENNUNG_CTRL__I_EIN_MAX_copy = dso_local local_unnamed_addr global i32 0, align 4
@BLOCK_ERKENNUNG_CTRL__N_copy = dso_local local_unnamed_addr global i32 0, align 4
@FH_TUERMODUL_CTRL__FT = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__COM_OPEN = dso_local local_unnamed_addr global i8 0, align 1
@FH_TUERMODUL__COM_CLOSE = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFAUFCAN_copy = dso_local local_unnamed_addr global i8 0, align 1
@FH_DU__S_FH_TMBFZUCAN_copy = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local void @interface() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 4), align 4, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %4, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 6), align 2
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %2, i1 %7, i1 false
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %10, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  br label %11

11:                                               ; preds = %5, %9
  %12 = load i64, i64* @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  %13 = icmp eq i64 %12, 0
  %14 = load i64, i64* @time, align 8
  %15 = icmp eq i64 %14, %12
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i64 0, i64* @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i64, i64* @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  %20 = icmp eq i64 %19, 0
  %21 = icmp eq i64 %14, %19
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i64 0, i64* @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i64, i64* @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  %26 = icmp eq i64 %25, 0
  %27 = icmp eq i64 %14, %25
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i64 0, i64* @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i64, i64* @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  %32 = icmp eq i64 %31, 0
  %33 = icmp eq i64 %14, %31
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i64 0, i64* @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i64, i64* @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  %38 = icmp eq i64 %37, 0
  %39 = icmp eq i64 %14, %37
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, i64* @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  %47 = load i32, i32* @BLOCK_ERKENNUNG_CTRL__N_old, align 4, !tbaa !10
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %45, %42
  store i64 %14, i64* @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  br label %50

50:                                               ; preds = %49, %45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn writeonly
define dso_local void @init() local_unnamed_addr #1 {
  store i64 0, i64* @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  store i64 0, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i64 0, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i8 0, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  store i8 0, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  store i8 0, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local void @generic_KINDERSICHERUNG_CTRL() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 10), align 2, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %108, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  %5 = sext i8 %4 to i32
  switch i32 %5, label %107 [
    i32 1, label %6
    i32 2, label %37
    i32 3, label %68
  ]

6:                                                ; preds = %3
  %7 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  %9 = load i8, i8* @FH_TUERMODUL__SFHZ_ZENTRAL, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 3, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

13:                                               ; preds = %6
  %14 = load i8, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL_old, align 1
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %8, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

21:                                               ; preds = %16
  %22 = load i8, i8* @FH_TUERMODUL__SFHZ_ZENTRAL_old, align 1
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %10, i1 true, i1 %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

26:                                               ; preds = %21
  %27 = icmp ne i8 %7, 0
  %28 = icmp eq i8 %17, 0
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

31:                                               ; preds = %26
  %32 = icmp ne i8 %9, 0
  %33 = icmp eq i8 %22, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %108, label %35

35:                                               ; preds = %31
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

36:                                               ; preds = %13
  store i8 0, i8* @stable, align 1, !tbaa !5
  br label %108

37:                                               ; preds = %3
  %38 = load i8, i8* @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 0
  %40 = load i8, i8* @FH_TUERMODUL__SFHZ_MEC, align 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 3, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

44:                                               ; preds = %37
  %45 = load i8, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i8, i8* @FH_TUERMODUL__SFHA_MEC_old, align 1
  %49 = icmp ne i8 %48, 0
  %50 = select i1 %39, i1 true, i1 %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

52:                                               ; preds = %47
  %53 = load i8, i8* @FH_TUERMODUL__SFHZ_MEC_old, align 1
  %54 = icmp ne i8 %53, 0
  %55 = select i1 %41, i1 true, i1 %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

57:                                               ; preds = %52
  %58 = icmp ne i8 %38, 0
  %59 = icmp eq i8 %48, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

62:                                               ; preds = %57
  %63 = icmp ne i8 %40, 0
  %64 = icmp eq i8 %53, 0
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %108, label %66

66:                                               ; preds = %62
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

67:                                               ; preds = %44
  store i8 0, i8* @stable, align 1, !tbaa !5
  br label %108

68:                                               ; preds = %3
  %69 = load i8, i8* @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  %70 = icmp ne i8 %69, 0
  %71 = load i8, i8* @FH_TUERMODUL__SFHZ_MEC, align 1
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 true, i1 %72
  %74 = load i8, i8* @FH_TUERMODUL__SFHA_MEC, align 1
  %75 = icmp eq i8 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 2, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

78:                                               ; preds = %68
  %79 = icmp eq i8 %69, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = icmp ne i8 %74, 0
  %82 = select i1 %72, i1 true, i1 %81
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 2, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

84:                                               ; preds = %80, %78
  %85 = icmp ne i8 %71, 0
  %86 = select i1 %70, i1 true, i1 %85
  %87 = select i1 %86, i1 true, i1 %75
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 2, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

89:                                               ; preds = %84
  %90 = load i8, i8* @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i1 true, i1 %70
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

97:                                               ; preds = %92, %89
  %98 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %91, i1 true, i1 %99
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

102:                                              ; preds = %97
  %103 = icmp ne i8 %98, 0
  %104 = select i1 %91, i1 true, i1 %103
  %105 = select i1 %104, i1 true, i1 %70
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

107:                                              ; preds = %3
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 3, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %108

108:                                              ; preds = %12, %43, %77, %83, %88, %96, %101, %106, %107, %31, %36, %35, %30, %25, %20, %62, %67, %66, %61, %56, %51, %102, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local void @generic_FH_TUERMODUL_CTRL() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 13), align 1, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 15), align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  %6 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 14), align 2
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 4), align 4, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 6), align 2, !tbaa !5
  br label %10

10:                                               ; preds = %9, %3
  br i1 %2, label %260, label %11

11:                                               ; preds = %0, %10
  %12 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 10), align 2, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8 3, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %15

15:                                               ; preds = %14, %11
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 11), align 1, !tbaa !5
  %16 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 19), align 1, !tbaa !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  store i8 1, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %19

19:                                               ; preds = %18, %15
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 20), align 4, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 11), align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 20), align 4, !tbaa !5
  %20 = load i8, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %21 = sext i8 %20 to i32
  switch i32 %21, label %209 [
    i32 1, label %22
    i32 2, label %29
    i32 3, label %60
  ]

22:                                               ; preds = %19
  %23 = load i32, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  %24 = icmp ne i32 %23, 59
  %25 = load i32, i32* @FH_TUERMODUL_CTRL__N_old, align 4
  %26 = icmp eq i32 %25, 59
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %210, label %28

28:                                               ; preds = %22
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 3, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

29:                                               ; preds = %19
  %30 = load i8, i8* @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 0
  %32 = load i8, i8* @FH_TUERMODUL__BLOCK_old, align 1
  %33 = icmp ne i8 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  %35 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %34, i1 true, i1 %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  %39 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %39, i64* @sc_FH_TUERMODUL_CTRL_2329_1, align 8, !tbaa !8
  store i8 3, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

40:                                               ; preds = %29
  %41 = load i8, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  %42 = sext i8 %41 to i32
  switch i32 %42, label %59 [
    i32 1, label %43
    i32 2, label %47
    i32 3, label %51
  ]

43:                                               ; preds = %40
  %44 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %210

46:                                               ; preds = %43
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

47:                                               ; preds = %40
  %48 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %210

50:                                               ; preds = %47
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

51:                                               ; preds = %40
  %52 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 2, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

55:                                               ; preds = %51
  %56 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %210, label %58

58:                                               ; preds = %55
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

59:                                               ; preds = %40
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 3, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

60:                                               ; preds = %19
  %61 = load i32, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  %62 = icmp sgt i32 %61, 60
  %63 = load i32, i32* @FH_TUERMODUL_CTRL__N_old, align 4
  %64 = icmp slt i32 %63, 61
  %65 = select i1 %62, i1 %64, i1 false
  %66 = load i8, i8* @FH_TUERMODUL_CTRL__INREVERS1, align 1
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  %69 = load i8, i8* @FH_TUERMODUL_CTRL__INREVERS2, align 1
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

73:                                               ; preds = %60
  %74 = load i8, i8* @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  %75 = icmp eq i8 %74, 0
  %76 = load i8, i8* @FH_TUERMODUL__BLOCK_old, align 1
  %77 = icmp ne i8 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  %79 = load i8, i8* @FH_TUERMODUL__MFHA, align 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  %83 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %83, i64* @sc_FH_TUERMODUL_CTRL_2375_2, align 8, !tbaa !8
  store i8 2, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

84:                                               ; preds = %73
  %85 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %78, i1 true, i1 %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  %89 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %89, i64* @sc_FH_TUERMODUL_CTRL_2352_1, align 8, !tbaa !8
  store i8 2, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 3, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  br label %210

90:                                               ; preds = %84
  %91 = load i8, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %92 = sext i8 %91 to i32
  switch i32 %92, label %208 [
    i32 1, label %93
    i32 2, label %128
    i32 3, label %189
  ]

93:                                               ; preds = %90
  %94 = load i32, i32* @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  %95 = icmp sgt i32 %94, 404
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

97:                                               ; preds = %93
  %98 = load i8, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %99 = sext i8 %98 to i32
  switch i32 %99, label %127 [
    i32 1, label %100
    i32 2, label %113
  ]

100:                                              ; preds = %97
  %101 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %102 = icmp eq i8 %101, 0
  %103 = load i8, i8* @FH_TUERMODUL__SFHZ_old, align 1
  %104 = icmp ne i8 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %108 = icmp eq i8 %107, 0
  %109 = load i8, i8* @FH_TUERMODUL__SFHA_old, align 1
  %110 = icmp ne i8 %109, 0
  %111 = select i1 %108, i1 true, i1 %110
  br i1 %111, label %210, label %112

112:                                              ; preds = %106, %100
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

113:                                              ; preds = %97
  %114 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 0
  %116 = load i8, i8* @FH_TUERMODUL__SFHZ_old, align 1
  %117 = icmp ne i8 %116, 0
  %118 = select i1 %115, i1 true, i1 %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

120:                                              ; preds = %113
  %121 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %122 = icmp ne i8 %121, 0
  %123 = load i8, i8* @FH_TUERMODUL__SFHA_old, align 1
  %124 = icmp eq i8 %123, 0
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %210, label %126

126:                                              ; preds = %120
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

127:                                              ; preds = %97
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

128:                                              ; preds = %90
  %129 = load i32, i32* @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

132:                                              ; preds = %128
  %133 = load i8, i8* @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %134 = sext i8 %133 to i32
  switch i32 %134, label %188 [
    i32 1, label %135
    i32 2, label %161
  ]

135:                                              ; preds = %132
  %136 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %137 = icmp eq i8 %136, 0
  %138 = load i8, i8* @FH_TUERMODUL__SFHA_old, align 1
  %139 = icmp ne i8 %138, 0
  %140 = select i1 %137, i1 true, i1 %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %143 = icmp eq i8 %142, 0
  %144 = load i8, i8* @FH_TUERMODUL__SFHZ_old, align 1
  %145 = icmp ne i8 %144, 0
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %148, label %147

147:                                              ; preds = %141, %135
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

148:                                              ; preds = %141
  %149 = load i8, i8* @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %150 = sext i8 %149 to i32
  switch i32 %150, label %160 [
    i32 1, label %151
    i32 2, label %155
  ]

151:                                              ; preds = %148
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 23), align 1, !tbaa !5
  %152 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 22), align 2, !tbaa !5
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %210, label %154

154:                                              ; preds = %151
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL_CTRL__INREVERS2_copy, align 1, !tbaa !5
  store i8 2, i8* @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  br label %210

155:                                              ; preds = %148
  %156 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 24), align 8, !tbaa !5
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %210, label %158

158:                                              ; preds = %155
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL_CTRL__INREVERS2_copy, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 23), align 1, !tbaa !5
  store i8 1, i8* @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  %159 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %159, i64* @sc_FH_TUERMODUL_CTRL_1781_10, align 8, !tbaa !8
  store i8 1, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  br label %210

160:                                              ; preds = %148
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  br label %210

161:                                              ; preds = %132
  %162 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %163 = icmp ne i8 %162, 0
  %164 = load i8, i8* @FH_TUERMODUL__SFHZ_old, align 1
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %168, label %167

167:                                              ; preds = %161
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

168:                                              ; preds = %161
  %169 = load i8, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %170 = sext i8 %169 to i32
  switch i32 %170, label %187 [
    i32 1, label %171
    i32 2, label %175
  ]

171:                                              ; preds = %168
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 23), align 1, !tbaa !5
  %172 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 22), align 2, !tbaa !5
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %210, label %174

174:                                              ; preds = %171
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL_CTRL__INREVERS1_copy, align 1, !tbaa !5
  store i8 2, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %210

175:                                              ; preds = %168
  %176 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 24), align 8, !tbaa !5
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL_CTRL__INREVERS1_copy, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 23), align 1, !tbaa !5
  store i8 1, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  %179 = load i64, i64* @time, align 8, !tbaa !8
  store i64 %179, i64* @sc_FH_TUERMODUL_CTRL_1739_10, align 8, !tbaa !8
  store i8 1, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  br label %210

180:                                              ; preds = %175
  %181 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %182 = icmp eq i8 %181, 0
  %183 = load i8, i8* @FH_TUERMODUL__SFHA_old, align 1
  %184 = icmp ne i8 %183, 0
  %185 = select i1 %182, i1 true, i1 %184
  br i1 %185, label %210, label %186

186:                                              ; preds = %180
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

187:                                              ; preds = %168
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %210

188:                                              ; preds = %132
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %210

189:                                              ; preds = %90
  %190 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %191 = icmp ne i8 %190, 0
  %192 = load i8, i8* @FH_TUERMODUL__SFHZ_old, align 1
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %191, i1 %193, i1 false
  %195 = load i32, i32* @FH_TUERMODUL__POSITION, align 4
  %196 = icmp sgt i32 %195, 0
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, i8* @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  br label %210

199:                                              ; preds = %189
  %200 = load i8, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  %201 = icmp ne i8 %200, 0
  %202 = load i8, i8* @FH_TUERMODUL__SFHA_old, align 1
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %201, i1 %203, i1 false
  %205 = icmp slt i32 %195, 405
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 1, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 2, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

208:                                              ; preds = %90
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 3, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

209:                                              ; preds = %19
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %210

210:                                              ; preds = %96, %131, %198, %207, %208, %120, %106, %127, %126, %119, %112, %174, %178, %186, %187, %171, %180, %154, %158, %160, %151, %155, %188, %167, %147, %199, %46, %50, %54, %58, %59, %43, %47, %55, %22, %209, %88, %82, %72, %38, %28
  %211 = load i8, i8* @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %212 = icmp eq i8 %211, 1
  br i1 %212, label %213, label %255

213:                                              ; preds = %210
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 5), align 1, !tbaa !5
  %214 = load i8, i8* @step, align 1, !tbaa !5
  %215 = icmp eq i8 %214, 1
  %216 = load i64, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8
  %217 = icmp ne i64 %216, 0
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %232

219:                                              ; preds = %213
  %220 = load i64, i64* @time, align 8, !tbaa !8
  %221 = sub i64 %220, %216
  %222 = icmp eq i64 %221, 1
  br i1 %222, label %223, label %232

223:                                              ; preds = %219
  %224 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  %225 = icmp eq i8 %224, 0
  %226 = load i8, i8* @FH_TUERMODUL__MFHA, align 1
  %227 = icmp eq i8 %226, 0
  %228 = select i1 %225, i1 %227, i1 false
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  store i8 0, i8* @stable, align 1, !tbaa !5
  %230 = load i32, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i8 1, i8* @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 5), align 1, !tbaa !5
  br label %256

232:                                              ; preds = %223, %219, %213
  %233 = load i8, i8* @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  %234 = icmp eq i8 %233, 1
  br i1 %234, label %235, label %254

235:                                              ; preds = %232
  %236 = load i64, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8
  %237 = icmp ne i64 %236, 0
  %238 = select i1 %215, i1 %237, i1 false
  br i1 %238, label %239, label %257

239:                                              ; preds = %235
  %240 = load i64, i64* @time, align 8, !tbaa !8
  %241 = sub i64 %240, %236
  %242 = icmp eq i64 %241, 3
  %243 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1
  %244 = icmp eq i8 %243, 0
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %246, label %257

246:                                              ; preds = %239
  %247 = load i8, i8* @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  %248 = icmp eq i8 %247, 0
  %249 = load i32, i32* @FH_TUERMODUL_CTRL__N, align 4
  %250 = icmp sgt i32 %249, 0
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %252, label %257

252:                                              ; preds = %246
  store i8 0, i8* @stable, align 1, !tbaa !5
  %253 = add nsw i32 %249, -1
  store i32 %253, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  br label %256

254:                                              ; preds = %232
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 5), align 1, !tbaa !5
  br label %256

255:                                              ; preds = %210
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i32 0, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i8 1, i8* @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 5), align 1, !tbaa !5
  br label %256

256:                                              ; preds = %229, %255, %254, %252
  store i8 1, i8* @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %257

257:                                              ; preds = %256, %246, %239, %235
  %258 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 4), align 4, !tbaa !5
  store i8 %258, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 5), align 1, !tbaa !5
  %259 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 6), align 2, !tbaa !5
  store i8 %259, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 7), align 1, !tbaa !5
  br label %260

260:                                              ; preds = %257, %10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local void @generic_EINKLEMMSCHUTZ_CTRL() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 16), align 16, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %29, label %3

3:                                                ; preds = %0
  %4 = load i8, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  %5 = sext i8 %4 to i32
  switch i32 %5, label %26 [
    i32 1, label %6
    i32 2, label %19
  ]

6:                                                ; preds = %3
  %7 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 0
  %9 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %6
  %13 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 0
  %15 = load i8, i8* @FH_TUERMODUL__SFHA, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 24), align 8, !tbaa !5
  br label %27

19:                                               ; preds = %3
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 24), align 8, !tbaa !5
  %20 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %21 = icmp ne i8 %20, 0
  %22 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  store i8 0, i8* @stable, align 1, !tbaa !5
  br label %27

26:                                               ; preds = %3
  store i8 0, i8* @stable, align 1, !tbaa !5
  br label %27

27:                                               ; preds = %26, %25, %18
  %28 = phi i8 [ 2, %18 ], [ 1, %25 ], [ 1, %26 ]
  store i8 %28, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  br label %29

29:                                               ; preds = %27, %12, %6, %19, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn
define dso_local void @generic_BLOCK_ERKENNUNG_CTRL() local_unnamed_addr #0 {
  %1 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 19), align 1, !tbaa !5
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 21), align 1, !tbaa !5
  %5 = icmp eq i8 %4, 0
  %6 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 20), align 4
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  br label %10

10:                                               ; preds = %9, %3
  br i1 %2, label %52, label %11

11:                                               ; preds = %0, %10
  %12 = load i8, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  %13 = sext i8 %12 to i32
  switch i32 %13, label %51 [
    i32 1, label %14
    i32 2, label %21
  ]

14:                                               ; preds = %11
  %15 = load i32, i32* @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  %16 = load i32, i32* @FH_TUERMODUL__I_EIN_old, align 4, !tbaa !10
  %17 = icmp ne i32 %15, %16
  %18 = icmp sgt i32 %15, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %52

20:                                               ; preds = %14
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @FH_TUERMODUL__BLOCK_copy, align 1, !tbaa !5
  store i8 2, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i32 0, i32* @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  store i32 2, i32* @BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, align 4, !tbaa !10
  store i8 3, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  br label %52

21:                                               ; preds = %11
  %22 = load i8, i8* @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  %23 = icmp ne i8 %22, 0
  %24 = load i8, i8* @FH_TUERMODUL__MFHA_old, align 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  %29 = icmp ne i8 %28, 0
  %30 = load i8, i8* @FH_TUERMODUL__MFHZ_old, align 1
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %21
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %52

34:                                               ; preds = %27
  %35 = load i8, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  %36 = sext i8 %35 to i32
  switch i32 %36, label %50 [
    i32 1, label %52
    i32 2, label %37
    i32 3, label %43
  ]

37:                                               ; preds = %34
  %38 = load i32, i32* @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  %39 = load i32, i32* @BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, align 4, !tbaa !10
  %40 = add nsw i32 %39, -2
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @FH_TUERMODUL__BLOCK_copy, align 1, !tbaa !5
  store i8 1, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %52

43:                                               ; preds = %34
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  %44 = load i32, i32* @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  %45 = icmp ne i32 %44, 11
  %46 = load i32, i32* @BLOCK_ERKENNUNG_CTRL__N_old, align 4
  %47 = icmp eq i32 %46, 11
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 2, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %52

50:                                               ; preds = %34
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i32 0, i32* @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  store i32 2, i32* @BLOCK_ERKENNUNG_CTRL__I_EIN_MAX, align 4, !tbaa !10
  store i8 3, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  br label %52

51:                                               ; preds = %11
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %52

52:                                               ; preds = %43, %20, %33, %51, %14, %37, %34, %50, %49, %42, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local void @FH_DU() local_unnamed_addr #2 {
  store i64 1, i64* @time, align 8, !tbaa !8
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 0, i8* @step, align 1, !tbaa !5
  br label %1

1:                                                ; preds = %0, %134
  store i8 1, i8* @stable, align 1, !tbaa !5
  %2 = load i8, i8* @step, align 1, !tbaa !5
  %3 = add i8 %2, 1
  store i8 %3, i8* @step, align 1, !tbaa !5
  %4 = load i8, i8* @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  %5 = sext i8 %4 to i32
  switch i32 %5, label %30 [
    i32 1, label %6
    i32 2, label %12
    i32 3, label %24
  ]

6:                                                ; preds = %1
  %7 = load i8, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  %8 = icmp ne i8 %7, 0
  %9 = load i8, i8* @FH_DU__MFHZ_old, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %33, label %30

12:                                               ; preds = %1
  %13 = load i8, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 0
  %15 = load i8, i8* @FH_DU__MFHZ_old, align 1
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i8, i8* @FH_DU__MFHA, align 1, !tbaa !5
  %20 = icmp eq i8 %19, 0
  %21 = load i8, i8* @FH_DU__MFHA_old, align 1
  %22 = icmp ne i8 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %33, label %30

24:                                               ; preds = %1
  %25 = load i8, i8* @FH_DU__MFHA, align 1, !tbaa !5
  %26 = icmp ne i8 %25, 0
  %27 = load i8, i8* @FH_DU__MFHA_old, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %1, %24, %18, %12, %6
  %31 = phi i32 [ 0, %6 ], [ -100, %12 ], [ 100, %18 ], [ 0, %24 ], [ 0, %1 ]
  %32 = phi i8 [ 2, %6 ], [ 1, %12 ], [ 3, %18 ], [ 2, %24 ], [ 2, %1 ]
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i32 %31, i32* @FH_DU__MFH, align 4, !tbaa !10
  store i8 %32, i8* @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  br label %33

33:                                               ; preds = %30, %24, %18, %6
  %34 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 10), align 2, !tbaa !5
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8 3, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  br label %37

37:                                               ; preds = %36, %33
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 11), align 1, !tbaa !5
  %38 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 16), align 16, !tbaa !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8 1, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  br label %41

41:                                               ; preds = %40, %37
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  %42 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 19), align 1, !tbaa !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 0), align 16, !tbaa !5
  store i8 1, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  br label %45

45:                                               ; preds = %44, %41
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 20), align 4, !tbaa !5
  %46 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 13), align 1, !tbaa !5
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 4), align 4, !tbaa !5
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 6), align 2, !tbaa !5
  store i8 2, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i32 0, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i8 1, i8* @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 5), align 1, !tbaa !5
  store i8 1, i8* @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  br label %49

49:                                               ; preds = %48, %45
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 14), align 2, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 11), align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 20), align 4, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 14), align 2, !tbaa !5
  %50 = load i8, i8* @FH_DU__S_FH_TMBFZUCAN, align 1, !tbaa !5
  %51 = load i8, i8* @FH_DU__S_FH_TMBFZUCAN_old, align 1, !tbaa !5
  %52 = icmp eq i8 %50, %51
  %53 = load i8, i8* @FH_DU__DOOR_ID, align 1
  %54 = icmp ne i8 %53, 0
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i8 %50, i8* @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  br label %57

57:                                               ; preds = %56, %49
  %58 = load i8, i8* @FH_DU__S_FH_TMBFZUDISC, align 1, !tbaa !5
  %59 = load i8, i8* @FH_DU__S_FH_TMBFZUDISC_old, align 1, !tbaa !5
  %60 = icmp ne i8 %58, %59
  %61 = select i1 %60, i1 %54, i1 false
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8 %58, i8* @FH_DU__S_FH_TMBFZUCAN, align 1, !tbaa !5
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i8, i8* @FH_DU__S_FH_TMBFAUFCAN, align 1, !tbaa !5
  %65 = load i8, i8* @FH_DU__S_FH_TMBFAUFCAN_old, align 1, !tbaa !5
  %66 = icmp eq i8 %64, %65
  %67 = select i1 %66, i1 true, i1 %54
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i8 %64, i8* @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i8, i8* @FH_DU__S_FH_TMBFAUFDISC, align 1, !tbaa !5
  %71 = load i8, i8* @FH_DU__S_FH_TMBFAUFDISC_old, align 1, !tbaa !5
  %72 = icmp ne i8 %70, %71
  %73 = select i1 %72, i1 %54, i1 false
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i8 %70, i8* @FH_DU__S_FH_TMBFAUFCAN, align 1, !tbaa !5
  br label %75

75:                                               ; preds = %74, %69
  %76 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 12), align 4, !tbaa !5
  store i8 %76, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 10), align 2, !tbaa !5
  %77 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 15), align 1, !tbaa !5
  store i8 %77, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 13), align 1, !tbaa !5
  %78 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 18), align 2, !tbaa !5
  store i8 %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 16), align 16, !tbaa !5
  %79 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 21), align 1, !tbaa !5
  store i8 %79, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 19), align 1, !tbaa !5
  %80 = load i8, i8* @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  store i8 %80, i8* @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  %81 = load i8, i8* @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  store i8 %81, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  %82 = load i8, i8* @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  store i8 %82, i8* @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  %83 = load i8, i8* @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  store i8 %83, i8* @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  call void @generic_KINDERSICHERUNG_CTRL()
  %84 = load i8, i8* @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  store i8 %84, i8* @FH_DU__MFHA, align 1, !tbaa !5
  %85 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  store i8 %85, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  %86 = load i32, i32* @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  store i32 %86, i32* @FH_DU__I_EIN, align 4, !tbaa !10
  %87 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i8 %87, i8* @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %88 = load i32, i32* @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  store i32 %88, i32* @FH_DU__POSITION, align 4, !tbaa !10
  %89 = load i8, i8* @FH_TUERMODUL__FT, align 1, !tbaa !5
  store i8 %89, i8* @FH_DU__FT, align 1, !tbaa !5
  %90 = load i8, i8* @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  store i8 %90, i8* @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  %91 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  store i8 %91, i8* @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  %92 = load i8, i8* @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  store i8 %92, i8* @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  %93 = load i8, i8* @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  store i8 %93, i8* @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  %94 = load i8, i8* @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  store i8 %94, i8* @FH_DU__KL_50, align 1, !tbaa !5
  %95 = load i8, i8* @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  store i8 %95, i8* @FH_DU__BLOCK, align 1, !tbaa !5
  call void @generic_FH_TUERMODUL_CTRL()
  %96 = load i8, i8* @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  store i8 %96, i8* @FH_DU__MFHA, align 1, !tbaa !5
  %97 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  store i8 %97, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  %98 = load i32, i32* @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  store i32 %98, i32* @FH_DU__I_EIN, align 4, !tbaa !10
  %99 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i8 %99, i8* @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %100 = load i32, i32* @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  store i32 %100, i32* @FH_DU__POSITION, align 4, !tbaa !10
  %101 = load i8, i8* @FH_TUERMODUL__FT, align 1, !tbaa !5
  store i8 %101, i8* @FH_DU__FT, align 1, !tbaa !5
  %102 = load i8, i8* @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  store i8 %102, i8* @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  %103 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  store i8 %103, i8* @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  %104 = load i8, i8* @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  store i8 %104, i8* @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  %105 = load i8, i8* @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  store i8 %105, i8* @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  %106 = load i8, i8* @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  store i8 %106, i8* @FH_DU__KL_50, align 1, !tbaa !5
  %107 = load i8, i8* @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  store i8 %107, i8* @FH_DU__BLOCK, align 1, !tbaa !5
  %108 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 16), align 16, !tbaa !5
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %75
  %111 = load i8, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  %112 = sext i8 %111 to i32
  switch i32 %112, label %131 [
    i32 1, label %113
    i32 2, label %125
  ]

113:                                              ; preds = %110
  %114 = icmp eq i8 %99, 0
  %115 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %116 = icmp ne i8 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %113
  %119 = load i8, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  %120 = icmp eq i8 %119, 0
  %121 = load i8, i8* @FH_TUERMODUL__SFHA, align 1
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  store i8 0, i8* @stable, align 1, !tbaa !5
  store i8 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 24), align 8, !tbaa !5
  br label %132

125:                                              ; preds = %110
  store i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 24), align 8, !tbaa !5
  %126 = icmp ne i8 %99, 0
  %127 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1
  %128 = icmp eq i8 %127, 0
  %129 = select i1 %126, i1 true, i1 %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  store i8 0, i8* @stable, align 1, !tbaa !5
  br label %132

131:                                              ; preds = %110
  store i8 0, i8* @stable, align 1, !tbaa !5
  br label %132

132:                                              ; preds = %131, %130, %124
  %133 = phi i8 [ 2, %124 ], [ 1, %130 ], [ 1, %131 ]
  store i8 %133, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  br label %134

134:                                              ; preds = %132, %75, %113, %118, %125
  store i8 %96, i8* @FH_DU__MFHA, align 1, !tbaa !5
  store i8 %97, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  store i32 %98, i32* @FH_DU__I_EIN, align 4, !tbaa !10
  store i8 %99, i8* @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i32 %100, i32* @FH_DU__POSITION, align 4, !tbaa !10
  store i8 %101, i8* @FH_DU__FT, align 1, !tbaa !5
  store i8 %102, i8* @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  store i8 %103, i8* @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  store i8 %104, i8* @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  store i8 %105, i8* @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  store i8 %106, i8* @FH_DU__KL_50, align 1, !tbaa !5
  store i8 %107, i8* @FH_DU__BLOCK, align 1, !tbaa !5
  call void @generic_BLOCK_ERKENNUNG_CTRL()
  %135 = load i8, i8* @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  store i8 %135, i8* @FH_DU__MFHA, align 1, !tbaa !5
  %136 = load i8, i8* @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  store i8 %136, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  %137 = load i32, i32* @FH_TUERMODUL__I_EIN, align 4, !tbaa !10
  store i32 %137, i32* @FH_DU__I_EIN, align 4, !tbaa !10
  %138 = load i8, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  store i8 %138, i8* @FH_DU__EKS_LEISTE_AKTIV, align 1, !tbaa !5
  %139 = load i32, i32* @FH_TUERMODUL__POSITION, align 4, !tbaa !10
  store i32 %139, i32* @FH_DU__POSITION, align 4, !tbaa !10
  %140 = load i8, i8* @FH_TUERMODUL__FT, align 1, !tbaa !5
  store i8 %140, i8* @FH_DU__FT, align 1, !tbaa !5
  %141 = load i8, i8* @FH_TUERMODUL__SFHA_MEC, align 1, !tbaa !5
  store i8 %141, i8* @FH_DU__S_FH_AUFDISC, align 1, !tbaa !5
  %142 = load i8, i8* @FH_TUERMODUL__SFHA_ZENTRAL, align 1, !tbaa !5
  store i8 %142, i8* @FH_DU__S_FH_FTAUF, align 1, !tbaa !5
  %143 = load i8, i8* @FH_TUERMODUL__SFHZ_MEC, align 1, !tbaa !5
  store i8 %143, i8* @FH_DU__S_FH_ZUDISC, align 1, !tbaa !5
  %144 = load i8, i8* @FH_TUERMODUL__SFHZ_ZENTRAL, align 1, !tbaa !5
  store i8 %144, i8* @FH_DU__S_FH_FTZU, align 1, !tbaa !5
  %145 = load i8, i8* @FH_TUERMODUL__KL_50, align 1, !tbaa !5
  store i8 %145, i8* @FH_DU__KL_50, align 1, !tbaa !5
  %146 = load i8, i8* @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  store i8 %146, i8* @FH_DU__BLOCK, align 1, !tbaa !5
  %147 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 10), align 2, !tbaa !5
  store i8 %147, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 11), align 1, !tbaa !5
  %148 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 13), align 1, !tbaa !5
  store i8 %148, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 14), align 2, !tbaa !5
  %149 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 16), align 16, !tbaa !5
  store i8 %149, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 17), align 1, !tbaa !5
  %150 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 19), align 1, !tbaa !5
  store i8 %150, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @Bitlist, i64 0, i64 20), align 4, !tbaa !5
  %151 = load i32, i32* @FH_TUERMODUL_CTRL__N, align 4, !tbaa !10
  store i32 %151, i32* @FH_TUERMODUL_CTRL__N_old, align 4, !tbaa !10
  store i32 %137, i32* @FH_TUERMODUL__I_EIN_old, align 4, !tbaa !10
  %152 = load i32, i32* @FH_DU__MFH_copy, align 4, !tbaa !10
  store i32 %152, i32* @FH_DU__MFH, align 4, !tbaa !10
  store i32 %137, i32* @FH_DU__I_EIN_old, align 4, !tbaa !10
  %153 = load i32, i32* @BLOCK_ERKENNUNG_CTRL__N, align 4, !tbaa !10
  store i32 %153, i32* @BLOCK_ERKENNUNG_CTRL__N_old, align 4, !tbaa !10
  store i8 %144, i8* @FH_TUERMODUL__SFHZ_ZENTRAL_old, align 1, !tbaa !5
  store i8 %143, i8* @FH_TUERMODUL__SFHZ_MEC_old, align 1, !tbaa !5
  store i8 %142, i8* @FH_TUERMODUL__SFHA_ZENTRAL_old, align 1, !tbaa !5
  store i8 %141, i8* @FH_TUERMODUL__SFHA_MEC_old, align 1, !tbaa !5
  %154 = load i8, i8* @FH_TUERMODUL__BLOCK_copy, align 1, !tbaa !5
  store i8 %154, i8* @FH_TUERMODUL__BLOCK, align 1, !tbaa !5
  store i8 %154, i8* @FH_TUERMODUL__BLOCK_old, align 1, !tbaa !5
  %155 = load i8, i8* @FH_TUERMODUL__SFHZ_copy, align 1, !tbaa !5
  store i8 %155, i8* @FH_TUERMODUL__SFHZ, align 1, !tbaa !5
  store i8 %155, i8* @FH_TUERMODUL__SFHZ_old, align 1, !tbaa !5
  %156 = load i8, i8* @FH_TUERMODUL__SFHA_copy, align 1, !tbaa !5
  store i8 %156, i8* @FH_TUERMODUL__SFHA, align 1, !tbaa !5
  store i8 %156, i8* @FH_TUERMODUL__SFHA_old, align 1, !tbaa !5
  %157 = load i8, i8* @FH_TUERMODUL__MFHZ_copy, align 1, !tbaa !5
  store i8 %157, i8* @FH_TUERMODUL__MFHZ, align 1, !tbaa !5
  store i8 %157, i8* @FH_TUERMODUL__MFHZ_old, align 1, !tbaa !5
  %158 = load i8, i8* @FH_TUERMODUL__MFHA_copy, align 1, !tbaa !5
  store i8 %158, i8* @FH_TUERMODUL__MFHA, align 1, !tbaa !5
  store i8 %158, i8* @FH_TUERMODUL__MFHA_old, align 1, !tbaa !5
  store i8 %138, i8* @FH_TUERMODUL__EKS_LEISTE_AKTIV_old, align 1, !tbaa !5
  store i8 %138, i8* @FH_DU__EKS_LEISTE_AKTIV_old, align 1, !tbaa !5
  %159 = load i8, i8* @FH_DU__S_FH_TMBFAUFCAN, align 1, !tbaa !5
  store i8 %159, i8* @FH_DU__S_FH_TMBFAUFCAN_old, align 1, !tbaa !5
  %160 = load i8, i8* @FH_DU__S_FH_TMBFZUCAN, align 1, !tbaa !5
  store i8 %160, i8* @FH_DU__S_FH_TMBFZUCAN_old, align 1, !tbaa !5
  %161 = load i8, i8* @FH_DU__S_FH_TMBFZUDISC, align 1, !tbaa !5
  store i8 %161, i8* @FH_DU__S_FH_TMBFZUDISC_old, align 1, !tbaa !5
  %162 = load i8, i8* @FH_DU__S_FH_TMBFAUFDISC, align 1, !tbaa !5
  store i8 %162, i8* @FH_DU__S_FH_TMBFAUFDISC_old, align 1, !tbaa !5
  %163 = load i8, i8* @FH_DU__BLOCK_copy, align 1, !tbaa !5
  store i8 %163, i8* @FH_DU__BLOCK, align 1, !tbaa !5
  store i8 %163, i8* @FH_DU__BLOCK_old, align 1, !tbaa !5
  %164 = load i8, i8* @FH_DU__MFHZ_copy, align 1, !tbaa !5
  store i8 %164, i8* @FH_DU__MFHZ, align 1, !tbaa !5
  store i8 %164, i8* @FH_DU__MFHZ_old, align 1, !tbaa !5
  %165 = load i8, i8* @FH_DU__MFHA_copy, align 1, !tbaa !5
  store i8 %165, i8* @FH_DU__MFHA, align 1, !tbaa !5
  store i8 %165, i8* @FH_DU__MFHA_old, align 1, !tbaa !5
  %166 = load i8, i8* @stable, align 1, !tbaa !5
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %1, label %168, !llvm.loop !12

168:                                              ; preds = %134
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  store i64 0, i64* @tm_entered_EINSCHALTSTROM_MESSEN_BLOCK_ERKENNUNG_CTRLch_BLOCK_ERKENNUNG_CTRL__N_copy, align 8, !tbaa !8
  store i64 0, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRLexited_BEREIT_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i64 0, i64* @tm_entered_WIEDERHOLSPERRE_FH_TUERMODUL_CTRL, align 8, !tbaa !8
  store i8 0, i8* @NICHT_INITIALISIERT_NICHT_INITIALISIERT_next_state, align 1, !tbaa !5
  store i8 0, i8* @ZENTRAL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @MEC_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @KINDERSICHERUNG_CTRL_KINDERSICHERUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @B_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @A_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @WIEDERHOLSPERRE_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @INITIALISIERT_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @TIPP_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @MANUELL_SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @OEFFNEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @SCHLIESSEN_FH_TUERMODUL_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @FH_STEUERUNG_DUMMY_FH_STEUERUNG_DUMMY_next_state, align 1, !tbaa !5
  store i8 0, i8* @EINKLEMMSCHUTZ_CTRL_EINKLEMMSCHUTZ_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @BEWEGUNG_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  store i8 0, i8* @BLOCK_ERKENNUNG_CTRL_BLOCK_ERKENNUNG_CTRL_next_state, align 1, !tbaa !5
  call void @interface()
  call void @FH_DU()
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind sspstrong uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
