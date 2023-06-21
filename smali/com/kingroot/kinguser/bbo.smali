.class public Lcom/kingroot/kinguser/bbo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bfj:Lcom/kingroot/kinguser/bbo;


# instance fields
.field private bfk:Z

.field private bfl:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bbo;->bfk:Z

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/wj;

    const-string v1, "addLogThreadPool"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wj;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bbo;->bfl:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static Wv()Lcom/kingroot/kinguser/bbo;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/bbo;->bfj:Lcom/kingroot/kinguser/bbo;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/kingroot/kinguser/bbp;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bbo;->bfj:Lcom/kingroot/kinguser/bbo;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/kingroot/kinguser/bbo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbo;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbo;->bfj:Lcom/kingroot/kinguser/bbo;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bbo;->bfj:Lcom/kingroot/kinguser/bbo;

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
.method public addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bbo;->bfl:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kingroot/kinguser/bbo$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bbo$1;-><init>(Lcom/kingroot/kinguser/bbo;Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/kingroot/kinguser/bbo$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bbo$4;-><init>(Lcom/kingroot/kinguser/bbo;Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 113
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo$4;->start()V

    .line 114
    return-void
.end method

.method public clearAllLogs()I
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/kingroot/kinguser/bbo$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bbo$3;-><init>(Lcom/kingroot/kinguser/bbo;)V

    .line 75
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo$3;->start()V

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public clearTimeOutLogs()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/kingroot/kinguser/bbo$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bbo$2;-><init>(Lcom/kingroot/kinguser/bbo;)V

    .line 63
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo$2;->start()V

    .line 64
    return-void
.end method

.method public getLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/bbq;->WA()Lcom/kingroot/kinguser/bbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbq;->getLogs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTodayRequestAllowAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/bbq;->WA()Lcom/kingroot/kinguser/bbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbq;->getTodayRequestAllowAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTodayRequestAppCount()I
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/bbq;->WA()Lcom/kingroot/kinguser/bbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbq;->getTodayRequestAppCount()I

    move-result v0

    return v0
.end method

.method public removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/kingroot/kinguser/bbo$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bbo$5;-><init>(Lcom/kingroot/kinguser/bbo;Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 125
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo$5;->start()V

    .line 127
    return-void
.end method
