.class public Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/adx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/adx;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/adx;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 282
    invoke-super {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;->onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/adx;->cG(I)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 287
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;Lcom/kingroot/kinguser/vf;)Lcom/kingroot/kinguser/vf;

    .line 288
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    monitor-enter v5

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 290
    :goto_0
    if-lez v0, :cond_0

    .line 291
    add-int/lit8 v4, v0, -0x1

    .line 293
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    .line 295
    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    move v0, v4

    .line 295
    goto :goto_0

    .line 297
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 298
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    iget v0, p1, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    const/16 v4, -0x1b5f

    if-ne v0, v4, :cond_1

    .line 320
    :goto_1
    return-void

    .line 298
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 304
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CM()I

    move-result v0

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/aks;->em(I)V

    .line 307
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v4, 0x18755

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 310
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    .line 313
    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->b(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    .line 314
    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->b(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    .line 315
    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->c(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    .line 314
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v1, 0x4

    .line 316
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 310
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 315
    goto :goto_2

    :cond_3
    move v0, v3

    .line 316
    goto :goto_3
.end method

.method public onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;->onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/adx;->cG(I)V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    monitor-enter v5

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 221
    :goto_0
    if-lez v0, :cond_0

    .line 222
    add-int/lit8 v4, v0, -0x1

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    .line 226
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    move v0, v4

    .line 226
    goto :goto_0

    .line 228
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 229
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v4, 0x18753

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    .line 237
    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->b(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    .line 238
    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->b(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    .line 239
    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->c(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    .line 238
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    .line 234
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CN()I

    move-result v0

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->en(I)V

    .line 247
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->d(Lcom/kingroot/kinguser/adx;)I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 250
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v2}, Lcom/kingroot/kinguser/adx;->d(Lcom/kingroot/kinguser/adx;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ais;->dB(I)Z

    move-result v0

    move v2, v0

    .line 255
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    monitor-enter v4

    .line 256
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 257
    :goto_4
    if-lez v0, :cond_4

    .line 258
    add-int/lit8 v3, v0, -0x1

    .line 260
    if-eqz v2, :cond_3

    .line 261
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/adx;->cG(I)V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    move v0, v3

    .line 268
    goto :goto_4

    .line 229
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 239
    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 240
    goto :goto_2

    .line 264
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/adx;->cG(I)V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 267
    :catch_1
    move-exception v0

    move v0, v3

    .line 268
    goto :goto_4

    .line 270
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 271
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 275
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;Lcom/kingroot/kinguser/vf;)Lcom/kingroot/kinguser/vf;

    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->em(I)V

    .line 278
    return-void

    .line 271
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :cond_6
    move v2, v1

    goto :goto_3
.end method

.method public onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 3

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;->onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adx;->cG(I)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 201
    :goto_0
    if-lez v0, :cond_0

    .line 202
    add-int/lit8 v1, v0, -0x1

    .line 204
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 206
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/download/KuDownloadEnginerImpl$1;->this$0:Lcom/kingroot/kinguser/adx;

    invoke-static {v0}, Lcom/kingroot/kinguser/adx;->a(Lcom/kingroot/kinguser/adx;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 209
    monitor-exit v2

    .line 211
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
