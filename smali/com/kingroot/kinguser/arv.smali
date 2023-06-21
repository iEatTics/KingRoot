.class public Lcom/kingroot/kinguser/arv;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final aMk:Ljava/lang/Object;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/arv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/arv;->aMk:Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/arv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/arv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/arv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method

.method public static NB()V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 130
    sget-object v6, Lcom/kingroot/kinguser/arv;->aMk:Ljava/lang/Object;

    monitor-enter v6

    .line 133
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v4

    .line 134
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 136
    monitor-exit v6

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eq()J

    move-result-wide v0

    .line 142
    if-nez v4, :cond_1

    const-wide/32 v4, 0x36ee800

    .line 144
    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    monitor-exit v6

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_1
    const-wide/32 v4, 0xf731400

    goto :goto_1

    .line 150
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/arv;->cloudCheckAll(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    .line 151
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static Nz()Lcom/kingroot/kinguser/arv;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kingroot/kinguser/arv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arv;

    return-object v0
.end method


# virtual methods
.method protected NA()Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getInstance()Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    move-result-object v0

    return-object v0
.end method

.method public NC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->getAllRiskAppsLiteInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 358
    :catch_0
    move-exception v0

    .line 361
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public cloudCheckAll(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->cloudCheckAll(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cloudCheckApks(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 1

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->cloudCheckApks(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cloudCheckApps(Ljava/util/List;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->cloudCheckApps(Ljava/util/List;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/arv;->l(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    move-result-object v0

    return-object v0
.end method

.method public downloadWeSecure()V
    .locals 1

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 320
    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->downloadWeSecure()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAllRiskApps()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 241
    if-eqz v0, :cond_1

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->getAllRiskApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 255
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v1

    .line 249
    goto :goto_1
.end method

.method public getAllUnknownApps()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 306
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->getAllUnknownApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 314
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getCloudCheckFailedAppsCache()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->getCloudCheckFailedAppsCache()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 300
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRiskType(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-static {p1}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 227
    if-eqz v0, :cond_1

    .line 228
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->getRiskType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 234
    goto :goto_0
.end method

.method public getUndeniedRiskApps()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->getUndeniedRiskApps()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 195
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public gotoWeSecureVirusScan()V
    .locals 1

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->gotoWeSecureVirusScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isWeSecureInstalled()Z
    .locals 1

    .prologue
    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-interface {v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->isWeSecureInstalled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 338
    :goto_0
    return v0

    .line 334
    :catch_0
    move-exception v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->NA()Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/examination/service/CloudCheckService$b;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected l(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;
    .locals 1

    .prologue
    .line 61
    invoke-static {p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    move-result-object v0

    return-object v0
.end method

.method public markDeniedRiskApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->markDeniedRiskApps(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public markTreatedRiskApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->markTreatedRiskApps(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAppInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->removeAppInfos(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager;->unregisterCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method
