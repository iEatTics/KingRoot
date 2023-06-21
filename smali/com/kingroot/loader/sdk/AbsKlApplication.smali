.class public abstract Lcom/kingroot/loader/sdk/AbsKlApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/IKlApplication;
.implements Lcom/kingroot/loader/sdk/IKlPluginDelegate;


# instance fields
.field private final mCoreProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRunning:Z

.field private final mProviderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredFragmentLaunchModes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredProviderInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/ContentProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRunningReadWriteLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mIsRunning:Z

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRunningReadWriteLock:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mCoreProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRegisteredProviderInfo:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mProviderCache:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRegisteredFragmentLaunchModes:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final attachKlContext(Lcom/kingroot/loader/sdk/KlContext;Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mCoreProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getApplicationTheme()I

    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Lcom/kingroot/loader/sdk/KlContext;->setTheme(I)V

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/loader/sdk/AbsKlApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public getApplicationTheme()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final getContentProvider(Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mProviderCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mProviderCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;

    .line 125
    if-eqz v0, :cond_0

    monitor-exit v2

    .line 143
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRegisteredProviderInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 129
    if-nez v0, :cond_1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 133
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mProviderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 143
    monitor-exit v2

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    .line 136
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getKlContext()Lcom/kingroot/loader/sdk/KlContext;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlContext;

    return-object v0
.end method

.method public final getLaunchMode(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRegisteredFragmentLaunchModes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMainKlFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/loader/sdk/KlFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isCoreProcess()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mCoreProcess:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRunningReadWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mIsRunning:Z

    monitor-exit v1

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 62
    iget-object v1, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRunningReadWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mIsRunning:Z

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRunningReadWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mIsRunning:Z

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract onHostCall(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public onUninstall()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected final registerFragmentLaunchMode(Ljava/lang/Class;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/loader/sdk/KlFragment;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRegisteredFragmentLaunchModes:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final registerProvider(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/ContentProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/kingroot/loader/sdk/AbsKlApplication;->mRegisteredProviderInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
