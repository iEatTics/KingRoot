.class public Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;
    }
.end annotation


# static fields
.field private static bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    return-void
.end method

.method public static Vp()Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;
    .locals 3

    .prologue
    .line 64
    const-class v1, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    if-nez v0, :cond_0

    .line 66
    const-class v2, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    .line 68
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    sget-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 70
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 23
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    .line 24
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->a(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method protected jR()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->jR()V

    .line 46
    return-void
.end method

.method protected onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 33
    const-class v1, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    if-nez v0, :cond_0

    .line 35
    const-class v2, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    invoke-direct {v0}, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    .line 37
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    sget-object v0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->bdI:Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 39
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
    .line 55
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onDestroy()V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onStop()V

    .line 51
    return-void
.end method
