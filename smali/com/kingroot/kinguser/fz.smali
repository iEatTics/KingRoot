.class public Lcom/kingroot/kinguser/fz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile qg:Lcom/kingroot/kinguser/fz;


# instance fields
.field private volatile mHandler:Landroid/os/Handler;

.field private qh:Lcom/tencent/tps/client/kr/ISharkForXMod;

.field private volatile s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/fz;->qg:Lcom/kingroot/kinguser/fz;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/fz;->s:Z

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/fz;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/fz;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static ak()Lcom/kingroot/kinguser/fz;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/kingroot/kinguser/fz;->qg:Lcom/kingroot/kinguser/fz;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/kingroot/kinguser/fz;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/fz;->qg:Lcom/kingroot/kinguser/fz;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/fz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/fz;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/fz;->qg:Lcom/kingroot/kinguser/fz;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/fz;->qg:Lcom/kingroot/kinguser/fz;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private am()V
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/fz;->an()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/fz;->s:Z

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private an()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/kingroot/kinguser/fz;->am()V

    goto :goto_0

    .line 87
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 92
    iget-boolean v0, p0, Lcom/kingroot/kinguser/fz;->s:Z

    if-nez v0, :cond_4

    .line 93
    monitor-enter p0

    .line 95
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/fz;->s:Z

    if-nez v0, :cond_3

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_4
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/tps/client/kr/ISharkForXMod;)V
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "ISharkForXMod object is null"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/fz;->qh:Lcom/tencent/tps/client/kr/ISharkForXMod;

    .line 62
    invoke-virtual {p0}, Lcom/kingroot/kinguser/fz;->start()V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/kingroot/kinguser/fz;->b(Ljava/lang/Runnable;J)V

    .line 115
    return-void
.end method

.method public al()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/fz;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/fz;->al()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 127
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/kingroot/kinguser/fz;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/fz;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 143
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/kingroot/kinguser/fz;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tps/client/kr/XModFeature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/fz;->qh:Lcom/tencent/tps/client/kr/ISharkForXMod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/fz;->qh:Lcom/tencent/tps/client/kr/ISharkForXMod;

    const/16 v1, 0xe

    sget-object v2, Lcom/kingroot/kinguser/fa;->P:Ljava/lang/String;

    const-string v3, "47AED88AE89FDE00"

    const/16 v4, 0x48

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tps/client/kr/ISharkForXMod;->syncReport(ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tps-shark"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    new-instance v1, Lcom/kingroot/kinguser/ga;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/ga;-><init>(Lcom/kingroot/kinguser/fz;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/fz;->mHandler:Landroid/os/Handler;

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/fz;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    return-void
.end method
