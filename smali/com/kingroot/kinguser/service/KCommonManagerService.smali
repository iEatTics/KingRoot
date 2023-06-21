.class public Lcom/kingroot/kinguser/service/KCommonManagerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;
    }
.end annotation


# static fields
.field private static biZ:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/service/KCommonManagerService;->biZ:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    const-class v1, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/service/KCommonManagerService;->biZ:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    if-nez v0, :cond_0

    .line 47
    const-class v2, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/service/KCommonManagerService;->biZ:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    .line 49
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    sget-object v0, Lcom/kingroot/kinguser/service/KCommonManagerService;->biZ:Lcom/kingroot/kinguser/service/KCommonManagerService$Stub;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 51
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
