.class public Lcom/kingroot/kinguser/aek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aee;


# static fields
.field private static final aeT:Ljava/util/concurrent/locks/ReadWriteLock;

.field private static final aeU:Ljava/lang/Object;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aek;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Ky:Lcom/kingroot/kinguser/vh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vh",
            "<",
            "Lcom/kingroot/kinguser/ve;",
            ">;"
        }
    .end annotation
.end field

.field private final adQ:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile adS:I

.field adV:Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

.field private volatile aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

.field private volatile aeW:Z

.field aeX:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

.field private aeY:Lcom/kingroot/kinguser/bed;

.field private aeZ:Lcom/kingroot/kinguser/bed;

.field private afa:Lcom/kingroot/kinguser/ve;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/aek$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aek$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aek;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/kingroot/kinguser/aek;->adS:I

    .line 78
    iput-boolean v0, p0, Lcom/kingroot/kinguser/aek;->aeW:Z

    .line 402
    new-instance v0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$2;-><init>(Lcom/kingroot/kinguser/aek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->aeX:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    .line 446
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aek$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aek$2;-><init>(Lcom/kingroot/kinguser/aek;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->aeY:Lcom/kingroot/kinguser/bed;

    .line 592
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aek$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aek$4;-><init>(Lcom/kingroot/kinguser/aek;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->aeZ:Lcom/kingroot/kinguser/bed;

    .line 626
    new-instance v0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;-><init>(Lcom/kingroot/kinguser/aek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->adV:Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

    .line 852
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->adQ:Landroid/os/RemoteCallbackList;

    .line 80
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aek$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kingroot/kinguser/aek;-><init>()V

    return-void
.end method

.method private S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 616
    new-instance v0, Lcom/kingroot/kinguser/ve;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/ve;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->afa:Lcom/kingroot/kinguser/ve;

    .line 617
    sget-object v1, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/vh;

    iget-object v2, p0, Lcom/kingroot/kinguser/aek;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/aek;->afa:Lcom/kingroot/kinguser/ve;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/vh;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    .line 619
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-static {}, Lcom/kingroot/kinguser/aei;->tn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/vh;->dc(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    iget-object v2, p0, Lcom/kingroot/kinguser/aek;->adV:Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 621
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ll()V

    .line 622
    monitor-exit v1

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->adQ:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/kingroot/kinguser/u;JZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 528
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/kingroot/kinguser/aek;->a(Landroid/content/Context;Lcom/kingroot/kinguser/u;JZZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/kingroot/kinguser/u;JZZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 541
    .line 544
    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/kingroot/kinguser/aei;->a(Lcom/kingroot/kinguser/u;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p3, p4}, Lcom/kingroot/kinguser/aei;->ad(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 545
    invoke-static {p1, p5, p2}, Lcom/kingroot/kinguser/aei;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/u;)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v2

    .line 546
    if-eqz v2, :cond_3

    .line 547
    iput-wide p3, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    .line 548
    iget-object v3, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 549
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 550
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    move-object v3, v2

    move-object v2, v0

    .line 555
    :goto_0
    if-eqz v2, :cond_0

    .line 556
    if-eqz p6, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v0, v2, Lcom/kingroot/common/network/download/UpdateInfo;->obtainType:I

    .line 558
    :cond_0
    if-eqz v3, :cond_1

    .line 559
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/aek;->j(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 561
    :cond_1
    return-object v3

    :cond_2
    move v0, v1

    .line 556
    goto :goto_1

    :cond_3
    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aek;Landroid/content/Context;Lcom/kingroot/kinguser/u;JZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/aek;->a(Landroid/content/Context;Lcom/kingroot/kinguser/u;JZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kinguser/ve;)Lcom/kingroot/kinguser/ve;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/aek;->afa:Lcom/kingroot/kinguser/ve;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aek;->k(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aek;ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aek;->c(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aek;ZLcom/kingroot/kinguser/u;JLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/aek;->a(ZLcom/kingroot/kinguser/u;JLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V

    return-void
.end method

.method private a(ZLcom/kingroot/kinguser/u;JLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V
    .locals 9

    .prologue
    .line 572
    if-eqz p5, :cond_0

    .line 574
    :try_start_0
    invoke-interface {p5}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->onCheckStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/kingroot/kinguser/aek;->a(Landroid/content/Context;Lcom/kingroot/kinguser/u;JZZ)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 580
    if-eqz p5, :cond_1

    .line 582
    if-eqz v0, :cond_2

    :goto_1
    :try_start_1
    invoke-interface {p5, v0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 587
    :cond_1
    :goto_2
    return-void

    .line 582
    :cond_2
    sget-object v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->aeM:Lcom/kingroot/kingmaster/network/updata/CheckResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 575
    :catch_0
    move-exception v0

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aek;I)Z
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aek;->cM(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/aek;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aek;->aeW:Z

    return p1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/aek;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/aek;->adS:I

    return v0
.end method

.method private b(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z
    .locals 3

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->tc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    .line 437
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    if-eqz p1, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aek;->aeY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    move-result v0

    goto :goto_0

    .line 438
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private c(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V
    .locals 7

    .prologue
    .line 465
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    .line 467
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 468
    if-eqz p2, :cond_0

    .line 470
    :try_start_0
    invoke-interface {p2}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->onCheckStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/cbr;->akD()Lcom/kingroot/kinguser/cbr;

    move-result-object v6

    new-instance v0, Lcom/kingroot/kinguser/aek$3;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/aek$3;-><init>(Lcom/kingroot/kinguser/aek;Landroid/content/Context;ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/cbr;->a(Lcom/kingroot/kinguser/cbq;)V

    .line 524
    return-void

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cM(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 951
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Z
    .locals 3
    .param p1    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 170
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/kingroot/kinguser/aei;->c(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x280

    iget v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private i(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aek;->g(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 186
    return-void
.end method

.method private j(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 6
    .param p1    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 873
    if-nez p1, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move-object v2, v0

    .line 879
    :goto_1
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, v2, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    const/16 v3, 0x280

    if-le v0, v3, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ur()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v3

    .line 884
    const-string v0, ""

    .line 886
    if-eqz v3, :cond_2

    iget-object v4, v3, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 887
    iget-object v0, v3, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 888
    iget v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    .line 889
    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->version:Ljava/lang/String;

    .line 892
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aek;->g(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 893
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aeh;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 895
    iget v3, v2, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    if-ne v1, v3, :cond_3

    iget-object v1, v2, Lcom/kingroot/common/network/download/UpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->ep(I)V

    .line 901
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aW(J)V

    .line 902
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bV(Z)V

    .line 904
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eF(I)V

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    goto :goto_0

    .line 876
    :cond_4
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v2, 0x0

    .line 877
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1
.end method

.method private k(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 2

    .prologue
    .line 918
    if-nez p1, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 923
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 927
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 928
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->uj()V

    goto :goto_0
.end method

.method public static uq()Lcom/kingroot/kinguser/aek;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/kingroot/kinguser/aek;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aek;

    return-object v0
.end method

.method public static synthetic us()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    return-object v0
.end method

.method private x(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aiv;->C(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 252
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 254
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 256
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 258
    invoke-static {v0}, Lcom/kingroot/kinguser/aei;->a(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/io/File;

    move-result-object v3

    .line 259
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/aek;->x(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/aek;->cM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/aiv;->s(Ljava/lang/String;I)V

    .line 266
    :goto_0
    const/4 v0, 0x2

    .line 299
    :goto_1
    return v0

    .line 264
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aei;->e(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_0

    .line 269
    :cond_1
    iput p2, p0, Lcom/kingroot/kinguser/aek;->adS:I

    .line 270
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/aek;->cM(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/kingroot/kinguser/aek;->aeW:Z

    if-nez v3, :cond_2

    .line 271
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aek;->aeW:Z

    .line 272
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/common/network/download/UpdateInfo;->title:Ljava/lang/String;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2, v2}, Lcom/kingroot/kinguser/adm;->a(Ljava/lang/String;IIZ)V

    .line 276
    :cond_2
    sget-object v3, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v3

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->tc()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 278
    monitor-exit v3

    move v0, v1

    goto :goto_1

    .line 282
    :cond_3
    invoke-static {v0}, Lcom/kingroot/kinguser/aei;->b(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {}, Lcom/kingroot/kinguser/aei;->tn()Ljava/lang/String;

    move-result-object v4

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/KinguserV*.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 286
    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/aek;->S(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/aeh;->un()I

    move-result v0

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->eF(I)V

    .line 292
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    invoke-static {v1, p2, v0}, Lcom/kingroot/kinguser/aeh;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;II)V

    move v0, v2

    .line 293
    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v0, v3

    .line 295
    goto :goto_1

    :cond_5
    move v0, v3

    .line 299
    goto :goto_1
.end method

.method public a(Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->el(I)V

    .line 335
    invoke-direct {p0, v1, p1}, Lcom/kingroot/kinguser/aek;->b(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/u;J)Z
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->tc()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    return v0

    .line 390
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aek;->aeZ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aek;->b(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    return v0
.end method

.method public ab(J)V
    .locals 5

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 805
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aiv;->l(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 806
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aek;->i(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 807
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->su()V

    .line 809
    :cond_0
    return-void
.end method

.method public aw(Z)Z
    .locals 6

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    invoke-static {}, Lcom/kingroot/kinguser/aef;->uk()J

    move-result-wide v0

    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/aef;->ul()J

    move-result-wide v4

    .line 358
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 359
    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    .line 364
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aef;->ac(J)V

    .line 365
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kingroot/kinguser/aek;->aeX:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aek;->b(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->adQ:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 858
    return-void
.end method

.method public c(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->adQ:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 864
    return-void
.end method

.method public cK(I)V
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)I

    .line 240
    return-void
.end method

.method public g(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 2
    .param p1    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 102
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "updateinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 104
    if-nez p1, :cond_1

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    .line 106
    invoke-interface {v0}, Lcom/kingroot/kinguser/sk;->delete()Z

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->br(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    return-void

    .line 110
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aek;->h(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/sk;->b(Ljava/lang/Object;)Z

    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->br(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public tc()Z
    .locals 2

    .prologue
    .line 795
    sget-object v1, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tq()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->afa:Lcom/kingroot/kinguser/ve;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lcom/kingroot/common/network/download/AppDownloadTaskInfo;

    invoke-direct {v0}, Lcom/kingroot/common/network/download/AppDownloadTaskInfo;-><init>()V

    .line 789
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingroot/common/network/download/AppDownloadTaskInfo;

    iget-object v1, p0, Lcom/kingroot/kinguser/aek;->afa:Lcom/kingroot/kinguser/ve;

    invoke-direct {v0, v1}, Lcom/kingroot/common/network/download/AppDownloadTaskInfo;-><init>(Lcom/kingroot/kinguser/ve;)V

    goto :goto_0
.end method

.method public tr()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 814
    sget-object v2, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v2

    .line 815
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v3, :cond_1

    .line 816
    iget-object v3, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/vh;->getStatus()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    monitor-exit v2

    .line 819
    :goto_0
    return v0

    .line 818
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ts()V
    .locals 2

    .prologue
    .line 825
    sget-object v1, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v1

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->lm()V

    .line 829
    :cond_0
    monitor-exit v1

    .line 830
    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tt()V
    .locals 2

    .prologue
    .line 835
    sget-object v1, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->ln()V

    .line 839
    :cond_0
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tu()V
    .locals 2

    .prologue
    .line 845
    sget-object v1, Lcom/kingroot/kinguser/aek;->aeU:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->Ky:Lcom/kingroot/kinguser/vh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/vh;->lo()V

    .line 849
    :cond_0
    monitor-exit v1

    .line 850
    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ur()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    return-object v0
.end method

.method public uf()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 197
    if-nez v0, :cond_0

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v2, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 206
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 207
    goto :goto_0

    .line 210
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ug()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aek;->aeW:Z

    return v0
.end method

.method public uh()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)I

    .line 230
    return-void
.end method

.method public ui()Z
    .locals 2

    .prologue
    .line 374
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kingroot/kinguser/aek;->aeX:Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aek;->b(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    return v0
.end method

.method public uj()V
    .locals 1

    .prologue
    .line 942
    invoke-static {}, Lcom/kingroot/kinguser/auz;->Rc()Lcom/kingroot/kinguser/auz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/auz;->Rd()V

    .line 943
    return-void
.end method

.method public ur()Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 136
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "updateinfo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cE(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/kingroot/kinguser/sk;->jp()Ljava/lang/Object;

    move-result-object v0

    .line 141
    instance-of v2, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aek;->h(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aiv;->l(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 151
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aek;->g(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 152
    iput-object v1, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-object v0, v1

    .line 164
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    .line 141
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/kingroot/kinguser/aek;->aeT:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 161
    :cond_2
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aek;->g(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aek;->aeV:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    goto :goto_1
.end method
