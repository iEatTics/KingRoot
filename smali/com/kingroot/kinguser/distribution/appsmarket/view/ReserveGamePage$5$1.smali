.class Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;->onResult(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFv:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

.field final synthetic aFw:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;->aFw:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;->aFv:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;->aFw:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0}, Lcom/kingroot/kinguser/aog;->b(Lcom/kingroot/kinguser/aog;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;->aFv:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->activityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 231
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$5$1;->aFv:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;)V

    .line 237
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0
.end method
