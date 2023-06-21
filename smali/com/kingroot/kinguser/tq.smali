.class public Lcom/kingroot/kinguser/tq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/tq$a;
    }
.end annotation


# static fields
.field private static Hu:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 2

    .prologue
    .line 95
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/kingroot/kinguser/tq$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/kingroot/kinguser/tq$3;-><init>(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/tq;->a(Lcom/kingroot/kinguser/tq$a;)V

    goto :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/tq$a;)V
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/framework/service/KServiceManager;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/framework/service/IKServiceManager;

    move-result-object v0

    .line 172
    if-eqz p0, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/kingroot/kinguser/tq$a;->a(ILcom/kingroot/common/framework/service/IKServiceManager;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/tq;->b(Lcom/kingroot/kinguser/tq$a;)V

    goto :goto_0
.end method

.method private static b(Lcom/kingroot/kinguser/tq$a;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 185
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/framework/service/KServiceManager;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/framework/service/IKServiceManager;

    move-result-object v0

    .line 187
    if-eqz p0, :cond_0

    .line 188
    invoke-interface {p0, v1, v0}, Lcom/kingroot/kinguser/tq$a;->a(ILcom/kingroot/common/framework/service/IKServiceManager;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-class v1, Lcom/kingroot/kinguser/tq;

    monitor-enter v1

    .line 194
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/common/framework/service/KServiceManager;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/framework/service/IKServiceManager;

    move-result-object v0

    .line 196
    if-eqz p0, :cond_2

    .line 197
    const/4 v2, 0x0

    invoke-interface {p0, v2, v0}, Lcom/kingroot/kinguser/tq$a;->a(ILcom/kingroot/common/framework/service/IKServiceManager;)V

    .line 199
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 202
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/kingroot/common/framework/service/KSysService;->jS()V

    .line 204
    new-instance v0, Lcom/kingroot/kinguser/tq$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/tq$4;-><init>(Lcom/kingroot/kinguser/tq$a;)V

    .line 221
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kingroot/common/framework/service/KSysService;->a(Landroid/content/ServiceConnection;I)V

    .line 222
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 19
    sput-object p0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic jD()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/tq;->Hu:Landroid/os/IBinder;

    return-object v0
.end method

.method public static startService(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 31
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/tq$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/tq$1;-><init>(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/tq;->a(Lcom/kingroot/kinguser/tq$a;)V

    goto :goto_0
.end method

.method public static stopService(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 63
    if-nez p0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/kingroot/kinguser/tq$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/tq$2;-><init>(Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/tq;->a(Lcom/kingroot/kinguser/tq$a;)V

    goto :goto_0
.end method
