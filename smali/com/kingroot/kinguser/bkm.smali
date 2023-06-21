.class public Lcom/kingroot/kinguser/bkm;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlPackageManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/loader/multi/IKlPackageManagerBridge;",
        ">;",
        "Lcom/kingroot/loader/sdk/service/IKlPackageManager;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlPackageManagerBridge;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;->a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method protected aeO()Lcom/kingroot/loader/multi/IKlPackageManagerBridge;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/kingroot/loader/q;->aeO()Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bkm;->a(Landroid/os/IBinder;)Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledKlInfos()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->getInstalledKlInfos()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;
    .locals 1

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public installPlugin(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->installPlugin(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    .line 106
    :cond_0
    const/16 v0, -0xc

    goto :goto_0
.end method

.method public installPlugin(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
    .locals 1

    .prologue
    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->installPluginEx(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    .line 120
    :cond_0
    const/16 v0, -0xc

    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->aeO()Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/loader/q;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public markPluginRunning(II)V
    .locals 1

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 48
    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->markPluginRunning(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 141
    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v1, 0x0

    .line 144
    if-eqz p2, :cond_1

    .line 145
    new-instance v1, Lcom/kingroot/loader/o$1;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/loader/o$1;-><init>(Lcom/kingroot/kinguser/bkm;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V

    .line 154
    invoke-static {p2, v1}, Lcom/kingroot/kinguser/bkn;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_1
    invoke-interface {v0, p1, v1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setEnabledSetting(IZ)Z
    .locals 1

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->setEnabledSetting(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uninstallPlugin(I)V
    .locals 1

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkm;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge;->uninstallPlugin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-static {v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
