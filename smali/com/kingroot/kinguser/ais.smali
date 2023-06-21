.class public Lcom/kingroot/kinguser/ais;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile asn:Lcom/kingroot/kinguser/ais;


# instance fields
.field private adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

.field private adL:Lcom/kingroot/kinguser/bed;

.field private aso:Lcom/kingroot/kinguser/bed;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 132
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/ais$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/ais$1;-><init>(Lcom/kingroot/kinguser/ais;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->adL:Lcom/kingroot/kinguser/bed;

    .line 676
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/ais$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/ais$2;-><init>(Lcom/kingroot/kinguser/ais;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->aso:Lcom/kingroot/kinguser/bed;

    .line 109
    return-void
.end method

.method private B(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 490
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    const-string v2, "191240FCB048127DB9110D1B30537FDE"

    const-string v3, "com.kingroot.master"

    invoke-virtual {v1, p1, v2, v3}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 492
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    const-string v2, "DA78C454E6850DB1C07117C9B6DA529D"

    const-string v3, "com.kingstudio.purify"

    invoke-virtual {v1, p1, v2, v3}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ais;Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;)Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ais;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ais;->gd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ais;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ais;->r(Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized a(ILjava/lang/String;Z)Z
    .locals 11

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 418
    :goto_0
    monitor-exit p0

    return v0

    .line 338
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 341
    const/4 v1, 0x0

    .line 342
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 343
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "kmPlugins.apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    const-string v2, ".zip"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 346
    const/4 v1, 0x1

    .line 347
    invoke-direct {p0, v3, v0}, Lcom/kingroot/kinguser/ais;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 349
    const/4 v0, 0x0

    move-object v2, v3

    move v4, v0

    .line 354
    :goto_1
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ais;->B(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/kingroot/kinguser/ais;->c(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v0

    iget v5, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 365
    packed-switch v5, :pswitch_data_0

    .line 378
    const/4 v0, 0x2

    .line 381
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ais;->gd(Ljava/lang/String;)V

    move v1, v0

    .line 385
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tg()I

    move-result v6

    .line 386
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->th()I

    move-result v0

    .line 388
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x4

    .line 389
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    .line 391
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v1, 0x3

    const/4 v9, 0x5

    if-ne v6, v9, :cond_5

    .line 392
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v1, 0x4

    .line 394
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v1

    .line 388
    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    .line 397
    if-eqz v5, :cond_2

    const/4 v0, 0x1

    if-ne v5, v0, :cond_7

    .line 399
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tj()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 401
    if-nez v5, :cond_4

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 408
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bE(Z)V

    .line 409
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 367
    :pswitch_0
    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v1, p1}, Lcom/kingroot/kinguser/ais;->r(Ljava/lang/String;I)V

    move v1, v0

    .line 371
    goto/16 :goto_2

    .line 373
    :pswitch_1
    const/4 v0, 0x3

    .line 375
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v6

    iget-object v7, p0, Lcom/kingroot/kinguser/ais;->aso:Lcom/kingroot/kinguser/bed;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    move v1, v0

    .line 376
    goto/16 :goto_2

    .line 391
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 394
    :cond_6
    const/4 v0, 0x2

    goto :goto_4

    .line 411
    :cond_7
    if-eqz v4, :cond_8

    .line 412
    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/ais;->a(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    :cond_8
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_5

    :cond_9
    move-object v2, v0

    move v4, v1

    goto/16 :goto_1

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 426
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/io/File;I)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiv;->gk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/akk;->AO()Lcom/kingroot/kinguser/akq;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v3

    invoke-interface {v2, v0, v1, p2, v3}, Lcom/kingroot/kinguser/akq;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_0
.end method

.method private gd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/akk;->AO()Lcom/kingroot/kinguser/akq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/akq;->gJ(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private r(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, 0x0

    .line 313
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {}, Lcom/kingroot/kinguser/akk;->AO()Lcom/kingroot/kinguser/akq;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/kingroot/kinguser/akq;->a(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static ye()Lcom/kingroot/kinguser/ais;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/kingroot/kinguser/ais;->asn:Lcom/kingroot/kinguser/ais;

    if-nez v0, :cond_1

    .line 118
    const-class v1, Lcom/kingroot/kinguser/ais;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ais;->asn:Lcom/kingroot/kinguser/ais;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/kingroot/kinguser/ais;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ais;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ais;->asn:Lcom/kingroot/kinguser/ais;

    .line 122
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ais;->asn:Lcom/kingroot/kinguser/ais;

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static yh()V
    .locals 1

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static yi()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x5

    const/4 v2, 0x1

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yl()Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.kingroot.master.intent.action.EXCHANGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v0, "km_exchange_code"

    const v5, 0x10000004

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v0, "result_show_type"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->cf(Z)V

    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sA()V

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tg()I

    move-result v4

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->th()I

    move-result v0

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 216
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x3

    if-ne v4, v8, :cond_1

    .line 219
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v1, 0x4

    .line 221
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    .line 215
    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    .line 225
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0

    :cond_2
    move v0, v3

    .line 221
    goto :goto_1
.end method

.method private yk()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 437
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 438
    const-string v2, "com.kingroot.master"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    const-string v2, "com.kingstudio.purify"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yp()Z
    .locals 2

    .prologue
    .line 669
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dB(I)Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tg()I

    move-result v4

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->th()I

    move-result v0

    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 278
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    if-ne v4, v9, :cond_0

    .line 281
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v7, 0x4

    .line 283
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    .line 277
    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    .line 287
    if-eq v4, v2, :cond_2

    .line 288
    :goto_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ais;->yj()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lcom/kingroot/kinguser/ais;->a(ILjava/lang/String;Z)Z

    move-result v1

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    if-eqz v1, :cond_3

    const v0, 0x18757

    :goto_3
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 294
    return v1

    :cond_0
    move v0, v1

    .line 280
    goto :goto_0

    :cond_1
    move v0, v3

    .line 283
    goto :goto_1

    :cond_2
    move v2, v1

    .line 287
    goto :goto_2

    .line 291
    :cond_3
    const v0, 0x18758

    goto :goto_3
.end method

.method public ge(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 559
    .line 561
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 563
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/kingroot/kinguser/zh;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 564
    if-eqz v1, :cond_0

    .line 566
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adw;->ti()I

    move-result v2

    if-nez v2, :cond_1

    .line 567
    const-string v2, "com.kingroot.master"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 576
    :cond_0
    :goto_0
    return v0

    .line 569
    :cond_1
    const-string v2, "com.kingstudio.purify"

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 572
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ais;->adL:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 130
    return-void
.end method

.method public s(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 527
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    :goto_0
    return v0

    .line 535
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 536
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 535
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    const/4 v0, 0x1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    goto :goto_0

    .line 539
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public un()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-nez v0, :cond_0

    .line 606
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 607
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-nez v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adX:I

    goto :goto_0
.end method

.method public yf()Z
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/kingroot/kinguser/ais;->yk()Z

    move-result v0

    .line 160
    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->bE(Z)V

    .line 164
    :cond_0
    return v0
.end method

.method public yg()Z
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v0

    goto :goto_0
.end method

.method public yj()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tj()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ais;->ge(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :goto_0
    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ais;->B(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kmPlugins.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public yl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 462
    const-string v1, "com.kingroot.master"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    const-string v0, "com.kingroot.master"

    .line 480
    :goto_0
    return-object v0

    .line 464
    :cond_0
    const-string v1, "com.kingstudio.purify"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    const-string v0, "com.kingstudio.purify"

    goto :goto_0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-nez v0, :cond_2

    .line 469
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    :cond_3
    const-string v0, "com.kingroot.master"

    goto :goto_0

    .line 480
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adZ:Ljava/lang/String;

    goto :goto_0
.end method

.method public ym()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 509
    :cond_2
    const-string v0, ""

    .line 513
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adY:Ljava/lang/String;

    goto :goto_0
.end method

.method public yn()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 581
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 582
    const-string v3, "com.kingroot.master"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 584
    :cond_1
    const-string v3, "com.kingstudio.purify"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 585
    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ais;->yl()Ljava/lang/String;

    move-result-object v2

    .line 588
    const-string v3, "com.kingstudio.purify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 589
    goto :goto_0
.end method

.method public yo()J
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-nez v0, :cond_0

    .line 622
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    .line 623
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    if-nez v0, :cond_0

    .line 624
    const-wide/16 v0, 0x0

    .line 628
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ais;->adH:Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    iget-wide v0, v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;->adW:J

    goto :goto_0
.end method
