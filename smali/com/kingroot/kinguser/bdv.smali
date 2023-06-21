.class public Lcom/kingroot/kinguser/bdv;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bdv$a;
    }
.end annotation


# instance fields
.field private bjV:Landroid/net/LocalServerSocket;

.field private bjW:Ljava/util/concurrent/ExecutorService;

.field private bjX:Lcom/kingroot/kinguser/bdv$a;

.field private mContext:Landroid/content/Context;

.field private volatile mIsRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/bdv$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/kingroot/kinguser/bdv;->mContext:Landroid/content/Context;

    .line 19
    iput-object v1, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bdv;->mIsRunning:Z

    .line 21
    iput-object v1, p0, Lcom/kingroot/kinguser/bdv;->bjW:Ljava/util/concurrent/ExecutorService;

    .line 22
    iput-object v1, p0, Lcom/kingroot/kinguser/bdv;->bjX:Lcom/kingroot/kinguser/bdv$a;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bdv;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/kingroot/kinguser/wj;

    const-string v1, "SuLocalSocektServer"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wj;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjW:Ljava/util/concurrent/ExecutorService;

    .line 27
    iput-object p2, p0, Lcom/kingroot/kinguser/bdv;->bjX:Lcom/kingroot/kinguser/bdv$a;

    .line 28
    return-void
.end method

.method private declared-synchronized close()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bdv;->mIsRunning:Z

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized YT()V
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bdv;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nA()V
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdv;->close()V

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjW:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdv;->close()V

    .line 61
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ku_server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bdv;->mIsRunning:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjX:Lcom/kingroot/kinguser/bdv$a;

    if-eqz v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/kingroot/kinguser/bdv;->bjX:Lcom/kingroot/kinguser/bdv$a;

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bdv;->mIsRunning:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bdv$a;->is(I)V

    .line 73
    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bdv;->mIsRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bdv;->bjV:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 88
    :cond_1
    :goto_3
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bdv;->mIsRunning:Z

    if-nez v2, :cond_4

    .line 109
    :cond_2
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    invoke-direct {p0}, Lcom/kingroot/kinguser/bdv;->close()V

    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, -0x1

    goto :goto_1

    .line 78
    :catch_1
    move-exception v2

    .line 79
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Too many open files"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 84
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 92
    :cond_4
    if-eqz v0, :cond_0

    .line 97
    :try_start_2
    new-instance v2, Lcom/kingroot/kinguser/bdw;

    iget-object v3, p0, Lcom/kingroot/kinguser/bdv;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/kingroot/kinguser/bdw;-><init>(Landroid/content/Context;Landroid/net/LocalSocket;)V

    .line 98
    iget-object v3, p0, Lcom/kingroot/kinguser/bdv;->bjW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 99
    :catch_2
    move-exception v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :try_start_3
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 104
    :catch_3
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
