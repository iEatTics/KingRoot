.class public final Lcom/kingroot/kinguser/bmn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bmn$a;
    }
.end annotation


# static fields
.field private static TELEPHONY_SERVICE:Ljava/lang/String;

.field private static bBX:Ljava/lang/String;

.field private static bBY:Ljava/lang/String;

.field private static bBZ:Ljava/lang/String;

.field private static bCa:Ljava/lang/String;

.field private static bCb:Ljava/lang/Boolean;

.field private static ui:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    .line 742
    const-string v0, "tms_"

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bBZ:Ljava/lang/String;

    .line 744
    const-string v0, "[com.android.internal.telephony.ITelephony]"

    sput-object v0, Lcom/kingroot/kinguser/bmn;->TELEPHONY_SERVICE:Ljava/lang/String;

    .line 746
    const-string v0, "[com.android.internal.telephony.ITelephonyRegistry]"

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCa:Ljava/lang/String;

    .line 748
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;

    return-void
.end method

.method public static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    const-string v0, ""

    .line 833
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 839
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static V()I
    .locals 1

    .prologue
    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static a(Lcom/kingroot/kinguser/bmn$a;)V
    .locals 4

    .prologue
    .line 357
    invoke-static {}, Lcom/kingroot/kinguser/bmu;->aga()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kingroot/kinguser/bmn$a;->bCc:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 360
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bmn$a;->bCc:J

    goto :goto_0
.end method

.method public static afL()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 188
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "ro.mediatek.platform"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string v3, "ro.build.hidden_ver"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "ro.product.model"

    aput-object v3, v2, v1

    .line 194
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 195
    invoke-static {v0}, Lcom/kingroot/kinguser/blq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 201
    :goto_1
    return-object v0

    .line 194
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_1
.end method

.method public static afM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static afN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static afO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static afP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static afQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Lcom/kingroot/kinguser/blm;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static afR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static afS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static afT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    const-string v0, "ro.mediatek.platform"

    invoke-static {v0}, Lcom/kingroot/kinguser/blq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static afU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    monitor-enter v1

    .line 629
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/blm;->b(Ljava/lang/String;)V

    .line 630
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bD(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    :try_start_0
    const-string v0, "phone"

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "00000000000001"

    goto :goto_0
.end method

.method public static bE(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 166
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, ""

    const-string v2, "skipping getSimSerialNumber()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const-string v0, "0000001"

    goto :goto_0
.end method

.method public static bF(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 239
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static bG(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 251
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static bH(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->bD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 662
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 666
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    monitor-enter v1

    .line 668
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/blm;->c(Ljava/lang/String;)V

    .line 669
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static ck()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 756
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 758
    :try_start_0
    const-string v0, "sh"

    const-string v1, "service list"

    new-instance v2, Lcloudsdk/shell/VTCommand;

    const-wide/32 v4, 0x1d4c0

    invoke-direct {v2, v1, v1, v4, v5}, Lcloudsdk/shell/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/lang/String;Lcloudsdk/shell/VTCommand;)Lcloudsdk/shell/VTCmdResult;

    move-result-object v0

    .line 759
    iget-object v0, v0, Lcloudsdk/shell/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 762
    if-eqz v4, :cond_7

    array-length v0, v4

    if-lez v0, :cond_7

    .line 763
    array-length v5, v4

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 764
    sget-object v7, Lcom/kingroot/kinguser/bmn;->bBZ:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 765
    sget-object v7, Lcom/kingroot/kinguser/bmn;->TELEPHONY_SERVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 767
    add-int/lit8 v1, v1, 0x1

    .line 763
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 768
    :cond_1
    sget-object v7, Lcom/kingroot/kinguser/bmn;->bCa:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 772
    :cond_2
    if-gt v1, v8, :cond_3

    if-le v0, v8, :cond_6

    .line 774
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :cond_4
    :goto_2
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 787
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;

    .line 789
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 776
    :cond_6
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 783
    :catch_0
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;

    goto :goto_2

    .line 780
    :cond_7
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bmn;->bCb:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 701
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 705
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    monitor-enter v1

    .line 707
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/blm;->d(Ljava/lang/String;)V

    .line 708
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 596
    sget-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    .line 613
    :goto_0
    return-object v0

    .line 600
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    monitor-enter v1

    .line 601
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    sget-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 605
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/blm;->g()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 608
    sput-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    .line 610
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    sget-object v0, Lcom/kingroot/kinguser/bmn;->ui:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    .line 653
    :goto_0
    return-object v0

    .line 642
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    monitor-enter v1

    .line 643
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 647
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/blm;->h()Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 650
    sput-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    .line 652
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBX:Ljava/lang/String;

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 112
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v1, ""

    const-string v2, "skipping getSubscriberId()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const-string v0, "000000000000001"

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 677
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    .line 692
    :goto_0
    return-object v0

    .line 681
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    monitor-enter v1

    .line 682
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 686
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/blm;->i()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 689
    sput-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    .line 691
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    sget-object v0, Lcom/kingroot/kinguser/bmn;->bBY:Ljava/lang/String;

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    :try_start_0
    const-string v0, "wifi"

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 146
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v1, ""

    const-string v2, "skipping getMacAddress()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    const-string v0, "00:00:00:00:00:01"

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/kingroot/kinguser/blp;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
