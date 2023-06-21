.class Lcom/kingroot/kinguser/alp$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bun;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$4;->run()V
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
        "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayq:Lcom/kingroot/kinguser/alp$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$4;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$4$1;->ayq:Lcom/kingroot/kinguser/alp$4;

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
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$4$1;->ayq:Lcom/kingroot/kinguser/alp$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$4;->ayp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;

    if-eqz v0, :cond_1

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;

    .line 473
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;-><init>(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$4$1;->ayq:Lcom/kingroot/kinguser/alp$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$4;->ayp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;->onResult(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    :goto_1
    return-void

    .line 478
    :catch_0
    move-exception v0

    goto :goto_1
.end method
