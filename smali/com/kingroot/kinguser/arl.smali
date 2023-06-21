.class public abstract Lcom/kingroot/kinguser/arl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqb;


# instance fields
.field protected aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected aLQ:Z

.field protected aLR:Z

.field protected aLv:Z

.field protected aLw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/arl;->aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    iput-boolean v1, p0, Lcom/kingroot/kinguser/arl;->aLv:Z

    .line 25
    iput-boolean v1, p0, Lcom/kingroot/kinguser/arl;->aLQ:Z

    .line 28
    iput-boolean v1, p0, Lcom/kingroot/kinguser/arl;->aLw:Z

    .line 31
    iput-boolean v1, p0, Lcom/kingroot/kinguser/arl;->aLR:Z

    return-void
.end method


# virtual methods
.method public LY()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/arl;->aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    return-void
.end method

.method protected abstract MG()Z
.end method

.method protected abstract MH()Z
.end method

.method public final declared-synchronized MJ()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arl;->My()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    monitor-exit p0

    return v0

    .line 62
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLw:Z

    if-eqz v0, :cond_1

    .line 63
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLR:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arl;->MH()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLR:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLw:Z

    .line 75
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLR:Z

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLR:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized My()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/kingroot/kinguser/arl;->aLv:Z

    if-eqz v1, :cond_0

    .line 36
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLQ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :goto_0
    monitor-exit p0

    return v0

    .line 40
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/arl;->aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/arl;->MG()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLQ:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :goto_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLv:Z

    .line 47
    iget-boolean v0, p0, Lcom/kingroot/kinguser/arl;->aLQ:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 41
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
