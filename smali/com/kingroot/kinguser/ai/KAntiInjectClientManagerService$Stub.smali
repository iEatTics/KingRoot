.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;
.super Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# static fields
.field private static final WAIT_REBOOT_TIME:J = 0x3a98L


# instance fields
.field mIUranusClientCallback:Lcom/kingroot/kinguser/hl;

.field private final mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

.field private final mProtectPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRebootStat:Lcom/kingroot/kinguser/util/protect/RebootStat;

.field private mSetAiSwitcherThread:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager$Stub;-><init>()V

    .line 122
    const-string v0, "ai"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mRebootStat:Lcom/kingroot/kinguser/util/protect/RebootStat;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mProtectPkgs:Ljava/util/Set;

    .line 126
    new-instance v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$1;-><init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    .line 272
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;-><init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mSetAiSwitcherThread:Lcom/kingroot/kinguser/bed;

    .line 582
    new-instance v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$3;-><init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mIUranusClientCallback:Lcom/kingroot/kinguser/hl;

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mRebootStat:Lcom/kingroot/kinguser/util/protect/RebootStat;

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Z
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->isUranusAlive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ahi;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->syncWithDaemon(Lcom/kingroot/kinguser/ahi;)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->registerUranusAppListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->onSwitcherOpen(Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mRebootStat:Lcom/kingroot/kinguser/util/protect/RebootStat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mInjectStateCallback:Lcom/kingroot/kinguser/bhn;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;I)I
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->startV4(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mProtectPkgs:Ljava/util/Set;

    return-object v0
.end method

.method private isUranusAlive()Z
    .locals 2

    .prologue
    .line 545
    const-class v0, Lcom/kingroot/kinguser/hq;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hq;

    .line 546
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hq;->K(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSwitcherClosed(Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V
    .locals 1

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 265
    :try_start_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;->onSwitcherClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onSwitcherOpen(Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V
    .locals 1

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 255
    :try_start_0
    invoke-interface {p1, p2}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;->onSwitcherOpen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private registerUranusAppListener()V
    .locals 2

    .prologue
    .line 564
    const-class v0, Lcom/kingroot/kinguser/hq;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hq;

    .line 565
    if-nez v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mIUranusClientCallback:Lcom/kingroot/kinguser/hl;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hq;->unregisterClientObserver(Lcom/kingroot/kinguser/hl;)V

    .line 569
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mIUranusClientCallback:Lcom/kingroot/kinguser/hl;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hq;->registerClientObserver(Lcom/kingroot/kinguser/hl;)V

    goto :goto_0
.end method

.method private startV4(I)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 459
    if-ne p1, v1, :cond_0

    .line 460
    const/high16 v0, 0x2030000

    .line 467
    :goto_0
    return v0

    .line 462
    :cond_0
    const-class v0, Lcom/kingroot/kinguser/hq;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hq;

    .line 463
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hq;->start(I)I

    move-result v0

    goto :goto_0
.end method

.method private syncWithDaemon(Lcom/kingroot/kinguser/ahi;)V
    .locals 10

    .prologue
    const/16 v9, 0x3ff

    .line 484
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 489
    :cond_0
    const-string v0, ""

    .line 490
    const-string v2, ""

    .line 491
    const-string v3, ""

    .line 492
    const-string v4, ""

    .line 493
    invoke-static {}, Lcom/kingroot/kinguser/avl;->RC()Lcom/kingroot/kinguser/avl;

    move-result-object v5

    .line 494
    invoke-virtual {v5}, Lcom/kingroot/kinguser/avl;->RG()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "|"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v9, :cond_5

    .line 500
    :cond_1
    invoke-virtual {v5}, Lcom/kingroot/kinguser/avl;->RI()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "|"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v9, :cond_6

    .line 506
    :cond_2
    invoke-virtual {v5}, Lcom/kingroot/kinguser/avl;->RF()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 507
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "|"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v9, :cond_7

    .line 512
    :cond_3
    invoke-virtual {v5}, Lcom/kingroot/kinguser/avl;->RH()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const-string v8, "|"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v9, :cond_8

    .line 522
    :cond_4
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ahi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-virtual {v5}, Lcom/kingroot/kinguser/avl;->RE()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ahi;->ak(Ljava/util/List;)Z

    .line 531
    invoke-static {}, Lcom/kingroot/kinguser/akc;->Ai()Lcom/kingroot/kinguser/akc;

    move-result-object v1

    .line 532
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mProtectPkgs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 534
    invoke-virtual {v1}, Lcom/kingroot/kinguser/akc;->Ak()Ljava/util/Set;

    move-result-object v1

    .line 535
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 536
    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mProtectPkgs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 537
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ahi;->ai(Ljava/util/List;)Z

    goto/16 :goto_0

    .line 498
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 499
    goto/16 :goto_1

    .line 504
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 505
    goto/16 :goto_2

    .line 510
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 511
    goto/16 :goto_3

    .line 516
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 517
    goto/16 :goto_4
.end method

.method private unregisterUranusAppListener()V
    .locals 2

    .prologue
    .line 574
    const-class v0, Lcom/kingroot/kinguser/hq;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hq;

    .line 575
    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mIUranusClientCallback:Lcom/kingroot/kinguser/hl;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hq;->unregisterClientObserver(Lcom/kingroot/kinguser/hl;)V

    goto :goto_0
.end method


# virtual methods
.method public addProtectedPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mProtectPkgs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ahi;->ai(Ljava/util/List;)Z

    .line 213
    return-void
.end method

.method public getAllLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahi;->getAllLogs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRebootStat()Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mRebootStat:Lcom/kingroot/kinguser/util/protect/RebootStat;

    return-object v0
.end method

.method public getSwitcher()Z
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    .line 206
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->isUranusAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahi;->getSwitcher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyManuallyReboot()V
    .locals 1

    .prologue
    .line 557
    const-class v0, Lcom/kingroot/kinguser/hf;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hf;

    .line 558
    invoke-interface {v0}, Lcom/kingroot/kinguser/hf;->notifyManuallyReboot()V

    .line 560
    return-void
.end method

.method public registerClient()V
    .locals 2

    .prologue
    .line 477
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    .line 478
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->getSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahi;->registerClient()V

    .line 481
    :cond_0
    return-void
.end method

.method public removeProtectedPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mProtectPkgs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ahi;->aj(Ljava/util/List;)Z

    .line 220
    return-void
.end method

.method public setSwitcher(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mSetAiSwitcherThread:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ahi;->aI(Z)Z

    .line 234
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->onSwitcherClosed(Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    .line 235
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->unregisterUranusAppListener()V

    goto :goto_0
.end method

.method public setSwitcherTest(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->mSetAiSwitcherThread:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ahi;->aI(Z)Z

    .line 247
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->onSwitcherClosed(Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    goto :goto_0
.end method

.method public syncListWithDaemon()V
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v0

    .line 552
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->syncWithDaemon(Lcom/kingroot/kinguser/ahi;)V

    .line 553
    return-void
.end method
