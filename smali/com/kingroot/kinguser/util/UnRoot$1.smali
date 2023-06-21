.class public final Lcom/kingroot/kinguser/util/UnRoot$1;
.super Lcom/kingroot/common/ipc/IIpcCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhe;->a(ZZLcom/kingroot/kinguser/bhe$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$bKeepBackSu:Z

.field final synthetic val$cleanRootLock:Ljava/lang/Object;

.field final synthetic val$unRootListener:Lcom/kingroot/kinguser/bhe$a;

.field final synthetic val$willClean3rdApps:Z


# direct methods
.method public constructor <init>(ZZLcom/kingroot/kinguser/bhe$a;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$bKeepBackSu:Z

    iput-boolean p2, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$willClean3rdApps:Z

    iput-object p3, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$unRootListener:Lcom/kingroot/kinguser/bhe$a;

    iput-object p4, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$cleanRootLock:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kingroot/common/ipc/IIpcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 381
    invoke-static {}, Lcom/kingroot/kinguser/ajs;->zx()Lcom/kingroot/kinguser/ajs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ajs;->aS(Z)V

    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    .line 384
    iget-boolean v3, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$bKeepBackSu:Z

    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bi(Z)V

    .line 390
    :cond_0
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Ch()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Fz()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Lcom/kingroot/kinguser/ajk;->zo()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/kingroot/kinguser/ajb;->checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z

    .line 395
    :cond_1
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 398
    new-instance v2, Lcom/kingroot/kinguser/aiu;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aiu;-><init>()V

    .line 399
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aiu;->yu()Ljava/util/List;

    move-result-object v3

    .line 400
    iget-boolean v4, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$willClean3rdApps:Z

    invoke-static {v4}, Lcom/kingroot/kinguser/bhe;->eb(Z)Ljava/util/List;

    move-result-object v4

    .line 401
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aiu;->aL(Z)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/kingroot/kinguser/bhe;->l(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 404
    invoke-static {}, Lcom/kingroot/kinguser/bhe;->jJ()V

    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/ain;->xW()Lcom/kingroot/kinguser/ain;

    move-result-object v5

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/ain;->gb(Ljava/lang/String;)Z

    .line 408
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/bhe;->YX()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 410
    :cond_2
    invoke-static {v4, v2}, Lcom/kingroot/kinguser/bhe;->i(Ljava/util/List;Ljava/util/List;)V

    .line 428
    :cond_3
    invoke-static {v3}, Lcom/kingroot/kinguser/bhe;->bT(Ljava/util/List;)I

    move-result v2

    .line 429
    iget-object v3, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$unRootListener:Lcom/kingroot/kinguser/bhe$a;

    if-eqz v3, :cond_4

    .line 431
    iget-object v3, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$unRootListener:Lcom/kingroot/kinguser/bhe$a;

    if-eq v2, v7, :cond_9

    :goto_0
    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/bhe$a;->dt(Z)V

    .line 434
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$cleanRootLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$cleanRootLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    if-nez v2, :cond_a

    .line 442
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 447
    :cond_5
    :goto_1
    return-void

    .line 412
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/bas;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4, v2}, Lcom/kingroot/kinguser/bas;->g(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$unRootListener:Lcom/kingroot/kinguser/bhe$a;

    if-eqz v0, :cond_8

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$unRootListener:Lcom/kingroot/kinguser/bhe$a;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bhe$a;->dt(Z)V

    .line 419
    :cond_8
    invoke-static {}, Lcom/kingroot/kinguser/bhe;->rp()V

    .line 421
    iget-object v1, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$cleanRootLock:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/util/UnRoot$1;->val$cleanRootLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 423
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    move v0, v1

    .line 431
    goto :goto_0

    .line 436
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 443
    :cond_a
    if-ne v2, v7, :cond_5

    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/bhe;->rp()V

    goto :goto_1
.end method
