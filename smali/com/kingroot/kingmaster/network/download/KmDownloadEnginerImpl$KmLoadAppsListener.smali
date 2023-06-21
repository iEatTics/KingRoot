.class Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KmLoadAppsListener"
.end annotation


# instance fields
.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    .line 396
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$1;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;-><init>()V

    return-void
.end method

.method private getFirstModel(Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const/4 v0, 0x0

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 417
    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized isRunning()Z
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReceive(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    invoke-direct {p0, p2}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->getFirstModel(Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    if-nez v0, :cond_2

    .line 431
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 436
    :cond_2
    :try_start_3
    const-string v1, "com.kingroot.master"

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.kingstudio.purify"

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 445
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 443
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->tp()Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;->a(Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 445
    :try_start_6
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 445
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method declared-synchronized prepareRunning()V
    .locals 2

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 2

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KmDownloadEnginerImpl$KmLoadAppsListener;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
