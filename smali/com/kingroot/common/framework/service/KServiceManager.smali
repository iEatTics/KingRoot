.class public Lcom/kingroot/common/framework/service/KServiceManager;
.super Lcom/kingroot/common/framework/service/IKServiceManager$Stub;
.source "SourceFile"


# static fields
.field public static final STOP_SERVICE_NOT_EXIST:I = 0x1

.field public static final STOP_SERVICE_OK:I


# instance fields
.field private mServiceContext:Landroid/content/Context;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/to;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/to;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/common/framework/service/IKServiceManager$Stub;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/kingroot/common/framework/service/KServiceManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method private addService(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 62
    if-nez v0, :cond_0

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 71
    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Lcom/kingroot/common/framework/service/KServiceManager$2;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/common/framework/service/KServiceManager$2;-><init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private checkPermission()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 200
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 201
    invoke-static {}, Landroid/os/Process;->myUid()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    .line 204
    :goto_0
    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private removeService(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 40
    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Lcom/kingroot/common/framework/service/KServiceManager$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/common/framework/service/KServiceManager$1;-><init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized bindService(Landroid/content/Intent;Lcom/kingroot/common/framework/service/IServiceConnection;)V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/common/framework/service/KServiceManager;->checkPermission()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :cond_1
    if-eqz p1, :cond_0

    .line 151
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lcom/kingroot/common/framework/service/KServiceManager;->addService(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lcom/kingroot/common/framework/service/KServiceManager$5;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/kingroot/common/framework/service/KServiceManager$5;-><init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;Landroid/content/Intent;Lcom/kingroot/common/framework/service/IServiceConnection;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startService(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/common/framework/service/KServiceManager;->checkPermission()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_1
    if-eqz p1, :cond_0

    .line 96
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/kingroot/common/framework/service/KServiceManager;->addService(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 100
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcom/kingroot/common/framework/service/KServiceManager$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/kingroot/common/framework/service/KServiceManager$3;-><init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;Landroid/content/Intent;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopService(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/common/framework/service/KServiceManager;->checkPermission()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    if-eqz p1, :cond_0

    .line 123
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 126
    if-eqz v0, :cond_0

    .line 129
    new-instance v2, Lcom/kingroot/common/framework/service/KServiceManager$4;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/common/framework/service/KServiceManager$4;-><init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/kingroot/common/framework/service/KServiceManager;->removeService(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unbindService(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/common/framework/service/KServiceManager;->checkPermission()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kingroot/common/framework/service/KServiceManager;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/to;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    new-instance v1, Lcom/kingroot/common/framework/service/KServiceManager$6;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/common/framework/service/KServiceManager$6;-><init>(Lcom/kingroot/common/framework/service/KServiceManager;Lcom/kingroot/kinguser/to;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/kingroot/common/framework/service/KServiceManager;->removeService(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
