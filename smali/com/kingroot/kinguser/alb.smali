.class public Lcom/kingroot/kinguser/alb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static avO:Lcom/kingroot/kinguser/alb;

.field private static avP:Lcom/kingroot/kinguser/bed;


# instance fields
.field private mInjectStateCallback:Lcom/kingroot/kinguser/bhn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/alb;->avO:Lcom/kingroot/kinguser/alb;

    .line 248
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/alb$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/alb$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/alb;->avP:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/kingroot/kinguser/alb$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alb$2;-><init>(Lcom/kingroot/kinguser/alb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alb;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    .line 111
    return-void
.end method

.method public static declared-synchronized GK()Lcom/kingroot/kinguser/alb;
    .locals 2

    .prologue
    .line 104
    const-class v1, Lcom/kingroot/kinguser/alb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/alb;->avO:Lcom/kingroot/kinguser/alb;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/alb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alb;->avO:Lcom/kingroot/kinguser/alb;

    .line 107
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/alb;->avO:Lcom/kingroot/kinguser/alb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private GL()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "ku.pService.dr"

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->dL(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    const-string v1, "ku.pService.dr"

    .line 119
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Stub;->asInterface(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;->setServiceEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private GM()Lcom/kingroot/kinguser/agq;
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    const-string v1, "kinguser_9"

    invoke-static {v1}, Lcom/kingroot/kinguser/ago;->fy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aan;->dL(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    invoke-static {v1}, Lcom/kingroot/kinguser/agq$b;->i(Landroid/os/IBinder;)Lcom/kingroot/kinguser/agq;

    move-result-object v0

    .line 138
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alb;)Lcom/kingroot/kinguser/agq;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 360
    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iO(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iO(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 363
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iO(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 364
    const/4 v0, 0x2

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iO(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 365
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iP(I)Ljava/lang/String;

    move-result-object v5

    .line 366
    const/16 v0, 0x3e6

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iP(I)Ljava/lang/String;

    move-result-object v6

    .line 367
    const/16 v0, 0x3e5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iP(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const-string v4, ""

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/ady;->a(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/alb;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    return-void
.end method

.method private static e(Lcom/kingroot/kinguser/util/protect/RebootStat;)I
    .locals 10

    .prologue
    .line 514
    new-instance v0, Lcom/kingroot/kinguser/um;

    const-string v1, "system_server"

    const-string v2, "hk"

    const-string v3, "m.M"

    const-string v4, "m"

    .line 516
    invoke-static {}, Lcom/kingroot/kinguser/alb;->wg()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/kingroot/kinguser/agk;->amQ:Ljava/lang/String;

    const-string v7, "com.kingroot.hook"

    const-string v8, "kinguser_9"

    sget-object v9, Lcom/kingroot/kinguser/agk;->amR:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/um;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v1, 0x0

    .line 521
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/un;->a(Lcom/kingroot/kinguser/um;)Lcom/kingroot/kinguser/ho;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    :goto_0
    if-eqz v0, :cond_0

    .line 527
    const/16 v1, 0x3e7

    invoke-interface {v0}, Lcom/kingroot/kinguser/ho;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 529
    invoke-interface {v0}, Lcom/kingroot/kinguser/ho;->be()I

    move-result v0

    .line 531
    :goto_1
    return v0

    .line 522
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 531
    :cond_0
    const/16 v0, -0x3e6

    goto :goto_1
.end method

.method public static fb(I)V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/alb;->avP:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 246
    return-void
.end method

.method private static wg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Lcom/kingroot/kinguser/agm;->vR()Lcom/kingroot/kinguser/agm;

    move-result-object v1

    .line 538
    sget-object v0, Lcom/kingroot/kinguser/agk;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->ft(Ljava/lang/String;)V

    .line 539
    const-string v0, "kinguser_9"

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->J(Ljava/lang/String;)V

    .line 540
    const-string v0, "6B696E676D61737465725F776F64"

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->fu(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->fv(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->setChannel(Ljava/lang/String;)V

    .line 543
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->aE(Z)V

    .line 544
    invoke-virtual {v1}, Lcom/kingroot/kinguser/agm;->vS()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1b7740

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->dd(I)V

    .line 545
    const-string v0, "191240FCB048127DB9110D1B30537FDE"

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/agm;->fx(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Lcom/kingroot/kinguser/agm;->vT()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 544
    :cond_0
    invoke-virtual {v1}, Lcom/kingroot/kinguser/agm;->vS()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public af(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agq;->af(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 220
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fc(I)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dmd5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 393
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GL()V

    .line 396
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agr;->vX()Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/alb;->wg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/agr;->F(ILjava/lang/String;)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/alb;->setServiceEnable(Z)V

    .line 403
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    const-string v2, "package"

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/agr;->fA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 509
    :goto_0
    return v0

    .line 407
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agr;->fz(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/alb;->setServiceEnable(Z)V

    .line 415
    if-eq p1, v8, :cond_2

    .line 416
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cx()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 417
    goto :goto_0

    .line 422
    :cond_2
    const-string v0, "system_server"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v5

    .line 425
    iget-object v0, p0, Lcom/kingroot/kinguser/alb;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    invoke-static {v5, v0}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 428
    if-eq p1, v8, :cond_4

    .line 429
    iget v0, v5, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    if-ge v0, v8, :cond_3

    iget v0, v5, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_4

    .line 431
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bn(Z)V

    move v0, v2

    .line 432
    goto :goto_0

    .line 437
    :cond_4
    const/4 v0, 0x0

    .line 440
    const/16 v3, 0x3e5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 443
    const/16 v3, 0x8

    const-string v4, "0"

    invoke-static {v5, v3, v4}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 446
    invoke-static {v5}, Lcom/kingroot/kinguser/alb;->e(Lcom/kingroot/kinguser/util/protect/RebootStat;)I

    move-result v3

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v1, v4}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 452
    if-eqz v3, :cond_5

    if-ne v3, v1, :cond_6

    .line 471
    :cond_5
    const-wide/16 v6, 0x2710

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 477
    :goto_1
    const-string v3, "0"

    invoke-static {v5, v8, v3}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 482
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    move v3, v2

    .line 483
    :goto_2
    if-nez v0, :cond_7

    add-int/lit8 v4, v3, 0x1

    const/4 v6, 0x5

    if-ge v3, v6, :cond_7

    .line 484
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 485
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move v3, v4

    goto :goto_2

    .line 457
    :cond_6
    const-wide/16 v0, 0x2710

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/alb;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    invoke-static {v5, v0}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    move v0, v2

    .line 466
    goto/16 :goto_0

    .line 487
    :catch_0
    move-exception v3

    .line 492
    :cond_7
    const/4 v3, 0x3

    const-string v4, "0"

    invoke-static {v5, v3, v4}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 494
    if-nez v0, :cond_8

    .line 496
    iget-object v0, p0, Lcom/kingroot/kinguser/alb;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    invoke-static {v5, v0}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    move v0, v2

    .line 497
    goto/16 :goto_0

    .line 500
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/alb;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    invoke-static {v5, v0}, Lcom/kingroot/kinguser/bho;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 502
    if-ne p1, v8, :cond_9

    .line 504
    invoke-static {v5}, Lcom/kingroot/kinguser/bho;->f(Lcom/kingroot/kinguser/util/protect/RebootStat;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    .line 505
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bn(Z)V

    .line 506
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bo(Z)V

    :cond_9
    move v0, v1

    .line 509
    goto/16 :goto_0

    .line 458
    :catch_1
    move-exception v0

    goto :goto_3

    .line 472
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public removeProtectedPackage(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agq;->removeProtectedPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    :goto_0
    return v0

    .line 232
    :catch_0
    move-exception v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServiceEnable(Z)V
    .locals 1

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agq;->setServiceEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public syncMonitorPackages(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agq;->syncMonitorPackages(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncProtectPackages(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/alb;->GM()Lcom/kingroot/kinguser/agq;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/agq;->syncProtectPackages(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :goto_0
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
