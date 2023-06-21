.class public abstract Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.super Lcom/kingroot/common/uilib/template/BaseActivity;
.source "SourceFile"


# instance fields
.field private final aiw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/bij;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bij;)V
    .locals 2

    .prologue
    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bij;->acW()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/bij;)V
    .locals 2

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bij;->acW()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->aiw:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 78
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-super {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;->onDestroy()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;->onResume()V

    .line 35
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-super {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;->onStart()V

    .line 40
    invoke-static {p0}, Lcom/kingroot/kinguser/aft;->d(Landroid/app/Activity;)V

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {v4}, Lcom/kingroot/kinguser/akh;->aT(Z)V

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 54
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Lcom/kingroot/common/uilib/template/BaseActivity;->onStop()V

    .line 28
    invoke-static {p0}, Lcom/kingroot/kinguser/aft;->e(Landroid/app/Activity;)V

    .line 29
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 30
    return-void
.end method
