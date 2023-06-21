.class Lcom/kingroot/kinguser/alp$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bun;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/bun",
        "<",
        "Lcom/kingroot/kinguser/buz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ays:Lcom/kingroot/kinguser/alp$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$5;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$5$1;->ays:Lcom/kingroot/kinguser/alp$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/buz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$5$1;->ays:Lcom/kingroot/kinguser/alp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$5;->ayr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;

    if-eqz v0, :cond_1

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 501
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/buz;

    .line 502
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;-><init>(Lcom/kingroot/kinguser/buz;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$5$1;->ays:Lcom/kingroot/kinguser/alp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$5;->ayr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;->onResult(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_1
    :goto_1
    return-void

    .line 507
    :catch_0
    move-exception v0

    goto :goto_1
.end method
