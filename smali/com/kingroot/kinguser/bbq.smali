.class Lcom/kingroot/kinguser/bbq;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile bfD:Lcom/kingroot/kinguser/bbq;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method

.method public static WA()Lcom/kingroot/kinguser/bbq;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/bbq;->bfD:Lcom/kingroot/kinguser/bbq;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/kingroot/kinguser/bbq;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bbq;->bfD:Lcom/kingroot/kinguser/bbq;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/bbq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bbq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bbq;->bfD:Lcom/kingroot/kinguser/bbq;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bbq;->bfD:Lcom/kingroot/kinguser/bbq;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected WB()Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/root/log/RootMgrLogService;->WC()Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    move-result-object v0

    return-object v0
.end method

.method public addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
    .locals 1

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 79
    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 157
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearAllLogs()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 110
    if-nez v0, :cond_0

    move v0, v1

    .line 117
    :goto_0
    return v0

    .line 113
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->clearAllLogs()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public clearTimeOutLogs()V
    .locals 1

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 95
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->clearTimeOutLogs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bbq;->n(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    move-result-object v0

    return-object v0
.end method

.method public getLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->getLogs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTodayRequestAllowAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 201
    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 204
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->getTodayRequestAllowAppList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTodayRequestAppCount()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 187
    if-nez v0, :cond_0

    move v0, v1

    .line 194
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->getTodayRequestAppCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    move v0, v1

    .line 194
    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->WB()Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/root/log/RootMgrLogService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected n(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;
    .locals 1

    .prologue
    .line 48
    invoke-static {p1}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    move-result-object v0

    return-object v0
.end method

.method public removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bbq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;

    .line 172
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;->removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method
