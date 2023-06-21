.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aog;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aog;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aog;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    .line 226
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->Iv()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
