.class public Lcom/kingroot/kinguser/adu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ado;


# instance fields
.field private adA:J

.field private adB:Lcom/kingroot/kinguser/adq$a;

.field private final adw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/adq;",
            ">;"
        }
    .end annotation
.end field

.field private adx:Lcom/kingroot/kinguser/adn;

.field private ady:[B

.field private adz:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/kingroot/kinguser/ado$a;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/ads;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ads;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/adu;->adx:Lcom/kingroot/kinguser/adn;

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/adu;->ady:[B

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/adu;->adA:J

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/adu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/adu$1;-><init>(Lcom/kingroot/kinguser/adu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adu;->mHandler:Landroid/os/Handler;

    .line 366
    new-instance v0, Lcom/kingroot/kinguser/adu$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/adu$2;-><init>(Lcom/kingroot/kinguser/adu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/adu;->adB:Lcom/kingroot/kinguser/adq$a;

    .line 131
    invoke-virtual {p0}, Lcom/kingroot/kinguser/adu;->init()V

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adu;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/adu;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adu;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/adu;->b(Ljava/lang/Object;II)V

    return-void
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adz:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adz:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ado$a;

    .line 145
    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/ado$a;->a(Ljava/lang/Object;II)V

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adz:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adz:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ado$a;

    .line 137
    invoke-interface {v0}, Lcom/kingroot/kinguser/ado$a;->sQ()V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method private sZ()V
    .locals 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 383
    if-eqz v0, :cond_0

    .line 384
    iget-object v3, p0, Lcom/kingroot/kinguser/adu;->adB:Lcom/kingroot/kinguser/adq$a;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/adq;->a(Lcom/kingroot/kinguser/adq$a;)V

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Class;)Lcom/kingroot/kinguser/adq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/kingroot/kinguser/adq;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adx:Lcom/kingroot/kinguser/adn;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/adn;->f(Ljava/lang/Class;)Lcom/kingroot/kinguser/adq;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adx:Lcom/kingroot/kinguser/adn;

    invoke-interface {v0}, Lcom/kingroot/kinguser/adn;->sP()Ljava/util/List;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 180
    iget-object v2, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/adu;->adw:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/adu;->sZ()V

    .line 186
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
