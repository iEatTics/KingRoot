.class public Lcom/kingroot/kinguser/bzk;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bzk$a;
    }
.end annotation


# instance fields
.field private bVH:Lcom/kingroot/kinguser/bzk$a;

.field private bVI:Ljava/lang/Runnable;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bzk;->bVH:Lcom/kingroot/kinguser/bzk$a;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/bzk;->bVH:Lcom/kingroot/kinguser/bzk$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzk;->bVI:Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/bzk$a;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bzk;->bVH:Lcom/kingroot/kinguser/bzk$a;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bzk;->bVH:Lcom/kingroot/kinguser/bzk$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzk;->bVI:Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/bzk$a;->b(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 44
    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bzk;->bVH:Lcom/kingroot/kinguser/bzk$a;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bzk;->bVH:Lcom/kingroot/kinguser/bzk$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzk;->bVI:Ljava/lang/Runnable;

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/bzk$a;->a(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 30
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
