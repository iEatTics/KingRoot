.class public Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;
    }
.end annotation


# static fields
.field private static aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static xf()Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;
    .locals 3

    .prologue
    .line 105
    const-class v1, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    if-nez v0, :cond_0

    .line 107
    const-class v2, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    .line 109
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    sget-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 111
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->a(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected jR()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->jR()V

    .line 87
    return-void
.end method

.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 74
    const-class v1, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    if-nez v0, :cond_0

    .line 76
    const-class v2, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    .line 78
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    sget-object v0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService;->aqa:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 80
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onDestroy()V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onStop()V

    .line 92
    return-void
.end method
