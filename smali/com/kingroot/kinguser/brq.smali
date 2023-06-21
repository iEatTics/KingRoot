.class public Lcom/kingroot/kinguser/brq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/brq$a;,
        Lcom/kingroot/kinguser/brq$b;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private bKn:Lcom/kingroot/kinguser/brn;

.field private bKo:Lcom/kingroot/kinguser/brm;

.field private final bKp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsp;",
            ">;>;"
        }
    .end annotation
.end field

.field private bKq:Lcom/kingroot/kinguser/brz;

.field private final bKr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bKs:Landroid/util/SparseBooleanArray;

.field private bKt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/brq$b;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "CacheMgr"

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKs:Landroid/util/SparseBooleanArray;

    .line 947
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKt:Ljava/util/Map;

    .line 52
    const-string v0, "CacheMgr()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/kingroot/kinguser/brn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brn;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKn:Lcom/kingroot/kinguser/brn;

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/brm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brm;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    .line 56
    new-instance v0, Lcom/kingroot/kinguser/brz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brz;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKq:Lcom/kingroot/kinguser/brz;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brz;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKq:Lcom/kingroot/kinguser/brz;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/brq;->b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/brq;->b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    return-void
.end method

.method private a(Lcom/tencent/qqpim/discovery/AdRequestData;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readDbAds() begin"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 464
    const/4 v1, 0x0

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u67e5\u6570\u636e\u5e93|\u5e7f\u544a\u4f4d="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahK()Lcom/kingroot/kinguser/bsd;

    move-result-object v0

    iget v2, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    .line 474
    iget-object v3, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bsd;->j(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Add data to mAdData:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 501
    iget-object v4, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    monitor-enter v4

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    iget v5, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 503
    if-nez v0, :cond_6

    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    iget v5, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 501
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 513
    const-string v0, "\u67e5\u627e\u5e7f\u544a\u6570\u636e\u5e93  End"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 515
    invoke-static {v1}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahK()Lcom/kingroot/kinguser/bsd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bsd;->cm(Ljava/util/List;)V

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readDbAds() end"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 519
    return-void

    .line 477
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 478
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bso;->ahH()Z

    move-result v5

    if-nez v5, :cond_4

    .line 479
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bso;->ahX()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    iget-object v5, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_2
    if-nez v1, :cond_3

    .line 485
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 487
    :cond_3
    iget-object v0, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 492
    :cond_4
    if-nez v1, :cond_5

    .line 493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    :cond_5
    iget-object v0, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 506
    :cond_6
    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 510
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 511
    iget-object v3, p0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/brm;->a(Lcom/kingroot/kinguser/bso;)V

    goto :goto_2
.end method

.method private a(Lcom/tencent/qqpim/discovery/AdRequestData;IIJ)V
    .locals 6

    .prologue
    .line 694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "featureReport() src.positionId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " src.advNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    iget v3, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detnum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorcode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 695
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lcom/kingroot/kinguser/brw;->ahO()Lcom/kingroot/kinguser/brw;

    move-result-object v2

    .line 734
    const v3, 0x40951

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 734
    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/brw;->c(ILjava/lang/String;I)V

    .line 736
    return-void
.end method

.method private a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpim/discovery/AdRequestData;",
            "Lcom/kingroot/kinguser/brq$b;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 529
    const-string v0, "retAssignedAData() begin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 531
    const-string v0, "\u586b\u5145\u5e7f\u544a\u6570\u636e  Begin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 534
    if-eqz p3, :cond_c

    .line 537
    iget v0, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 538
    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 539
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 563
    :goto_1
    const-string v0, "\u586b\u5145\u5e7f\u544a\u6570\u636e   End"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 564
    iget-object v0, p2, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget v3, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 566
    invoke-static {v2}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 567
    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    const/4 v0, 0x4

    if-ne v3, v0, :cond_8

    .line 568
    :cond_1
    const/4 v0, 0x1

    move v5, v0

    .line 576
    :goto_2
    iget-object v6, p0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    monitor-enter v6

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    iget-object v7, p2, Lcom/kingroot/kinguser/brq$b;->bKG:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKt:Ljava/util/Map;

    iget-object v7, p2, Lcom/kingroot/kinguser/brq$b;->bKG:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    iget-object v0, p2, Lcom/kingroot/kinguser/brq$b;->bKJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 585
    invoke-static {v1}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 586
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/brq;->cc(Ljava/util/List;)V

    .line 589
    :cond_2
    if-nez v2, :cond_b

    move v2, v4

    :goto_4
    iget-wide v4, p2, Lcom/kingroot/kinguser/brq$b;->starttime:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;IIJ)V

    .line 590
    const-string v0, "retAssignedAData() End"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKq:Lcom/kingroot/kinguser/brz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brz;->ahQ()V

    .line 595
    :cond_3
    return-void

    .line 541
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 542
    iget-boolean v5, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    if-eqz v5, :cond_6

    .line 543
    iget-object v5, p2, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget v6, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 544
    iget-object v5, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/brq;->f(Lcom/kingroot/kinguser/bsp;)Z

    move-result v5

    .line 545
    if-nez v5, :cond_6

    .line 546
    if-nez v1, :cond_5

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    :cond_5
    iget-object v0, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 553
    :cond_6
    iget-boolean v5, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    if-nez v5, :cond_7

    .line 554
    iget-object v5, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v5, v5, Lcom/kingroot/kinguser/bsp;->bJB:I

    int-to-long v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    .line 557
    :cond_7
    iget-object v5, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/brq;->d(Lcom/kingroot/kinguser/bsp;)Lcom/tencent/qqpim/discovery/AdDisplayModel;

    move-result-object v5

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u586b\u5145-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 570
    :cond_8
    const/4 v0, 0x2

    move v5, v0

    .line 572
    goto/16 :goto_2

    :cond_9
    move v5, v3

    move v3, v4

    .line 573
    goto/16 :goto_2

    .line 576
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 581
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brq$a;

    .line 582
    invoke-interface {v0, v5, v2}, Lcom/kingroot/kinguser/brq$a;->i(ILjava/util/List;)V

    goto/16 :goto_3

    .line 589
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto/16 :goto_4

    :cond_c
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "readCachFlow() begin AdRequestData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " forceupdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKs:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKs:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/brm;->ke(I)Ljava/util/List;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    if-eqz p3, :cond_3

    .line 188
    iget v0, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bro;->kg(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/brq$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/brq$4;-><init>(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    .line 204
    const-wide/16 v2, 0x3e8

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Lcom/kingroot/kinguser/brq;->b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p2, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/brq;->b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brq;Lcom/kingroot/kinguser/bsp;)Z
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brq;->e(Lcom/kingroot/kinguser/bsp;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/brq;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    return-void
.end method

.method private b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V
    .locals 16

    .prologue
    .line 603
    const-string v2, "retValideAData() begin"

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 604
    const-string v2, "\u586b\u5145\u5e7f\u544a\u6570\u636e  Begin"

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 610
    const/4 v3, 0x0

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/brm;->ke(I)Ljava/util/List;

    move-result-object v4

    .line 612
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    monitor-enter v5

    .line 613
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 614
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 617
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v3

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 612
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    const-string v2, "\u586b\u5145\u5e7f\u544a\u6570\u636e   End"

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 656
    invoke-static {v7}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 657
    const/4 v2, 0x3

    if-eq v5, v2, :cond_1

    const/4 v2, 0x4

    if-ne v5, v2, :cond_9

    .line 658
    :cond_1
    const/4 v2, 0x1

    move v3, v2

    .line 666
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    monitor-enter v4

    .line 667
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/kingroot/kinguser/brq$b;->bKG:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/brq;->bKt:Ljava/util/Map;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/kingroot/kinguser/brq$b;->bKG:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 671
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/kingroot/kinguser/brq$b;->bKJ:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 675
    invoke-static {v6}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 676
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/kingroot/kinguser/brq;->cc(Ljava/util/List;)V

    .line 679
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/kingroot/kinguser/brq$b;->starttime:J

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;IIJ)V

    .line 680
    const-string v2, "retValideAData() End"

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/brq;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/btf;->S(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/brq;->bKq:Lcom/kingroot/kinguser/brz;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/brz;->ahQ()V

    .line 685
    :cond_3
    return-void

    .line 617
    :cond_4
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 618
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/bsp;

    .line 619
    iget-object v10, v4, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 620
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJO:Z

    if-eqz v10, :cond_6

    .line 621
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 622
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/brq;->f(Lcom/kingroot/kinguser/bsp;)Z

    move-result v10

    .line 623
    if-nez v10, :cond_6

    .line 624
    if-nez v6, :cond_c

    .line 625
    new-instance v3, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v3

    .line 628
    goto/16 :goto_0

    .line 631
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJP:Z

    if-nez v10, :cond_7

    .line 632
    iget v10, v4, Lcom/kingroot/kinguser/bsp;->bJB:I

    int-to-long v10, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    .line 635
    :cond_7
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    if-eqz v10, :cond_8

    .line 636
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 637
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    iget v11, v4, Lcom/kingroot/kinguser/bsp;->bJq:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 638
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/kingroot/kinguser/brq;->d(Lcom/kingroot/kinguser/bsp;)Lcom/tencent/qqpim/discovery/AdDisplayModel;

    move-result-object v10

    .line 639
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u586b\u5145-"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 640
    if-eqz v10, :cond_5

    .line 641
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 612
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 660
    :cond_9
    const/4 v2, 0x2

    move v3, v2

    .line 662
    goto/16 :goto_1

    .line 663
    :cond_a
    const/4 v2, 0x0

    move v3, v5

    move v5, v2

    goto/16 :goto_1

    .line 666
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 671
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/brq$a;

    .line 672
    invoke-interface {v2, v3, v7}, Lcom/kingroot/kinguser/brq$a;->i(ILjava/util/List;)V

    goto/16 :goto_2

    :cond_c
    move-object v3, v6

    goto :goto_3
.end method

.method private b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 228
    if-nez p3, :cond_0

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKs:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;)V

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKs:Landroid/util/SparseBooleanArray;

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forceUpateFlow() begin AdRequestData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/kingroot/kinguser/brq$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/brq$5;-><init>(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V

    iput-object v0, p2, Lcom/kingroot/kinguser/brq$b;->bKK:Lcom/kingroot/kinguser/brn$a;

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKn:Lcom/kingroot/kinguser/brn;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/brn;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    .line 330
    invoke-static {}, Lcom/kingroot/kinguser/brw;->ahO()Lcom/kingroot/kinguser/brw;

    move-result-object v0

    .line 331
    const v1, 0x409b3

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v0, v1, v2, v4}, Lcom/kingroot/kinguser/brw;->c(ILjava/lang/String;I)V

    .line 333
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/brq;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    return-object v0
.end method

.method private cc(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 892
    invoke-static {p1}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    :cond_0
    return-void

    .line 895
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    invoke-static {}, Lcom/kingroot/kinguser/bsn;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 897
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QQSecureDownload/discovery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/kingroot/kinguser/bsp;

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "autoloadPic() model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 900
    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 901
    invoke-static {}, Lcom/kingroot/kinguser/bsh;->ahR()Lcom/kingroot/kinguser/bsh;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    iget-object v3, v7, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    iget-object v4, v7, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    const-string v10, "ck="

    invoke-static {v4, v10}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 901
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bsh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imageUrl1_md5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 905
    :cond_3
    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 906
    invoke-static {}, Lcom/kingroot/kinguser/bsh;->ahR()Lcom/kingroot/kinguser/bsh;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 907
    iget-object v3, v7, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    iget-object v4, v7, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    const-string v10, "ck="

    invoke-static {v4, v10}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 906
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bsh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imageUrl2_md5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 910
    :cond_4
    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 911
    invoke-static {}, Lcom/kingroot/kinguser/bsh;->ahR()Lcom/kingroot/kinguser/bsh;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    iget-object v3, v7, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    iget-object v4, v7, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    const-string v10, "ck="

    invoke-static {v4, v10}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 911
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bsh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imageUrl3_md5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 915
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/bsl;->ahV()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 916
    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 917
    invoke-static {}, Lcom/kingroot/kinguser/bsh;->ahR()Lcom/kingroot/kinguser/bsh;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 918
    iget-object v3, v7, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    iget-object v4, v7, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    const-string v10, "ck="

    invoke-static {v4, v10}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 917
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bsh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "videoUrl_md5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 921
    :cond_6
    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    invoke-static {}, Lcom/kingroot/kinguser/bsh;->ahR()Lcom/kingroot/kinguser/bsh;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 923
    iget-object v3, v7, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    iget-object v4, v7, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    const-string v10, "ck="

    invoke-static {v4, v10}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/bsh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kingroot/kinguser/bsh$a;)V

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zipUrl_md5="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 927
    :cond_7
    const-string v0, "\u65e0\u53ef\u7528WiFi!!"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brm;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/bsp;)Lcom/tencent/qqpim/discovery/AdDisplayModel;
    .locals 4

    .prologue
    .line 743
    new-instance v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    invoke-direct {v1}, Lcom/tencent/qqpim/discovery/AdDisplayModel;-><init>()V

    .line 744
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    .line 745
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    .line 746
    iget-boolean v0, p1, Lcom/kingroot/kinguser/bsp;->bLW:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJo:I

    .line 747
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJA:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJA:I

    .line 748
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJy:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJy:I

    .line 749
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJz:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJz:Ljava/lang/String;

    .line 750
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJq:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJq:I

    .line 751
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJr:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJr:Ljava/lang/String;

    .line 752
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJs:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJs:Ljava/lang/String;

    .line 753
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJt:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJt:Ljava/lang/String;

    .line 754
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJu:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJu:Ljava/lang/String;

    .line 755
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJv:Ljava/lang/String;

    .line 756
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJw:Ljava/lang/String;

    .line 757
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJx:Ljava/lang/String;

    .line 758
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->videoUrl:Ljava/lang/String;

    .line 759
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJJ:Ljava/lang/String;

    .line 760
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJB:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJB:I

    .line 761
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJC:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJC:I

    .line 762
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJD:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJD:I

    .line 763
    iget v0, p1, Lcom/kingroot/kinguser/bsp;->bJE:I

    iput v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJE:I

    .line 764
    iget-wide v2, p1, Lcom/kingroot/kinguser/bsp;->bJG:J

    iput-wide v2, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJG:J

    .line 765
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJH:Ljava/lang/String;

    .line 768
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 769
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJI:Ljava/lang/String;

    .line 771
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 772
    iget-object v0, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    const-string v2, "ck="

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/btf;->aX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJK:Ljava/lang/String;

    .line 775
    :cond_2
    return-object v1

    .line 746
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/brq;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private e(Lcom/kingroot/kinguser/bsp;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 787
    iget v1, p1, Lcom/kingroot/kinguser/bsp;->bKb:I

    if-ge v1, v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u5e7f\u544a\u65f6\u95f4\u8fc7\u671f,\u8bf7\u8c03\u6574\u624b\u673a\u672c\u5730\u65f6\u95f4\u4e3a\u5317\u4eac\u65f6\u95f4\uff01\uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->aG(Ljava/lang/String;)V

    move v0, v2

    .line 812
    :goto_0
    return v0

    .line 792
    :cond_0
    const/4 v3, 0x1

    .line 794
    iget-object v4, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    monitor-enter v4

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    iget v1, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 796
    if-nez v0, :cond_3

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 798
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    iget v5, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 802
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    .line 810
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    monitor-exit v4

    move v0, v3

    .line 812
    goto :goto_0

    .line 803
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsp;

    .line 804
    iget-object v5, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 807
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private f(Lcom/kingroot/kinguser/bsp;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    invoke-static {}, Lcom/kingroot/kinguser/bsn;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 855
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "QQSecureDownload/discovery"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const/4 v0, 0x1

    .line 857
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 858
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 860
    if-nez v2, :cond_0

    move v0, v1

    .line 861
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "imageUrl1:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_9

    const-string v2, "prepared"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 863
    :cond_1
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 864
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 866
    if-nez v2, :cond_2

    move v0, v1

    .line 867
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "imageUrl2:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_a

    const-string v2, "prepared"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 869
    :cond_3
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 870
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 872
    if-nez v2, :cond_4

    move v0, v1

    .line 873
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "imageUrl3:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_b

    const-string v2, "prepared"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 875
    :cond_5
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 876
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 878
    if-nez v2, :cond_6

    move v0, v1

    .line 879
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "videoUrl:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_c

    const-string v2, "prepared"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 881
    :cond_7
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 882
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 884
    if-nez v2, :cond_e

    .line 885
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "zipUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bsi;->nb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_d

    const-string v0, "prepared"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    move v0, v1

    .line 887
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMaterialPrepared() model="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 888
    return v0

    .line 861
    :cond_9
    const-string v2, "preparing"

    goto/16 :goto_0

    .line 867
    :cond_a
    const-string v2, "preparing"

    goto/16 :goto_1

    .line 873
    :cond_b
    const-string v2, "preparing"

    goto/16 :goto_2

    .line 879
    :cond_c
    const-string v2, "preparing"

    goto/16 :goto_3

    .line 885
    :cond_d
    const-string v0, "preparing"

    goto :goto_5

    :cond_e
    move v1, v0

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/tencent/qqpim/discovery/AdDisplayModel;J)V
    .locals 8

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/brq;->i(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Lcom/kingroot/kinguser/bsp;

    move-result-object v3

    .line 100
    if-nez v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShowAd() UnifiedAdData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/brm;->b(Lcom/kingroot/kinguser/bsp;)Lcom/kingroot/kinguser/brl;

    move-result-object v2

    .line 105
    iget-wide v0, v2, Lcom/kingroot/kinguser/brl;->bKg:J

    iput-wide v0, v3, Lcom/kingroot/kinguser/bsp;->bJG:J

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShowAd() UnifiedAdData PreDisplaytime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/kingroot/kinguser/bsp;->bJG:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 107
    iget-object v6, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kingroot/kinguser/brq$1;

    move-object v1, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/brq$1;-><init>(Lcom/kingroot/kinguser/brq;Lcom/kingroot/kinguser/brl;Lcom/kingroot/kinguser/bsp;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/tencent/qqpim/discovery/AdRequestData;ZLcom/kingroot/kinguser/brq$a;)V
    .locals 6

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAds() begin AdRequestData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/discovery/AdRequestData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 399
    iget v0, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v4, p0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    iget-object v2, p0, Lcom/kingroot/kinguser/brq;->bKt:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brq$b;

    .line 403
    if-eqz v0, :cond_0

    .line 404
    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKJ:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    monitor-exit v1

    .line 455
    :goto_0
    return-void

    .line 408
    :cond_1
    new-instance v4, Lcom/kingroot/kinguser/brq$b;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/brq$b;-><init>(Lcom/kingroot/kinguser/brq;)V

    .line 409
    iput-object v0, v4, Lcom/kingroot/kinguser/brq$b;->bKG:Ljava/lang/String;

    .line 410
    iget-object v5, v4, Lcom/kingroot/kinguser/brq$b;->bKJ:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v5, p0, Lcom/kingroot/kinguser/brq;->bKt:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v4, p0, Lcom/kingroot/kinguser/brq;->bKr:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->bKt:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brq$b;

    .line 415
    iget-object v1, v0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget v4, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    iput-wide v2, v0, Lcom/kingroot/kinguser/brq$b;->starttime:J

    .line 420
    iget v1, p1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {v1}, Lcom/kingroot/kinguser/bro;->kf(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kingroot/kinguser/brq$6;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/kingroot/kinguser/brq$6;-><init>(Lcom/kingroot/kinguser/brq;ZLcom/kingroot/kinguser/brq$b;Lcom/tencent/qqpim/discovery/AdRequestData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingroot/kinguser/btf;->S(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 432
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kingroot/kinguser/brq$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/kingroot/kinguser/brq$7;-><init>(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    .line 445
    const-wide/16 v4, 0x3e8

    .line 432
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 447
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kingroot/kinguser/brq$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/kingroot/kinguser/brq$2;-><init>(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public c(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/brq;->i(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Lcom/kingroot/kinguser/bsp;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qqpim/discovery/AdDisplayModel;->ahw()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bre;->ahB()Lcom/kingroot/kinguser/brh;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/bsp;->jumpUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v4, p2}, Lcom/kingroot/kinguser/brh;->a(Ljava/lang/String;ZILandroid/os/Bundle;)V

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClickAd() UnifiedAdData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/kingroot/kinguser/brq;->bKo:Lcom/kingroot/kinguser/brm;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/brm;->c(Lcom/kingroot/kinguser/bsp;)Lcom/kingroot/kinguser/brl;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/kingroot/kinguser/brq;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/kingroot/kinguser/brq$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/kingroot/kinguser/brq$3;-><init>(Lcom/kingroot/kinguser/brq;Lcom/kingroot/kinguser/brl;Lcom/kingroot/kinguser/bsp;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public i(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Lcom/kingroot/kinguser/bsp;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-object v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq;->bKp:Landroid/util/SparseArray;

    iget v2, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 77
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "findUnifiedAdData() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    move-object v1, v0

    .line 78
    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsp;

    .line 71
    iget-object v3, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 77
    :cond_4
    iget-object v1, v0, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    goto :goto_2
.end method

.method public j(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;J)V

    .line 96
    return-void
.end method
