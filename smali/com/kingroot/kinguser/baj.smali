.class public Lcom/kingroot/kinguser/baj;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile bdV:Lcom/kingroot/kinguser/baj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method

.method public static Vv()Lcom/kingroot/kinguser/baj;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/kingroot/kinguser/baj;->bdV:Lcom/kingroot/kinguser/baj;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/kingroot/kinguser/baj;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/baj;->bdV:Lcom/kingroot/kinguser/baj;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/baj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/baj;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/baj;->bdV:Lcom/kingroot/kinguser/baj;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/baj;->bdV:Lcom/kingroot/kinguser/baj;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected Vw()Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;->Vp()Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/baj;->m(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/baj;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;->getUpgradeInfoList()Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/kingroot/kinguser/baj;->Vw()Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected m(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    move-result-object v0

    return-object v0
.end method

.method public processLocalOrderSync(I)I
    .locals 1

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/baj;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;->processLocalOrderSync(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pullPluginOrderAsync(Z)V
    .locals 1

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/baj;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;->pullPluginOrderAsync(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pullPluginOrderSync(Z)I
    .locals 1

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/baj;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;->pullPluginOrderSync(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 123
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 123
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
