.class public Lcom/kingroot/kinguser/aks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aks$a;
    }
.end annotation


# static fields
.field private static final avF:Ljava/lang/Object;

.field private static volatile avH:Lcom/kingroot/kinguser/aks;


# instance fields
.field private avA:Landroid/content/SharedPreferences;

.field private avG:Lcom/kingroot/kinguser/aks$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aks;->avF:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 510
    const-string v1, "RootManagerSetting"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    .line 511
    new-instance v0, Lcom/kingroot/kinguser/aks$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/aks$a;-><init>(Lcom/kingroot/kinguser/aks;Landroid/content/SharedPreferences$Editor;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    .line 512
    return-void
.end method

.method public static BP()Lcom/kingroot/kinguser/aks;
    .locals 2

    .prologue
    .line 515
    sget-object v0, Lcom/kingroot/kinguser/aks;->avH:Lcom/kingroot/kinguser/aks;

    if-nez v0, :cond_1

    .line 516
    const-class v1, Lcom/kingroot/kinguser/aks;

    monitor-enter v1

    .line 517
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aks;->avH:Lcom/kingroot/kinguser/aks;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/kingroot/kinguser/aks;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aks;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aks;->avH:Lcom/kingroot/kinguser/aks;

    .line 520
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aks;->avH:Lcom/kingroot/kinguser/aks;

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Dz()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1624
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AutoReplacementFlag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1625
    if-ne v2, v0, :cond_0

    .line 1628
    const-string v0, ""

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->Ck()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AutoReplacementFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1634
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AutoReplacementFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private eh(I)V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KWorkStatus"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    return-void
.end method


# virtual methods
.method public BQ()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 527
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "SettingMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 528
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public BR()I
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "PermissionDialogTimeout"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public BS()I
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "PermissionTimeoutResponse"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public BT()Z
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LogEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BU()I
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LogLimitTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public BV()I
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LogLimit"

    const/16 v2, 0x1f4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public BW()Z
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "CouDef"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BX()J
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastSotLsTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public BY()Z
    .locals 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "NeedEnterGuideView"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BZ()J
    .locals 4

    .prologue
    .line 673
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ExpiredEevenDays"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CA()J
    .locals 4

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "RepackageCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CB()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1052
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastCheckRootEnvTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1053
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    sub-long/2addr v0, v2

    .line 1055
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aks;->aT(J)V

    .line 1057
    :cond_0
    return-wide v0
.end method

.method public CC()J
    .locals 4

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastIRM"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CD()J
    .locals 4

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastKudSR"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CE()Z
    .locals 3

    .prologue
    .line 1082
    invoke-static {}, Lcom/kingroot/kinguser/bat;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1084
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "WiFiAutoDownload"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public CF()Z
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_ku_new_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CG()J
    .locals 4

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "kuUpdateNotifyTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CH()I
    .locals 3

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "kuUpdateTryCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public CI()Z
    .locals 3

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AttCheckFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1126
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    return v0
.end method

.method public CJ()V
    .locals 4

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AttCheckFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "AttCheckFlag"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/yx;->C(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1132
    return-void
.end method

.method public CK()Z
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AttCheckFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1137
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    return v0
.end method

.method public CL()V
    .locals 4

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AttCheckFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1142
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "AttCheckFlag"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/yx;->C(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1143
    return-void
.end method

.method public CM()I
    .locals 3

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "kmDownloadTryCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public CN()I
    .locals 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170210_07:42:51"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public CO()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1165
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1167
    :cond_0
    const-string v0, "0.0.0"

    .line 1171
    :goto_0
    return-object v0

    .line 1170
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 1171
    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method public CP()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1176
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 1177
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1178
    :cond_0
    const-string v0, "0"

    .line 1182
    :goto_0
    return-object v0

    .line 1181
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 1182
    iget v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public CQ()Z
    .locals 3

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SwitcherAttProDis"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CR()Z
    .locals 3

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SwitcherAttProDel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CS()Z
    .locals 3

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SwitcherAttDisPro"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CT()Z
    .locals 3

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SwitcherAttNoPro"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CU()J
    .locals 4

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KmDownLoadCheckInterverTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CV()J
    .locals 4

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "gameBoxListUpdateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public CW()Z
    .locals 3

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsGameBoxFirstEnterMainPage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CX()Z
    .locals 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ChannelCloudDefense"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public CY()I
    .locals 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KuSilentUpdateCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public CZ()Z
    .locals 3

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_system_interface_update"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Ca()Z
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsChannelReported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Cb()J
    .locals 4

    .prologue
    .line 699
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SAExpiredOneDay"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Cc()J
    .locals 4

    .prologue
    .line 707
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "UserEnterAntiLogPageTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Cd()J
    .locals 4

    .prologue
    .line 715
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "NotifyAntiLogOneDayTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Ce()J
    .locals 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastNotifyUnreadAntiLogTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Cf()Z
    .locals 3

    .prologue
    .line 731
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "isFirstHaveAntiInjectLog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Cg()Z
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "isFirstOpenAntiInjectSuccess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Ch()Z
    .locals 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SuBackup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Ci()Z
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsFirstTimeAddShell"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Cj()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 808
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "SuCanRep"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 809
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public Ck()Ljava/lang/String;
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VcFtShow"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 827
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VcFileCreate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Cm()I
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KWorkStatus"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Cn()Z
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->Cm()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Co()V
    .locals 1

    .prologue
    .line 856
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->Cm()I

    move-result v0

    .line 857
    or-int/lit8 v0, v0, 0x1

    .line 858
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aks;->eh(I)V

    .line 859
    return-void
.end method

.method public Cp()V
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->Cm()I

    move-result v0

    .line 864
    or-int/lit8 v0, v0, 0x2

    .line 865
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aks;->eh(I)V

    .line 866
    return-void
.end method

.method public Cq()I
    .locals 3

    .prologue
    .line 870
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KWorkStatusMCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Cr()J
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KStatusReportTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Cs()I
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KStatusReportSuReplaceCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Ct()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 911
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastCheckRootPowerTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 912
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1ee62800

    sub-long/2addr v0, v2

    .line 914
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aks;->aP(J)V

    .line 916
    :cond_0
    return-wide v0
.end method

.method public Cu()Z
    .locals 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KForbidKnoxAskFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Cv()J
    .locals 4

    .prologue
    .line 931
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastPermitStaticsReportTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Cw()I
    .locals 4

    .prologue
    const/16 v0, 0x1ed

    .line 939
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "KSuMode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 940
    if-nez v1, :cond_2

    .line 941
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 954
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aks;->ek(I)V

    .line 956
    :goto_1
    return v0

    .line 944
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 945
    const-string v2, "Coolpad 8720L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    invoke-static {}, Lcom/kingroot/kinguser/abf;->qP()Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    const/16 v0, 0xded

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public Cx()Z
    .locals 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsDrInjectExceedMaxFCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Cy()Z
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsDrCauReb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Cz()J
    .locals 4

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastCCouLsTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public DA()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 1646
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1655
    :goto_0
    return v1

    .line 1648
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v3, "AutoReplacementFlag"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1649
    if-ne v4, v2, :cond_1

    .line 1650
    invoke-direct {p0}, Lcom/kingroot/kinguser/aks;->Dz()V

    .line 1651
    iget-object v2, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v3, "AutoReplacementFlag"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1655
    :cond_1
    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public DB()J
    .locals 4

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "lastWifiCheckDownloadApkTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public DC()Z
    .locals 3

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "XdaChannelStatic"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DD()Z
    .locals 3

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiLogNotificationStay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DE()I
    .locals 3

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiInjectResultFlag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DF()I
    .locals 3

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiInjectTimeoutFailCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DG()I
    .locals 3

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiInjectSystemKnowCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DH()I
    .locals 3

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiInjectSystemKnowRandom"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DI()I
    .locals 3

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiInjectSystemUnknowCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DJ()I
    .locals 3

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AntiInjectSystemUnknowRandom"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DK()Z
    .locals 3

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "AppInjectedZygoteListFlag"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DL()Z
    .locals 3

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "anti_inject_protect_list_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DM()Z
    .locals 3

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "had_enter_anti_inject_protect_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DN()J
    .locals 4

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "last_accelerate_autostartup_speed_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public DO()J
    .locals 4

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "game_box_last_show_guid_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public DP()I
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_box_last_show_guid_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DQ()V
    .locals 3

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_box_last_show_guid_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->DP()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1965
    return-void
.end method

.method public DR()I
    .locals 3

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_box_show_notification_guid_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public DS()V
    .locals 3

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game_box_show_notification_guid_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->DP()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1981
    return-void
.end method

.method public DT()Z
    .locals 3

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "game_had_ever_create_shortcut"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DU()V
    .locals 3

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "game_had_ever_create_shortcut"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1997
    return-void
.end method

.method public DV()Z
    .locals 3

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "game_had_ever_show_shortcut_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public DW()V
    .locals 3

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "game_had_ever_show_shortcut_success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2013
    return-void
.end method

.method public DX()V
    .locals 3

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "hadEnterGameBoxPage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2027
    return-void
.end method

.method public DY()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "game_box_last_app_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DZ()Z
    .locals 3

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_first_time_enter_gamebox_from_ku_main"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Da()I
    .locals 3

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_system_interface_update_where"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Db()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_current_version_for_update_statics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x280

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Dc()Z
    .locals 3

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "isKuSilentUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dd()Z
    .locals 4

    .prologue
    const/16 v3, 0x280

    .line 1374
    .line 1375
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "kuTransformBuildNoForGameboxAutoShortcut"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 1376
    const/4 v0, 0x0

    .line 1381
    :goto_0
    return v0

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "kuTransformBuildNoForGameboxAutoShortcut"

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1379
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public De()J
    .locals 4

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ScreenOffActionExpired"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Df()Z
    .locals 3

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SwitcherAutoSilentUpdate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dg()Z
    .locals 3

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "WiFiAutoUpdate"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dh()Z
    .locals 3

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "SwitcherUninstallInterfaceFor3Dr"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Di()I
    .locals 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KuCurrentBuildNo"

    const/16 v2, 0x280

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Dj()J
    .locals 4

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_tip_task_for_update_statics"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Dk()Z
    .locals 3

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "RDUIsFirstTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dl()V
    .locals 3

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "RDUIsFirstTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1446
    return-void
.end method

.method public Dm()J
    .locals 4

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "RDULastTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Dn()Z
    .locals 3

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "RDULastResultIsSuccess"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Do()Z
    .locals 3

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsFirstReportDFGI"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dp()V
    .locals 3

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsFirstReportDFGI"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1475
    return-void
.end method

.method public Dq()Z
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsKmInstalledWithKu"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dr()V
    .locals 3

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "HasShowOtherStateOnMain"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1515
    return-void
.end method

.method public Ds()V
    .locals 3

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "HasOnClickKmPage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1530
    return-void
.end method

.method public Dt()I
    .locals 3

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KuUpdate2SystemAppCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Du()Z
    .locals 3

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KuUpdate2SystemAppWarnPrompt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dv()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1568
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1570
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "HasKuUpdate2SystemAppt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public Dw()Z
    .locals 3

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "HasKuUpdate2SystemAppAfterReboot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Dx()Z
    .locals 4

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_need_show_update_guide_view"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1603
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v1

    .line 1604
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->Ck()Ljava/lang/String;

    move-result-object v2

    .line 1606
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-le v1, v0, :cond_0

    .line 1607
    const/4 v0, 0x1

    .line 1609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Dy()V
    .locals 3

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_need_show_update_guide_view"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1614
    return-void
.end method

.method public EA()J
    .locals 4

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "app_dist_examination_last_request_cloud"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public EB()J
    .locals 4

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "app_dist_securityprotect_last_request_cloud"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public EC()J
    .locals 4

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "app_dist_toolbox_last_request_cloud"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ED()J
    .locals 4

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "app_dist_examination_last_download_app"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public EE()J
    .locals 4

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_first_get_network_time_failed_for_shuamebuildin"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public EF()Z
    .locals 3

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_is_ignore_limit_show_preapp_uninstall_page_for_shuamebuildin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EG()V
    .locals 3

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_is_ignore_limit_show_preapp_uninstall_page_for_shuamebuildin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2723
    return-void
.end method

.method public EH()Z
    .locals 3

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_is_first_time_fix_anti_acquire_root"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EI()V
    .locals 3

    .prologue
    .line 2731
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_is_first_time_fix_anti_acquire_root"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2732
    return-void
.end method

.method public EJ()Z
    .locals 3

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_is_clean_permanent_root_cause_reboot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EK()V
    .locals 3

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_is_clean_permanent_root_cause_reboot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2741
    return-void
.end method

.method public EL()I
    .locals 3

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_clean_permanent_root_failed_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public EM()Z
    .locals 3

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_show_business_splash_allowed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EN()Z
    .locals 3

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "had_ever_cancle_update_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EO()I
    .locals 3

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_udapte_download_type"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public EP()Z
    .locals 3

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_three_proccess_moniter_switcher"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EQ()I
    .locals 3

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "adapt_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ER()I
    .locals 3

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "root_process_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ES()I
    .locals 3

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "root_scene"

    const/16 v2, 0x3e7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ET()Z
    .locals 3

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_enter_main_page"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EU()Z
    .locals 3

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_security_protect_do_not_remind_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public EV()J
    .locals 4

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_security_protect_pop_risk_dialog_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public EW()V
    .locals 4

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_security_protect_pop_risk_dialog_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2958
    return-void
.end method

.method public EX()J
    .locals 4

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_click_main_page_one_key_process_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public EY()V
    .locals 4

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_click_main_page_one_key_process_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2975
    return-void
.end method

.method public EZ()V
    .locals 4

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_last_time_opened_successed_anti_inject_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2991
    return-void
.end method

.method public Ea()J
    .locals 4

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "UranusPeekCountTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Eb()I
    .locals 3

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "UranusPeekCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Ec()J
    .locals 4

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "UranusCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Ed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2299
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "fpifgotroot"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ee()V
    .locals 3

    .prologue
    .line 2303
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "fpifgotroot"

    invoke-static {}, Lcom/kingroot/kinguser/ze;->po()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2309
    :goto_0
    return-void

    .line 2306
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "fpifgotroot"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public Ef()Z
    .locals 6

    .prologue
    .line 2315
    sget-object v1, Lcom/kingroot/kinguser/aks;->avF:Ljava/lang/Object;

    monitor-enter v1

    .line 2316
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "FlagsForMlSwitcher"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/yx;->e(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Eg()V
    .locals 6

    .prologue
    .line 2321
    sget-object v1, Lcom/kingroot/kinguser/aks;->avF:Ljava/lang/Object;

    monitor-enter v1

    .line 2322
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "FlagsForMlSwitcher"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/yx;->f(JJ)J

    move-result-wide v2

    .line 2323
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v4, "FlagsForMlSwitcher"

    invoke-virtual {v0, v4, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2324
    monitor-exit v1

    .line 2325
    return-void

    .line 2324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Eh()Z
    .locals 6

    .prologue
    .line 2331
    sget-object v1, Lcom/kingroot/kinguser/aks;->avF:Ljava/lang/Object;

    monitor-enter v1

    .line 2332
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "FlagsForMlSwitcher"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/yx;->e(JJ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Ei()V
    .locals 6

    .prologue
    .line 2337
    sget-object v1, Lcom/kingroot/kinguser/aks;->avF:Ljava/lang/Object;

    monitor-enter v1

    .line 2338
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "FlagsForMlSwitcher"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/yx;->f(JJ)J

    move-result-wide v2

    .line 2339
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v4, "FlagsForMlSwitcher"

    invoke-virtual {v0, v4, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2340
    monitor-exit v1

    .line 2341
    return-void

    .line 2340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Ej()V
    .locals 3

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.3.3_20180111_04:30:54.222"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2352
    return-void
.end method

.method public Ek()J
    .locals 4

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastExamCureTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public El()Z
    .locals 3

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_show_notify_examination_oneday"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Em()V
    .locals 3

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_show_notify_examination_oneday"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2377
    return-void
.end method

.method public En()Z
    .locals 3

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_show_notify_examination_threeday"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Eo()J
    .locals 4

    .prologue
    .line 2391
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastSilentCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Ep()Z
    .locals 3

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "is_show_badge"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Eq()J
    .locals 4

    .prologue
    .line 2421
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_1"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Er()I
    .locals 3

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "MaxKrRestartReportCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Es()J
    .locals 4

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KrRestartReportTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Et()I
    .locals 3

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "482_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Eu()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "482_2"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ev()J
    .locals 4

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "last_check_competitor_risk_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Ew()I
    .locals 3

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Ex()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_4"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ey()I
    .locals 3

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_5"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Ez()J
    .locals 4

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_6"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FA()J
    .locals 4

    .prologue
    .line 3369
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "last_animate_root_state_badge_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FB()Z
    .locals 3

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "PraiseDialogRoot"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FC()Z
    .locals 3

    .prologue
    .line 3392
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "PraiseDialogRisk"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FD()Z
    .locals 3

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "PraiseDialogOpt"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FE()Z
    .locals 3

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "PraiseDialogAll"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FF()J
    .locals 4

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastShowPraiseDialogTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FG()J
    .locals 4

    .prologue
    .line 3434
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.5_20170213_02:36:25.935"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FH()I
    .locals 3

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.05_20170213_05:11:12.790"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public FI()Z
    .locals 3

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.05_20170215_11:33:23.053"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FJ()Z
    .locals 3

    .prologue
    .line 3467
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.21_20170628_04:07:54.917"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FK()Z
    .locals 3

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.21_20170629_08:01:42.440"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FL()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3510
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3520
    :cond_0
    :goto_0
    return v0

    .line 3514
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v3, "VER:5.l10_20170308_04:35:40.559"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3516
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 3519
    iget-object v2, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v3, "VER:5.10_20170308_04:33:59.593"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3520
    const-wide/32 v4, 0xf731400

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public FM()Z
    .locals 3

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.10_20170313_03:42:41.362"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FN()Z
    .locals 3

    .prologue
    .line 3550
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170313_05:51:21.904"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FO()J
    .locals 4

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170321_05:57:20.953"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FP()J
    .locals 4

    .prologue
    .line 3567
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170328_09:21:25.921"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FQ()I
    .locals 3

    .prologue
    .line 3584
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170329_10:57:00.618"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public FR()I
    .locals 3

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170329_11:38:12.250"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public FS()J
    .locals 4

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170511_11:12:03.122"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FT()J
    .locals 4

    .prologue
    .line 3633
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170509_06:01:19.866"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FU()J
    .locals 4

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170511_10:54:58.258"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FV()J
    .locals 4

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170512_01:10:59.013"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public FW()V
    .locals 6

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170517_05:23:24.328"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3654
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3659
    :goto_0
    return-void

    .line 3657
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "VER:5.2.0_20170524_08:45:18.043"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3658
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "VER:5.2.0_20170517_05:23:24.328"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public FX()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 3662
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.2.0_20170524_08:45:18.043"

    const-wide/16 v4, 0x0

    .line 3663
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    .line 3662
    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.2.0_20170517_05:23:24.328"

    .line 3665
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v6, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.2.0_20170517_05:22:30.760"

    .line 3666
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3662
    :cond_1
    return v0
.end method

.method public FY()Z
    .locals 3

    .prologue
    .line 3670
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170523_10:59:34.764"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public FZ()V
    .locals 3

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.0_20170517_05:22:30.760"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3679
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 3683
    :goto_0
    return-void

    .line 3682
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "VER:5.2.0_20170517_05:22:30.760"

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public Fa()J
    .locals 4

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_last_time_replace_su_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fb()V
    .locals 4

    .prologue
    .line 3006
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_last_time_replace_su_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3007
    return-void
.end method

.method public Fc()Z
    .locals 3

    .prologue
    .line 3019
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3021
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_7"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public Fd()Z
    .locals 3

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_8"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Fe()Z
    .locals 3

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "490_9"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Ff()J
    .locals 4

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "491_0"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fg()J
    .locals 4

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_last_update_virus_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fh()J
    .locals 4

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_update_virus_interval"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fi()J
    .locals 4

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "last_exam_ignore_purify_intro_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fj()I
    .locals 3

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "exam_ignore_purify_intro_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Fk()I
    .locals 3

    .prologue
    .line 3125
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "exam_ignore_gamebox_manual_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Fl()J
    .locals 4

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "last_exam_ignore_gamebox_manual_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fm()I
    .locals 3

    .prologue
    .line 3141
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_04:36:33.137"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Fn()J
    .locals 4

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_04:34:18.337"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_security_protect_recommand_pkg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Fp()J
    .locals 4

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_security_protect_recommand_ignore_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fq()J
    .locals 4

    .prologue
    .line 3215
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "key_security_protect_recommand_app_install_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fr()Z
    .locals 3

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "KCloudGuideKMSwitch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Fs()Z
    .locals 3

    .prologue
    .line 3234
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "491_2"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public Ft()Z
    .locals 3

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "km_enginer_is_enable_by_ku"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Fu()J
    .locals 4

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "491_3"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fv()V
    .locals 4

    .prologue
    .line 3337
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "491_3"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3338
    return-void
.end method

.method public Fw()Z
    .locals 3

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "IsShowExaminationWhenInstalled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Fx()V
    .locals 3

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsShowExaminationWhenInstalled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3346
    return-void
.end method

.method public Fy()J
    .locals 4

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "ku_krdem_report_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Fz()Z
    .locals 3

    .prologue
    .line 3358
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "1480323418437"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Ga()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.22_20170807_02:55:32.496"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Gb()Z
    .locals 3

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.22_20170807_02:58:39.982"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Gc()I
    .locals 3

    .prologue
    .line 3740
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.22_20170817_04:13:17.589"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Gd()Z
    .locals 3

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.32_20171201_05:47:27.676"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Ge()I
    .locals 3

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.32_20171204_10:01:58.480"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Gf()V
    .locals 3

    .prologue
    .line 3792
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aks;->Ge()I

    move-result v0

    .line 3793
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 3799
    :goto_0
    return-void

    .line 3797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3798
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "VER:5.32_20171204_10:01:58.480"

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public Gg()J
    .locals 4

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_04:57:44.193"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Gh()I
    .locals 3

    .prologue
    .line 3810
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_05:02:39.956"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Gi()J
    .locals 4

    .prologue
    .line 3818
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_06:18:36.950"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public T(J)V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastStaticsReportTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 839
    return-void
.end method

.method public aH(J)V
    .locals 3

    .prologue
    .line 642
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastReCouLsTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    return-void
.end method

.method public aI(J)V
    .locals 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastSotLsTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 651
    return-void
.end method

.method public aJ(J)V
    .locals 3

    .prologue
    .line 676
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ExpiredEevenDays"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 677
    return-void
.end method

.method public aK(J)V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SAExpiredOneDay"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    return-void
.end method

.method public aL(J)V
    .locals 3

    .prologue
    .line 710
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "UserEnterAntiLogPageTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 711
    return-void
.end method

.method public aM(J)V
    .locals 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "NotifyAntiLogOneDayTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    return-void
.end method

.method public aN(J)V
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastNotifyUnreadAntiLogTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 727
    return-void
.end method

.method public aO(J)V
    .locals 3

    .prologue
    .line 883
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KStatusReportTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 884
    return-void
.end method

.method public aP(J)V
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastCheckRootPowerTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 907
    return-void
.end method

.method public aQ(J)V
    .locals 3

    .prologue
    .line 934
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastPermitStaticsReportTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 935
    return-void
.end method

.method public aR(J)V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastCCouLsTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1011
    return-void
.end method

.method public aS(J)V
    .locals 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "RepackageCheckTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    return-void
.end method

.method public aT(J)V
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastCheckRootEnvTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1048
    return-void
.end method

.method public aU(J)V
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastIRM"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1063
    return-void
.end method

.method public aV(J)V
    .locals 3

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastKudSR"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1072
    return-void
.end method

.method public aW(J)V
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "kuUpdateNotifyTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1108
    return-void
.end method

.method public aX(J)V
    .locals 3

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "NotifyInstallKmTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1200
    return-void
.end method

.method public aY(J)V
    .locals 3

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KmDownLoadCheckInterverTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1249
    return-void
.end method

.method public aZ(J)V
    .locals 3

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "gameBoxListUpdateTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1257
    return-void
.end method

.method public ac(J)V
    .locals 3

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "lastCheckUpdateTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1367
    return-void
.end method

.method public aj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_shark_config_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2506
    return-void
.end method

.method public ak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.2.2_20170329_10:06:02.593"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2802
    return-void
.end method

.method public al(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.22_20170823_05:15:49.536"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3773
    return-void
.end method

.method public bA(J)V
    .locals 3

    .prologue
    .line 3197
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_security_protect_recommand_ignore_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3198
    return-void
.end method

.method public bA(Z)V
    .locals 2

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SwitcherAutoSilentUpdate"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1399
    return-void
.end method

.method public bB(J)V
    .locals 3

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_security_protect_recommand_app_install_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3210
    return-void
.end method

.method public bB(Z)V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "WiFiAutoUpdate"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1408
    return-void
.end method

.method public bC(J)V
    .locals 3

    .prologue
    .line 3353
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_krdem_report_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3354
    return-void
.end method

.method public bC(Z)V
    .locals 2

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SwitcherUninstallInterfaceFor3Dr"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1417
    return-void
.end method

.method public bD(J)V
    .locals 3

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "last_animate_root_state_badge_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3374
    return-void
.end method

.method public bD(Z)V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "RDULastResultIsSuccess"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1464
    return-void
.end method

.method public bE(J)V
    .locals 3

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastShowPraiseDialogTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3430
    return-void
.end method

.method public bE(Z)V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsKmInstalledWithKu"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1485
    return-void
.end method

.method public bF(J)V
    .locals 3

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.0.5_20170213_02:36:25.935"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3438
    return-void
.end method

.method public bF(Z)V
    .locals 2

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KuUpdate2SystemAppWarnPrompt"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1560
    return-void
.end method

.method public bG(J)V
    .locals 3

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.1.0_20170328_09:21:25.921"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3577
    return-void
.end method

.method public bG(Z)V
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "HasKuUpdate2SystemAppt"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1578
    return-void
.end method

.method public bH(J)V
    .locals 3

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.2.0_20170511_11:12:03.122"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3622
    return-void
.end method

.method public bH(Z)V
    .locals 2

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "HasKuUpdate2SystemAppAfterReboot"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1594
    return-void
.end method

.method public bI(J)V
    .locals 3

    .prologue
    .line 3629
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.2.0_20170509_06:01:19.866"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3630
    return-void
.end method

.method public bI(Z)V
    .locals 3

    .prologue
    .line 1662
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "AutoReplacementFlag"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1664
    return-void

    .line 1662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bJ(J)V
    .locals 3

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.2.0_20170512_01:10:59.013"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3650
    return-void
.end method

.method public bJ(Z)V
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "NeedShowHelpNewTag"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1699
    return-void
.end method

.method public bK(J)V
    .locals 3

    .prologue
    .line 3806
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.3.3_20180111_04:57:44.193"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3807
    return-void
.end method

.method public bK(Z)V
    .locals 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "XdaChannelStatic"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1713
    return-void
.end method

.method public bL(J)V
    .locals 3

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.3.3_20180111_06:18:36.950"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3823
    return-void
.end method

.method public bL(Z)V
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IS_ANTI_INJECT_OPEN_FAILED_ONCE"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1768
    return-void
.end method

.method public bM(Z)V
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiLogNotificationStay"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1781
    return-void
.end method

.method public bN(Z)V
    .locals 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AppInjectedZygoteListFlag"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1865
    return-void
.end method

.method public bO(Z)V
    .locals 2

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "anti_inject_protect_list_state"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1880
    return-void
.end method

.method public bP(Z)V
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "had_enter_anti_inject_protect_list"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1895
    return-void
.end method

.method public bQ(Z)V
    .locals 2

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_first_time_enter_gamebox_from_ku_main"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2060
    return-void
.end method

.method public bR(Z)V
    .locals 2

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KrPluginRootFailedFlag"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2235
    return-void
.end method

.method public bS(Z)V
    .locals 2

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_show_badge"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2417
    return-void
.end method

.method public bT(Z)V
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_3"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2561
    return-void
.end method

.method public bU(Z)V
    .locals 2

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_show_business_splash_allowed"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2754
    return-void
.end method

.method public bV(Z)V
    .locals 2

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "had_ever_cancle_update_dialog"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2780
    return-void
.end method

.method public bW(Z)V
    .locals 2

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_three_proccess_moniter_switcher"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2814
    return-void
.end method

.method public bX(Z)V
    .locals 2

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_enter_main_page"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2925
    return-void
.end method

.method public bY(Z)Z
    .locals 2

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_security_protect_do_not_remind_dialog"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public bZ(Z)V
    .locals 2

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_7"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3016
    return-void
.end method

.method public ba(J)V
    .locals 3

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ScreenOffActionExpired"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1390
    return-void
.end method

.method public bb(J)V
    .locals 3

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_tip_task_for_update_statics"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1435
    return-void
.end method

.method public bc(J)V
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "RDULastTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1455
    return-void
.end method

.method public bc(Z)V
    .locals 5

    .prologue
    const v4, 0x186c8

    const v3, 0x186c7

    .line 532
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 533
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "SettingMode"

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    if-eqz p1, :cond_1

    .line 537
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 538
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bk(I)V

    .line 546
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186c9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 547
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 542
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bk(I)V

    goto :goto_1
.end method

.method public bd(J)V
    .locals 3

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "lastWifiCheckDownloadApkTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1727
    return-void
.end method

.method public bd(Z)V
    .locals 4

    .prologue
    const v3, 0x186cb

    const v2, 0x186ca

    .line 620
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "CouDef"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 622
    if-eqz p1, :cond_0

    .line 624
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 625
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bk(I)V

    .line 634
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186cc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 635
    return-void

    .line 629
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 630
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bk(I)V

    goto :goto_0
.end method

.method public be(J)V
    .locals 3

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LAST_ENTER_ANTI_INJECT_PAGE_TIME"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1755
    return-void
.end method

.method public be(Z)V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "NeedEnterGuideView"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 669
    return-void
.end method

.method public bf(J)V
    .locals 3

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "last_accelerate_autostartup_speed_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1918
    return-void
.end method

.method public bf(Z)V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsChannelReported"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 685
    return-void
.end method

.method public bg(J)V
    .locals 3

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "game_box_last_show_guid_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1949
    return-void
.end method

.method public bg(Z)V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "isFirstHaveAntiInjectLog"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 735
    return-void
.end method

.method public bh(J)V
    .locals 3

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "UranusPeekCountTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2267
    return-void
.end method

.method public bh(Z)V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "isFirstOpenAntiInjectSuccess"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 743
    return-void
.end method

.method public bi(J)V
    .locals 3

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "UranusCheckTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2291
    return-void
.end method

.method public bi(Z)V
    .locals 4

    .prologue
    const v3, 0x186ce

    const v2, 0x186cd

    .line 767
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SuBackup"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    if-eqz p1, :cond_0

    .line 771
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 772
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bk(I)V

    .line 781
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186cf

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 782
    return-void

    .line 776
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 777
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bk(I)V

    goto :goto_0
.end method

.method public bj(J)V
    .locals 3

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastExamCureTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2363
    return-void
.end method

.method public bj(Z)V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsFirstTimeAddShell"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 790
    return-void
.end method

.method public bk(J)V
    .locals 3

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LastSilentCheckTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2396
    return-void
.end method

.method public bk(Z)V
    .locals 3

    .prologue
    .line 813
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "SuCanRep"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 814
    return-void

    .line 813
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public bl(J)V
    .locals 3

    .prologue
    .line 2425
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_1"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2426
    return-void
.end method

.method public bl(Z)V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsSurvivalMode"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 902
    return-void
.end method

.method public bm(J)V
    .locals 3

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KrRestartReportTime"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2453
    return-void
.end method

.method public bm(Z)V
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KForbidKnoxAskFlag"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 927
    return-void
.end method

.method public bn(J)V
    .locals 3

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "last_check_competitor_risk_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2493
    return-void
.end method

.method public bn(Z)V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsDrInjectExceedMaxFCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 970
    return-void
.end method

.method public bo(J)V
    .locals 3

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_6"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2620
    return-void
.end method

.method public bo(Z)V
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsDrCauReb"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 982
    return-void
.end method

.method public bp(J)V
    .locals 3

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "app_dist_examination_last_request_cloud"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2639
    return-void
.end method

.method public bp(Z)V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsUpdateV3GuidAndProfile"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1043
    return-void
.end method

.method public bq(J)V
    .locals 3

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "app_dist_securityprotect_last_request_cloud"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2655
    return-void
.end method

.method public bq(Z)V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "WiFiAutoDownload"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1089
    return-void
.end method

.method public br(J)V
    .locals 3

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "app_dist_toolbox_last_request_cloud"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2671
    return-void
.end method

.method public br(Z)V
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "is_ku_new_version"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1098
    return-void
.end method

.method public bs(J)V
    .locals 3

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "app_dist_examination_last_download_app"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2687
    return-void
.end method

.method public bs(Z)V
    .locals 2

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SwitcherAttProDis"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1216
    return-void
.end method

.method public bt(J)V
    .locals 3

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_first_get_network_time_failed_for_shuamebuildin"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2715
    return-void
.end method

.method public bt(Z)V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SwitcherAttProDel"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1224
    return-void
.end method

.method public bu(J)V
    .locals 3

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "491_0"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3052
    return-void
.end method

.method public bu(Z)V
    .locals 2

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SwitcherAttDisPro"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1233
    return-void
.end method

.method public bv(J)V
    .locals 3

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_last_update_virus_timestamp"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3071
    return-void
.end method

.method public bv(Z)V
    .locals 2

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "SwitcherAttNoPro"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1241
    return-void
.end method

.method public bw(J)V
    .locals 3

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_update_virus_interval"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3087
    return-void
.end method

.method public bw(Z)V
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "IsGameBoxFirstEnterMainPage"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1273
    return-void
.end method

.method public bx(J)V
    .locals 3

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "last_exam_ignore_purify_intro_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3105
    return-void
.end method

.method public bx(Z)V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ChannelCloudDefense"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1282
    return-void
.end method

.method public by(J)V
    .locals 3

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "last_exam_ignore_gamebox_manual_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3122
    return-void
.end method

.method public by(Z)V
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_system_interface_update"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1309
    return-void
.end method

.method public bz(J)V
    .locals 3

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.3.3_20180111_04:34:18.337"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3138
    return-void
.end method

.method public bz(Z)V
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "isKuSilentUpdate"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1351
    return-void
.end method

.method public c(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 3744
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3748
    :goto_0
    return-void

    .line 3747
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.2.2_20170814_11:19:38.695"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public ca(Z)V
    .locals 2

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_8"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3030
    return-void
.end method

.method public cb(Z)V
    .locals 2

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_9"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3041
    return-void
.end method

.method public cc(Z)V
    .locals 2

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_need_guide_open_anti_inject"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3096
    return-void
.end method

.method public cd(Z)V
    .locals 2

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KCloudGuideKMSwitch"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3226
    return-void
.end method

.method public ce(Z)V
    .locals 2

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "491_2"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3241
    return-void
.end method

.method public cf(Z)V
    .locals 2

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_enginer_is_enable_by_ku"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3249
    return-void
.end method

.method public cg(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3299
    if-eqz p1, :cond_0

    .line 3300
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_enginer_is_enable_by_ku"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3301
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_exam_ignore_time"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3302
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_notify_shown_by_engine_disable"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3303
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_notify_shown_by_notify_exeed"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3304
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_notify_shown_by_power_low"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3305
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_last_notify_show_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3314
    :goto_0
    return-void

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_enginer_is_enable_by_ku"

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3308
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_exam_ignore_time"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3309
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_notify_shown_by_engine_disable"

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3310
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_notify_shown_by_notify_exeed"

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3311
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_notify_shown_by_power_low"

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3312
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "km_last_notify_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public ch(Z)V
    .locals 2

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "1480323418437"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3364
    return-void
.end method

.method public ci(Z)V
    .locals 2

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "PraiseDialogRoot"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3386
    return-void
.end method

.method public cj(Z)V
    .locals 2

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "PraiseDialogRisk"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3398
    return-void
.end method

.method public ck(Z)V
    .locals 2

    .prologue
    .line 3409
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "PraiseDialogOpt"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3410
    return-void
.end method

.method public cl(Z)V
    .locals 2

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "PraiseDialogAll"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3422
    return-void
.end method

.method public cm(Z)V
    .locals 2

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.05_20170215_11:33:23.053"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3461
    return-void
.end method

.method public cn(Z)V
    .locals 2

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.21_20170628_04:07:54.917"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3473
    return-void
.end method

.method public co(Z)V
    .locals 2

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.21_20170629_08:01:42.440"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3485
    return-void
.end method

.method public cp(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x2

    .line 3493
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.l10_20170308_04:35:40.559"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3494
    if-eqz p1, :cond_0

    move v1, v0

    .line 3496
    :goto_0
    if-le v1, v0, :cond_1

    .line 3499
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "VER:5.10_20170308_04:33:59.593"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3500
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v2, "VER:5.l10_20170308_04:35:40.559"

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3501
    return-void

    .line 3494
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public cq(Z)V
    .locals 4

    .prologue
    .line 3526
    if-eqz p1, :cond_0

    .line 3528
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.1.0_20170321_05:57:20.953"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3530
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.10_20170313_03:42:41.362"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3531
    return-void
.end method

.method public cr(Z)V
    .locals 2

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.1.0_20170313_05:51:21.904"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3543
    return-void
.end method

.method public cs(Z)V
    .locals 2

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.2.0_20170523_10:59:34.764"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3675
    return-void
.end method

.method public ct(Z)V
    .locals 2

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.22_20170807_02:58:39.982"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3720
    return-void
.end method

.method public cu(Z)V
    .locals 2

    .prologue
    .line 3784
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.32_20171201_05:47:27.676"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3785
    return-void
.end method

.method public d(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 3758
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3762
    :goto_0
    return-void

    .line 3761
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.2.2_20170814_12:14:14.464"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public eA(I)V
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "MaxKrRestartReportCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2440
    return-void
.end method

.method public eB(I)V
    .locals 2

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "482_1"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2478
    return-void
.end method

.method public eC(I)V
    .locals 2

    .prologue
    .line 2550
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_2"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2551
    return-void
.end method

.method public eD(I)V
    .locals 2

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_5"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2610
    return-void
.end method

.method public eE(I)V
    .locals 2

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_clean_permanent_root_failed_count"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2745
    return-void
.end method

.method public eF(I)V
    .locals 2

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_udapte_download_type"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2788
    return-void
.end method

.method public eG(I)V
    .locals 2

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "adapt_num"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2869
    return-void
.end method

.method public eH(I)V
    .locals 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "root_process_state"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2897
    return-void
.end method

.method public eI(I)V
    .locals 2

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "root_scene"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2911
    return-void
.end method

.method public eJ(I)V
    .locals 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "exam_ignore_purify_intro_time"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3117
    return-void
.end method

.method public eK(I)V
    .locals 2

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "exam_ignore_gamebox_manual_time"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3130
    return-void
.end method

.method public eL(I)V
    .locals 2

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.3.3_20180111_04:36:33.137"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3146
    return-void
.end method

.method public eM(I)V
    .locals 2

    .prologue
    .line 3448
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.05_20170213_05:11:12.790"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3449
    return-void
.end method

.method public eN(I)V
    .locals 2

    .prologue
    .line 3592
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.1.0_20170329_10:57:00.618"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3593
    return-void
.end method

.method public eO(I)V
    .locals 2

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.1.0_20170329_11:38:12.250"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3610
    return-void
.end method

.method public eP(I)V
    .locals 6

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.2.0_20170511_10:54:58.258"

    int-to-long v2, p1

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3638
    return-void
.end method

.method public eQ(I)V
    .locals 2

    .prologue
    .line 3733
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.22_20170817_04:13:17.589"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3734
    return-void
.end method

.method public eR(I)V
    .locals 2

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.3.3_20180111_05:02:39.956"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3815
    return-void
.end method

.method public ee(I)V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "PermissionDialogTimeout"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 563
    return-void
.end method

.method public ef(I)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "PermissionTimeoutResponse"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 571
    return-void
.end method

.method public eg(I)V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "LogLimitTime"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 604
    return-void
.end method

.method public ei(I)V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KWorkStatusMCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 875
    return-void
.end method

.method public ej(I)V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KStatusReportSuReplaceCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 893
    return-void
.end method

.method public ek(I)V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KSuMode"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    invoke-static {}, Lcom/kingroot/kinguser/akz;->GJ()Lcom/kingroot/kinguser/akz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/akz;->eV(I)V

    .line 963
    return-void
.end method

.method public el(I)V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "kuUpdateTryCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1118
    return-void
.end method

.method public em(I)V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "kmDownloadTryCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1153
    return-void
.end method

.method public en(I)V
    .locals 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.0.4_20170210_07:42:51"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1161
    return-void
.end method

.method public eo(I)V
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "NotifyInstallKmCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1208
    return-void
.end method

.method public ep(I)V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KuSilentUpdateCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1299
    return-void
.end method

.method public eq(I)V
    .locals 2

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_system_interface_update_where"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1327
    return-void
.end method

.method public er(I)V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KuCurrentBuildNo"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1427
    return-void
.end method

.method public es(I)V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "KuUpdate2SystemAppCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1545
    return-void
.end method

.method public et(I)V
    .locals 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiInjectResultFlag"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1798
    return-void
.end method

.method public eu(I)V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiInjectTimeoutFailCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1811
    return-void
.end method

.method public ev(I)V
    .locals 2

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiInjectSystemKnowCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1824
    return-void
.end method

.method public ew(I)V
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiInjectSystemKnowRandom"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1834
    return-void
.end method

.method public ex(I)V
    .locals 2

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiInjectSystemUnknowCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1844
    return-void
.end method

.method public ey(I)V
    .locals 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "AntiInjectSystemUnknowRandom"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1854
    return-void
.end method

.method public ez(I)V
    .locals 2

    .prologue
    .line 2277
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "UranusPeekCount"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2278
    return-void
.end method

.method public gX(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/kingroot/kinguser/aks;->Dz()V

    .line 822
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VcFtShow"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 823
    return-void
.end method

.method public gY(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VcFileCreate"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    return-void
.end method

.method public gZ(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "ku_current_version_for_update_statics"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1343
    return-void
.end method

.method public getRootState()I
    .locals 3

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "root_state"

    const/16 v2, 0x3e7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public gm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "InstallRecoveryLocation"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1024
    return-void
.end method

.method public ha(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "game_box_last_app_name"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2053
    return-void
.end method

.method public hb(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_first_time_start_recommend_game"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hc(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_time_game_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_time_click_play_btn_and_jump_gp_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks$a;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2125
    return-void
.end method

.method public he(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "482_2"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2488
    return-void
.end method

.method public hf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_shark_config_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hg(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2571
    if-nez p1, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_4"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks$a;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2576
    :goto_0
    return-void

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "490_4"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public hh(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.2.2_20170329_10:06:02.593"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hi(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_dist_silent_download_success_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aks;->hj(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3159
    return-void
.end method

.method public hj(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_dist_silent_download_success_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hk(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_dist_silent_download_success_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks$a;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3176
    return-void
.end method

.method public hl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "key_security_protect_recommand_pkg"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3185
    return-void
.end method

.method public hm(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3686
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3690
    :goto_0
    return-void

    .line 3689
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.2.0_20170609_11:30:10.403"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public hn(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3696
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VER:5.2.0_20170609_11:30:10.403"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public ho(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3704
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "VER:5.22_20170807_02:55:32.496"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3705
    return-void
.end method

.method public hp(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 3751
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3754
    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VER:5.2.2_20170814_11:19:38.695"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hq(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 3765
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3768
    :goto_0
    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VER:5.2.2_20170814_12:14:14.464"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public hr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3776
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.22_20170823_05:15:49.536"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_time_game_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/kingroot/kinguser/aks$a;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2089
    return-void
.end method

.method public ni()J
    .locals 4

    .prologue
    .line 835
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "LastStaticsReportTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setRootState(I)V
    .locals 2

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    const-string v1, "root_state"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/aks$a;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2883
    return-void
.end method

.method public uk()J
    .locals 4

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "lastCheckUpdateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avG:Lcom/kingroot/kinguser/aks$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_first_time_start_recommend_game"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/aks$a;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2074
    return-void
.end method

.method public zi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/kingroot/kinguser/aks;->avA:Landroid/content/SharedPreferences;

    const-string v1, "InstallRecoveryLocation"

    const-string v2, "/system/etc/install-recovery.sh"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
