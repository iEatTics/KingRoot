.class Lcom/kingroot/kinguser/alp$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/btz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayy:Lcom/kingroot/kinguser/alp$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$7;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$7$1;->ayy:Lcom/kingroot/kinguser/alp$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$7$1;->ayy:Lcom/kingroot/kinguser/alp$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$7;->ayx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    if-eqz v0, :cond_1

    .line 570
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    .line 572
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 576
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$7$1;->ayy:Lcom/kingroot/kinguser/alp$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$7;->ayx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    invoke-interface {v0, v1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;->onFetchDiffResult(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_1
    :goto_1
    return-void

    .line 577
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$7$1;->ayy:Lcom/kingroot/kinguser/alp$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$7;->ayx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    if-eqz v0, :cond_1

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    .line 555
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$7$1;->ayy:Lcom/kingroot/kinguser/alp$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$7;->ayx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    invoke-interface {v0, v1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;->onFetchResult(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_1
    :goto_1
    return-void

    .line 560
    :catch_0
    move-exception v0

    goto :goto_1
.end method
