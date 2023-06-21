.class public Lcom/kingroot/kinguser/aft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ail:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static declared-synchronized d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 17
    const-class v1, Lcom/kingroot/kinguser/aft;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/kingroot/kinguser/aft;->ail:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/kingroot/kinguser/aft;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 26
    if-ne v0, p0, :cond_0

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aft;->ail:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit v1

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized vt()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/kingroot/kinguser/aft;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aft;->ail:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/aft;->ail:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
