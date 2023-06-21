.class public Lcom/kingroot/kinguser/no;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile xq:Lcom/kingroot/kinguser/no;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/no;->xq:Lcom/kingroot/kinguser/no;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KThreadHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/no;->mHandler:Landroid/os/Handler;

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static fl()Lcom/kingroot/kinguser/no;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/no;->xq:Lcom/kingroot/kinguser/no;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/kingroot/kinguser/no;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/no;->xq:Lcom/kingroot/kinguser/no;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/kingroot/kinguser/no;

    invoke-direct {v0}, Lcom/kingroot/kinguser/no;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/no;->xq:Lcom/kingroot/kinguser/no;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/no;->xq:Lcom/kingroot/kinguser/no;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/nj;)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/no;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/nj;J)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/no;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    return-void
.end method
