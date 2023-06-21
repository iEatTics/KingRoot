.class public Lcom/kingroot/kinguser/aav;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aav$a;
    }
.end annotation


# static fields
.field private static TELEPHONY_SERVICE:Ljava/lang/String;

.field private static volatile Ya:Ljava/lang/String;

.field private static Yb:Ljava/lang/String;

.field private static volatile Yc:Ljava/lang/String;

.field private static volatile Yd:Ljava/lang/String;

.field private static Ye:Ljava/lang/String;

.field private static Yf:Ljava/lang/String;

.field private static final Yg:Ljava/lang/Object;

.field private static final Yh:Ljava/lang/Object;

.field private static final Yi:Ljava/lang/Object;

.field private static Yj:Ljava/lang/String;

.field private static Yk:Ljava/lang/String;

.field private static volatile Yl:Ljava/lang/Boolean;

.field private static Ym:Ljava/lang/String;

.field private static Yn:I

.field private static final Yo:Ljava/lang/Object;

.field private static Yp:I

.field private static final Yq:Ljava/lang/Object;

.field private static Yr:[B

.field private static Ys:J

.field private static Yt:J

.field private static Yu:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yb:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Ye:Ljava/lang/String;

    .line 86
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yf:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yg:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yh:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yi:Ljava/lang/Object;

    .line 822
    const-string v0, "tms_"

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yj:Ljava/lang/String;

    .line 824
    const-string v0, "[com.android.internal.telephony.ITelephony]"

    sput-object v0, Lcom/kingroot/kinguser/aav;->TELEPHONY_SERVICE:Ljava/lang/String;

    .line 826
    const-string v0, "[com.android.internal.telephony.ITelephonyRegistry]"

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yk:Ljava/lang/String;

    .line 828
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;

    .line 912
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aav;->Ym:Ljava/lang/String;

    .line 1008
    sput v1, Lcom/kingroot/kinguser/aav;->Yn:I

    .line 1009
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yo:Ljava/lang/Object;

    .line 1038
    sput v1, Lcom/kingroot/kinguser/aav;->Yp:I

    .line 1039
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yq:Ljava/lang/Object;

    .line 1235
    const/16 v0, 0x200

    new-array v0, v0, [B

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yr:[B

    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yg:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    .line 133
    const-string v2, "K1"

    sget-object v3, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/zz;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/kingroot/kinguser/aav$a;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 655
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/aav;->a(Ljava/io/File;Lcom/kingroot/kinguser/aav$a;)V

    .line 661
    :goto_0
    return-void

    .line 658
    :cond_0
    iput-wide v2, p0, Lcom/kingroot/kinguser/aav$a;->Yv:J

    .line 659
    iput-wide v2, p0, Lcom/kingroot/kinguser/aav$a;->Yw:J

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Lcom/kingroot/kinguser/aav$a;)V
    .locals 6

    .prologue
    .line 778
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 781
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    iput-wide v4, p1, Lcom/kingroot/kinguser/aav$a;->Yv:J

    .line 782
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/kingroot/kinguser/aav$a;->Yw:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static ae(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-static {p0}, Lcom/kingroot/kinguser/aay;->al(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static af(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-static {p0}, Lcom/kingroot/kinguser/aay;->am(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ag(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 264
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 265
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    :goto_0
    if-nez v0, :cond_0

    .line 271
    const-string v0, "000000000000000"

    .line 274
    :cond_0
    return-object v0

    .line 266
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static ah(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    const-string v1, ""

    .line 305
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 306
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static ai(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 325
    const-string v1, ""

    .line 328
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 329
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 330
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static aj(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    const-string v0, ""

    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/kinguser/aav$a;)V
    .locals 1

    .prologue
    .line 670
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/aav;->a(Ljava/io/File;Lcom/kingroot/kinguser/aav$a;)V

    .line 671
    return-void
.end method

.method private static c([BILjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1242
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1243
    add-int v1, p1, v2

    array-length v3, p0

    if-lt v1, v3, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 1246
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1247
    add-int v3, p1, v1

    aget-byte v3, p0, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1251
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static dI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 914
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ym:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/version"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 916
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->t(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Ym:Ljava/lang/String;

    .line 917
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ym:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 918
    const-string v0, "cat /proc/version"

    .line 919
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 920
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    .line 921
    :cond_0
    const-string v0, ""

    .line 927
    :goto_0
    return-object v0

    .line 923
    :cond_1
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/aav;->Ym:Ljava/lang/String;

    .line 927
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ym:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static dP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    .line 186
    :goto_0
    return-object v0

    .line 168
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yh:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 173
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    .line 174
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "K3"

    :cond_2
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/zz;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    new-instance v0, Lcom/kingroot/kinguser/abn;

    const-string v2, "guid is null"

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/abn;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 183
    sput-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    .line 185
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yc:Ljava/lang/String;

    goto :goto_0
.end method

.method public static dQ(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1419
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1423
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yi:Ljava/lang/Object;

    monitor-enter v1

    .line 1424
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    .line 1425
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    .line 1426
    const-string v2, "K4"

    sget-object v3, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/zz;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e([BI)J
    .locals 4

    .prologue
    const/16 v3, 0x39

    const/16 v2, 0x30

    .line 1255
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 1256
    aget-byte v0, p0, p1

    if-lt v0, v2, :cond_1

    aget-byte v0, p0, p1

    if-gt v0, v3, :cond_1

    .line 1258
    add-int/lit8 v0, p1, 0x1

    .line 1259
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    if-lt v1, v2, :cond_0

    aget-byte v1, p0, v0

    if-gt v1, v3, :cond_0

    .line 1261
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1263
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 1264
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 1268
    :goto_2
    return-wide v0

    .line 1266
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1268
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method public static getGuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    .line 103
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yg:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    .line 109
    const-string v2, "K1"

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/zz;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    sput-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    .line 114
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const-string v0, "common_DeviceInfoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGuid() called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/kingroot/kinguser/aav;->Ya:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getSharkGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, ""

    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->dP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qa()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static qa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static qb()I
    .locals 1

    .prologue
    .line 490
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    return v0
.end method

.method public static qc()I
    .locals 1

    .prologue
    .line 507
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 508
    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static qd()I
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 531
    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static qe()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 836
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    .line 838
    :try_start_0
    const-string v0, "sh"

    const-string v1, "service list"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 839
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 842
    if-eqz v4, :cond_8

    array-length v0, v4

    if-lez v0, :cond_8

    .line 843
    array-length v5, v4

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 844
    sget-object v7, Lcom/kingroot/kinguser/aav;->Yj:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 843
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 846
    :cond_1
    sget-object v7, Lcom/kingroot/kinguser/aav;->TELEPHONY_SERVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 848
    :cond_2
    sget-object v7, Lcom/kingroot/kinguser/aav;->Yk:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 852
    :cond_3
    if-gt v1, v8, :cond_4

    if-le v0, v8, :cond_7

    .line 854
    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :cond_5
    :goto_2
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 867
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;

    .line 869
    :cond_6
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 856
    :cond_7
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 862
    :catch_0
    move-exception v0

    .line 863
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;

    goto :goto_2

    .line 860
    :cond_8
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aav;->Yl:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static qf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static qg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 906
    if-nez v0, :cond_0

    .line 907
    const-string v0, "UNKNOWN"

    .line 909
    :cond_0
    return-object v0
.end method

.method public static qh()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 936
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    const/4 v0, 0x1

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qi()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 963
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    const/4 v0, 0x1

    .line 966
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qj()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 976
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "smartisan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    const/4 v0, 0x1

    .line 979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qk()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 989
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const/4 v0, 0x1

    .line 992
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ql()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1017
    sget-object v2, Lcom/kingroot/kinguser/aav;->Yo:Ljava/lang/Object;

    monitor-enter v2

    .line 1018
    const/4 v3, -0x1

    :try_start_0
    sget v4, Lcom/kingroot/kinguser/aav;->Yn:I

    if-ne v3, v4, :cond_0

    .line 1019
    const-string v3, "ro.miui.ui.version.name"

    invoke-static {v3}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1021
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1022
    const/4 v3, 0x1

    sput v3, Lcom/kingroot/kinguser/aav;->Yn:I

    .line 1034
    :cond_0
    :goto_0
    sget v3, Lcom/kingroot/kinguser/aav;->Yn:I

    if-ne v0, v3, :cond_3

    :goto_1
    monitor-exit v2

    return v0

    .line 1024
    :cond_1
    const-string v3, "ro.miui.ui.version.code"

    invoke-static {v3}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1026
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1027
    const/4 v3, 0x1

    sput v3, Lcom/kingroot/kinguser/aav;->Yn:I

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1029
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    sput v3, Lcom/kingroot/kinguser/aav;->Yn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1034
    goto :goto_1
.end method

.method public static qm()I
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1056
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yq:Ljava/lang/Object;

    monitor-enter v1

    .line 1058
    const/4 v0, -0x1

    :try_start_0
    sget v2, Lcom/kingroot/kinguser/aav;->Yp:I

    if-ne v0, v2, :cond_1

    .line 1059
    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    sget v0, Lcom/kingroot/kinguser/aav;->Yp:I

    monitor-exit v1

    .line 1086
    :goto_0
    return v0

    .line 1064
    :cond_0
    const-string v2, "Flyme OS 3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1065
    const/4 v0, 0x3

    sput v0, Lcom/kingroot/kinguser/aav;->Yp:I

    .line 1086
    :cond_1
    :goto_1
    sget v0, Lcom/kingroot/kinguser/aav;->Yp:I

    monitor-exit v1

    goto :goto_0

    .line 1087
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1066
    :cond_2
    :try_start_1
    const-string v2, "Flyme OS 4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1067
    const/4 v2, 0x4

    sput v2, Lcom/kingroot/kinguser/aav;->Yp:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    :try_start_2
    const-string v2, "Flyme OS 4."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 1071
    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1072
    if-lt v0, v4, :cond_1

    .line 1073
    const/16 v0, 0x2d

    sput v0, Lcom/kingroot/kinguser/aav;->Yp:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1076
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1079
    :cond_3
    :try_start_3
    const-string v2, "Flyme OS 5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1080
    const/4 v0, 0x5

    sput v0, Lcom/kingroot/kinguser/aav;->Yp:I

    goto :goto_1

    .line 1082
    :cond_4
    const/4 v0, 0x0

    sput v0, Lcom/kingroot/kinguser/aav;->Yp:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static qn()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1272
    const/4 v1, 0x0

    .line 1274
    const-wide/16 v4, 0x0

    :try_start_0
    sput-wide v4, Lcom/kingroot/kinguser/aav;->Ys:J

    .line 1275
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/kingroot/kinguser/aav;->Yt:J

    .line 1276
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/kingroot/kinguser/aav;->Yu:J

    .line 1277
    new-instance v0, Ljava/io/FileInputStream;

    const-string v3, "/proc/meminfo"

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    :try_start_1
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yr:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1279
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1280
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yr:[B

    array-length v4, v1

    move v1, v2

    .line 1282
    :goto_0
    if-ge v1, v3, :cond_4

    const/4 v5, 0x3

    if-ge v2, v5, :cond_4

    .line 1283
    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    const-string v6, "MemTotal"

    invoke-static {v5, v1, v6}, Lcom/kingroot/kinguser/aav;->c([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1284
    add-int/lit8 v1, v1, 0x8

    .line 1285
    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    invoke-static {v5, v1}, Lcom/kingroot/kinguser/aav;->e([BI)J

    move-result-wide v6

    sput-wide v6, Lcom/kingroot/kinguser/aav;->Ys:J

    .line 1286
    add-int/lit8 v2, v2, 0x1

    .line 1296
    :cond_0
    :goto_1
    if-ge v1, v4, :cond_3

    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    aget-byte v5, v5, v1

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 1297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1287
    :cond_1
    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    const-string v6, "MemFree"

    invoke-static {v5, v1, v6}, Lcom/kingroot/kinguser/aav;->c([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1288
    add-int/lit8 v1, v1, 0x7

    .line 1289
    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    invoke-static {v5, v1}, Lcom/kingroot/kinguser/aav;->e([BI)J

    move-result-wide v6

    sput-wide v6, Lcom/kingroot/kinguser/aav;->Yt:J

    .line 1290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1291
    :cond_2
    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    const-string v6, "Cached"

    invoke-static {v5, v1, v6}, Lcom/kingroot/kinguser/aav;->c([BILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1292
    add-int/lit8 v1, v1, 0x6

    .line 1293
    sget-object v5, Lcom/kingroot/kinguser/aav;->Yr:[B

    invoke-static {v5, v1}, Lcom/kingroot/kinguser/aav;->e([BI)J

    move-result-wide v6

    sput-wide v6, Lcom/kingroot/kinguser/aav;->Yu:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1282
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    :cond_4
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 1305
    :goto_2
    return-void

    .line 1300
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1303
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_4

    .line 1300
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static qo()J
    .locals 2

    .prologue
    .line 1308
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qn()V

    .line 1309
    sget-wide v0, Lcom/kingroot/kinguser/aav;->Ys:J

    return-wide v0
.end method

.method public static qp()J
    .locals 4

    .prologue
    .line 1313
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qn()V

    .line 1314
    sget-wide v0, Lcom/kingroot/kinguser/aav;->Yt:J

    sget-wide v2, Lcom/kingroot/kinguser/aav;->Yu:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static qq()J
    .locals 2

    .prologue
    .line 1318
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qn()V

    .line 1319
    sget-wide v0, Lcom/kingroot/kinguser/aav;->Yt:J

    return-wide v0
.end method

.method public static qr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1368
    const-string v0, "ro.mediatek.platform"

    invoke-static {v0}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static qs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1377
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static qt()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1394
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1395
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    .line 1410
    :goto_0
    return-object v0

    .line 1398
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aav;->Yi:Ljava/lang/Object;

    monitor-enter v1

    .line 1399
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1400
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1403
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    .line 1404
    const-string v2, "K4"

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/zz;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1407
    sput-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    .line 1409
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1410
    sget-object v0, Lcom/kingroot/kinguser/aav;->Yd:Ljava/lang/String;

    goto :goto_0
.end method
