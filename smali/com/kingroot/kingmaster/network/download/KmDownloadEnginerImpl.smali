.class public Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;
.super Lcom/kingroot/kinguser/adx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;
    }
.end annotation


# static fields
.field private static final adF:Ljava/lang/Object;

.field private static final adG:Ljava/lang/Object;

.field private static final adK:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

.field private adI:I

.field private adJ:I

.field private adL:Lcom/kingroot/kinguser/bed;

.field private final adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

.field private adN:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adF:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adG:Ljava/lang/Object;

    .line 73
    new-instance v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$1;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adK:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 84
    invoke-direct {p0}, Lcom/kingroot/kinguser/adx;-><init>()V

    .line 64
    new-instance v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    invoke-direct {v0}, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 66
    iput v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adI:I

    .line 71
    iput v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adJ:I

    .line 383
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$2;-><init>(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adL:Lcom/kingroot/kinguser/bed;

    .line 392
    new-instance v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;-><init>(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$1;)V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    .line 451
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$3;-><init>(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adN:Lcom/kingroot/kinguser/bed;

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adL:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 4

    .prologue
    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adI:I

    .line 503
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    iput v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    .line 504
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-wide v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->fileSize:J

    iput-wide v2, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adW:J

    .line 505
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mAppName:Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->mVersionName:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget v1, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    iput v1, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->ads:I

    .line 512
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 517
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 518
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;)Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->ty()Z

    move-result v0

    return v0
.end method

.method private eH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    const-string v0, ""

    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    :goto_0
    return-object v0

    .line 562
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private tA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 578
    invoke-static {}, Lcom/kingroot/kinguser/bgr;->iZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iY()Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/kinguserdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 590
    :cond_0
    :goto_0
    return-object v0

    .line 588
    :cond_1
    const-string v0, "download"

    invoke-static {v0}, Lcom/kingroot/kinguser/zl;->dx(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adK:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    return-object v0
.end method

.method private tv()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tz()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    return-object v0
.end method

.method private declared-synchronized tx()Ljava/lang/String;
    .locals 4

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tA()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kmPlugins.apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v2, "km"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/rs;->A(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 337
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 343
    :cond_2
    const-string v0, "km"

    const-string v2, "kmPlugins.apk"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/rs;->b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kmPlugins.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string v1, "km"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rs;->A(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 362
    :cond_3
    :goto_1
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 358
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private ty()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 460
    iget-object v2, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 494
    :goto_0
    return v0

    .line 465
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 467
    goto :goto_0

    .line 471
    :cond_1
    sget-object v2, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adG:Ljava/lang/Object;

    monitor-enter v2

    .line 472
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 474
    monitor-exit v2

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 478
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    invoke-virtual {v3}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->prepareRunning()V

    .line 479
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v3

    const v4, 0x4c725f

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 482
    iget-object v3, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    :try_start_2
    iget-object v4, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    invoke-virtual {v4}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->isRunning()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    :try_start_3
    iget-object v4, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 489
    :cond_3
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adM:Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;

    invoke-virtual {v4}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->stop()V

    .line 490
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 494
    :try_start_5
    iget-object v3, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 490
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    move v0, v1

    .line 494
    goto :goto_2

    .line 486
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, -0x2

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->d(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 101
    return-void
.end method

.method public c(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->e(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 106
    return-void
.end method

.method public cC(I)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->cF(I)V

    .line 141
    return-void
.end method

.method public cD(I)V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/adx;->cD(I)V

    .line 167
    return-void
.end method

.method public cE(I)V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/adx;->cE(I)V

    .line 177
    return-void
.end method

.method public eF(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->eG(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected eG(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ais;->ge(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 231
    :goto_0
    return v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tw()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 203
    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 208
    const-wide/32 v4, 0xf731400

    .line 211
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->eH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->aea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v6

    .line 220
    goto :goto_0

    :cond_4
    move v0, v7

    .line 224
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    :cond_5
    move v0, v6

    .line 231
    goto :goto_0
.end method

.method public tc()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tH()Z

    move-result v0

    return v0
.end method

.method public td()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tJ()I

    move-result v0

    return v0
.end method

.method public te()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tI()I

    move-result v0

    return v0
.end method

.method public tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tv()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public tg()I
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/kingroot/kinguser/adx;->tg()I

    move-result v0

    return v0
.end method

.method public th()I
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/kingroot/kinguser/adx;->th()I

    move-result v0

    return v0
.end method

.method public ti()I
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adI:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xM()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adI:I

    .line 253
    :cond_0
    iget v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adI:I

    return v0

    .line 251
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public tj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->ty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    return-object v0
.end method

.method public tq()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tC()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public tr()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tD()Z

    move-result v0

    return v0
.end method

.method public ts()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tE()V

    .line 121
    return-void
.end method

.method public tt()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tF()V

    .line 126
    return-void
.end method

.method public tu()V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tG()V

    .line 131
    return-void
.end method

.method public tw()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 270
    sget-object v3, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adF:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_0
    iget v2, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adJ:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 272
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adJ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    const/4 v2, 0x0

    .line 275
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tA()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "kmPlugins.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 276
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 279
    const/4 v4, 0x1

    iput v4, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adJ:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 290
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 291
    :try_start_2
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 295
    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    iget v2, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adJ:I

    if-ne v2, v0, :cond_4

    :goto_2
    return v0

    .line 281
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/zi;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "km"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 284
    const/4 v4, 0x1

    iput v4, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adJ:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v4

    .line 290
    if-eqz v2, :cond_1

    .line 291
    :try_start_4
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_1

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 290
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_3

    .line 291
    :try_start_5
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    move v0, v1

    .line 297
    goto :goto_2
.end method

.method public tz()V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->adN:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 553
    return-void
.end method
