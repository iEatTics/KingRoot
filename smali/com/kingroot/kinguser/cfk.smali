.class public Lcom/kingroot/kinguser/cfk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfk$b;,
        Lcom/kingroot/kinguser/cfk$a;
    }
.end annotation


# instance fields
.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private bZE:Landroid/os/PowerManager;

.field private ccA:Lcom/kingroot/kinguser/cfk$b;

.field private ccB:Lcom/kingroot/kinguser/ap;

.field private ccC:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ccD:Z

.field private ccE:Ljava/lang/Runnable;

.field private ccz:Lcom/kingroot/kinguser/cfk$a;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfk$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfk;->ccD:Z

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/cfk$1;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfk$1;-><init>(Lcom/kingroot/kinguser/cfk;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/cfk$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cfk$2;-><init>(Lcom/kingroot/kinguser/cfk;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccE:Ljava/lang/Runnable;

    .line 130
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfk;->mIsRunning:Z

    .line 116
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    .line 117
    iput-object p1, p0, Lcom/kingroot/kinguser/cfk;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 118
    iput-object p2, p0, Lcom/kingroot/kinguser/cfk;->ccz:Lcom/kingroot/kinguser/cfk$a;

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->bZE:Landroid/os/PowerManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfk;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->amj()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfk;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfk;->ccD:Z

    return p1
.end method

.method private amj()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 333
    return-void
.end method

.method private static amk()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/an;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/16 v3, 0xf

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    new-instance v1, Lcom/kingroot/kinguser/an;

    invoke-direct {v1}, Lcom/kingroot/kinguser/an;-><init>()V

    .line 404
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/kingroot/kinguser/cfk;->ln(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hv:I

    .line 405
    invoke-static {v4}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hC:I

    .line 406
    const/16 v2, 0x3c

    invoke-static {v2}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hD:I

    .line 407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v1, Lcom/kingroot/kinguser/an;

    invoke-direct {v1}, Lcom/kingroot/kinguser/an;-><init>()V

    .line 410
    const/16 v2, 0x8

    invoke-static {v2}, Lcom/kingroot/kinguser/cfk;->ln(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hv:I

    .line 411
    invoke-static {v3}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hC:I

    .line 412
    invoke-static {v3}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hD:I

    .line 413
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lcom/kingroot/kinguser/an;

    invoke-direct {v1}, Lcom/kingroot/kinguser/an;-><init>()V

    .line 416
    invoke-static {v3}, Lcom/kingroot/kinguser/cfk;->ln(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hv:I

    .line 417
    invoke-static {v4}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hC:I

    .line 418
    const/16 v2, 0x14

    invoke-static {v2}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hD:I

    .line 419
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    return-object v0
.end method

.method private aml()V
    .locals 6

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->amn()Lcom/kingroot/kinguser/an;

    move-result-object v0

    .line 462
    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->amm()V

    .line 470
    const-string v1, "execRule"

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/cfk;->nV(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    iget-object v1, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 473
    iget-object v1, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    const-string v2, "action_keep_alive_close"

    iget v3, v0, Lcom/kingroot/kinguser/an;->hC:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/kingroot/kinguser/cfr;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    const-string v2, "action_keep_alive_cycle"

    iget v3, v0, Lcom/kingroot/kinguser/an;->hC:I

    iget v0, v0, Lcom/kingroot/kinguser/an;->hD:I

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Lcom/kingroot/kinguser/cfr;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method private amm()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    const-string v1, "action_keep_alive_close"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfr;->aa(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    const-string v1, "action_keep_alive_cycle"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfr;->aa(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    return-void
.end method

.method private amn()Lcom/kingroot/kinguser/an;
    .locals 5

    .prologue
    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v2

    .line 504
    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 505
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->amo()I

    move-result v3

    .line 506
    iget-object v0, v2, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 507
    iget-object v0, v2, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/an;

    .line 508
    iget v4, v0, Lcom/kingroot/kinguser/an;->hv:I

    if-gt v4, v3, :cond_0

    .line 511
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :goto_1
    return-object v0

    .line 506
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 515
    :cond_1
    monitor-exit p0

    .line 516
    const/4 v0, 0x0

    goto :goto_1

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private amo()I
    .locals 3

    .prologue
    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfk;)Lcom/kingroot/kinguser/cfk$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccz:Lcom/kingroot/kinguser/cfk$a;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cfk;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->aml()V

    return-void
.end method

.method private static cx(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/an;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 428
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/an;

    iget v0, v0, Lcom/kingroot/kinguser/an;->hv:I

    if-lez v0, :cond_2

    .line 434
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/an;

    .line 435
    new-instance v1, Lcom/kingroot/kinguser/an;

    invoke-direct {v1}, Lcom/kingroot/kinguser/an;-><init>()V

    .line 436
    invoke-static {v3}, Lcom/kingroot/kinguser/cfk;->ln(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/an;->hv:I

    .line 437
    iget v2, v0, Lcom/kingroot/kinguser/an;->hC:I

    iput v2, v1, Lcom/kingroot/kinguser/an;->hC:I

    .line 438
    iget v0, v0, Lcom/kingroot/kinguser/an;->hD:I

    iput v0, v1, Lcom/kingroot/kinguser/an;->hD:I

    .line 439
    invoke-interface {p0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 444
    :cond_2
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/cfk$3;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfk$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static d(Lcom/kingroot/kinguser/ap;)V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 339
    if-nez p0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->cx(Ljava/util/List;)V

    .line 351
    :goto_1
    iget v0, p0, Lcom/kingroot/kinguser/ap;->hX:I

    if-gt v0, v1, :cond_2

    .line 352
    iput v1, p0, Lcom/kingroot/kinguser/ap;->hX:I

    .line 355
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    if-gtz v0, :cond_3

    .line 356
    const/16 v0, 0x12c

    iput v0, p0, Lcom/kingroot/kinguser/ap;->ia:I

    .line 359
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    if-gtz v0, :cond_4

    .line 360
    const/16 v0, 0x78

    iput v0, p0, Lcom/kingroot/kinguser/ap;->ie:I

    .line 363
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    if-gtz v0, :cond_0

    .line 364
    const/16 v0, 0xa

    iput v0, p0, Lcom/kingroot/kinguser/ap;->if:I

    goto :goto_0

    .line 348
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/cfk;->amk()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cfk;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->ccD:Z

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/cfk;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static final lm(I)I
    .locals 1

    .prologue
    .line 557
    mul-int/lit8 v0, p0, 0x3c

    return v0
.end method

.method private static final ln(I)I
    .locals 1

    .prologue
    .line 561
    mul-int/lit8 v0, p0, 0x3c

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->lm(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized amb()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccA:Lcom/kingroot/kinguser/cfk$b;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/cfk$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfk$b;-><init>(Lcom/kingroot/kinguser/cfk;Lcom/kingroot/kinguser/cfk$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccA:Lcom/kingroot/kinguser/cfk$b;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    const-string v1, "action_keep_alive_close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "action_keep_alive_cycle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/cfk;->ccA:Lcom/kingroot/kinguser/cfk$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->mIsRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized amc()V
    .locals 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->amm()V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccA:Lcom/kingroot/kinguser/cfk$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfk;->ccA:Lcom/kingroot/kinguser/cfk$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccA:Lcom/kingroot/kinguser/cfk$b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfk;->ami()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->mIsRunning:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public amg()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public amh()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 227
    return-void
.end method

.method ami()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 318
    if-gtz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccC:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccz:Lcom/kingroot/kinguser/cfk$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/cfk$a;->onClose()V

    .line 322
    :cond_0
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/ap;)V
    .locals 2

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 240
    :cond_0
    monitor-enter p0

    .line 241
    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->bYt:Lcom/kingroot/kinguser/ceu;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ceu;->b(Lcom/kingroot/kinguser/ap;)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->d(Lcom/kingroot/kinguser/ap;)V

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method cQ(J)V
    .locals 5

    .prologue
    .line 292
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v2

    iget v2, v2, Lcom/kingroot/kinguser/ap;->ia:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 293
    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 298
    :goto_0
    monitor-enter p0

    .line 299
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->ccD:Z

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfk;->amj()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfk;->ccD:Z

    .line 304
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/cee;->akW()Lcom/kingroot/kinguser/cee;

    move-result-object v0

    const-string v1, "action_keep_alive_after_send_end"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cee;->nI(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/cee;->akW()Lcom/kingroot/kinguser/cee;

    move-result-object v0

    const-string v1, "action_keep_alive_after_send_end"

    iget-object v2, p0, Lcom/kingroot/kinguser/cfk;->ccE:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/kingroot/kinguser/cee;->a(Ljava/lang/String;JLjava/lang/Runnable;)V

    .line 310
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-wide p1, v0

    goto :goto_0
.end method

.method public fD()Lcom/kingroot/kinguser/ap;
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fK()Lcom/kingroot/kinguser/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->d(Lcom/kingroot/kinguser/ap;)V

    .line 212
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    return-object v0

    .line 196
    :cond_1
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/ap;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/kingroot/kinguser/ap;->hX:I

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/16 v1, 0x1e

    iput v1, v0, Lcom/kingroot/kinguser/ap;->ia:I

    .line 204
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/kingroot/kinguser/ap;->hY:Ljava/util/ArrayList;

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    invoke-static {}, Lcom/kingroot/kinguser/cfk;->amk()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/ap;->hZ:Ljava/util/ArrayList;

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/ap;->ib:Z

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/ap;->ic:Z

    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/16 v1, 0x78

    iput v1, v0, Lcom/kingroot/kinguser/ap;->ie:I

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/16 v1, 0xa

    iput v1, v0, Lcom/kingroot/kinguser/ap;->if:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 201
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/16 v1, 0x10e

    iput v1, v0, Lcom/kingroot/kinguser/ap;->hX:I

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk;->ccB:Lcom/kingroot/kinguser/ap;

    const/16 v1, 0x12c

    iput v1, v0, Lcom/kingroot/kinguser/ap;->ia:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method nV(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v3

    .line 255
    if-nez v3, :cond_0

    .line 283
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-boolean v2, v3, Lcom/kingroot/kinguser/ap;->ib:Z

    if-nez v2, :cond_4

    sget-object v2, Lshark/a;->bXd:Lshark/a;

    invoke-static {}, Lcom/kingroot/kinguser/cgr;->anb()Lshark/a;

    move-result-object v4

    if-eq v2, v4, :cond_4

    move v2, v1

    .line 265
    :goto_1
    if-eqz v2, :cond_3

    .line 266
    iget-boolean v3, v3, Lcom/kingroot/kinguser/ap;->ic:Z

    if-nez v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/kingroot/kinguser/cfk;->bZE:Landroid/os/PowerManager;

    if-eqz v3, :cond_2

    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/cfk;->bZE:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 276
    :goto_2
    if-eqz v0, :cond_3

    :goto_3
    move v0, v1

    .line 283
    goto :goto_0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move v2, v0

    goto :goto_1
.end method
