.class public Lcom/kingroot/kinguser/afe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/afe$c;,
        Lcom/kingroot/kinguser/afe$b;,
        Lcom/kingroot/kinguser/afe$a;
    }
.end annotation


# static fields
.field private static volatile ahl:Lcom/kingroot/kinguser/afe;


# instance fields
.field private ahh:Landroid/os/HandlerThread;

.field private ahi:Landroid/os/Handler;

.field private ahj:Lcom/kingroot/kinguser/afe$c;

.field private ahk:Z

.field private mAppContext:Landroid/content/Context;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/afe$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/afe;->mAppContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "root-invoker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afe;->ahh:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->ahh:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/afe$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/afe;->ahh:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/afe$b;-><init>(Lcom/kingroot/kinguser/afe;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afe;->ahi:Landroid/os/Handler;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afe;->mListeners:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/afe;)Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public static aE(Landroid/content/Context;)Lcom/kingroot/kinguser/afe;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/afe;->ahl:Lcom/kingroot/kinguser/afe;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/kingroot/kinguser/afe;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afe;->ahl:Lcom/kingroot/kinguser/afe;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/afe;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/afe;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/afe;->ahl:Lcom/kingroot/kinguser/afe;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/afe;->ahl:Lcom/kingroot/kinguser/afe;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/afe;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->ahi:Landroid/os/Handler;

    return-object v0
.end method

.method private uZ()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->ahj:Lcom/kingroot/kinguser/afe$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->ahj:Lcom/kingroot/kinguser/afe$c;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afe$c;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/afe$c;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/afe$c;-><init>(Lcom/kingroot/kinguser/afe;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afe;->ahj:Lcom/kingroot/kinguser/afe$c;

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->ahj:Lcom/kingroot/kinguser/afe$c;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afe$c;->start()V

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/afe$a;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->mListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public declared-synchronized uY()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afe;->ahl:Lcom/kingroot/kinguser/afe;

    invoke-direct {v0}, Lcom/kingroot/kinguser/afe;->uZ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method va()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/kingroot/kinguser/afe;->ahk:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/afe;->ahk:Z

    goto :goto_0
.end method

.method public vb()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/afe;->ahi:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-boolean v0, p0, Lcom/kingroot/kinguser/afe;->ahk:Z

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/afe;->ahk:Z

    goto :goto_0
.end method
