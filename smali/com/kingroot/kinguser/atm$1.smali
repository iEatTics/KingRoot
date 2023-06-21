.class Lcom/kingroot/kinguser/atm$1;
.super Lcom/kingroot/kinguser/we$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLcom/kingroot/kinguser/wd$a;)V
    .locals 6

    .prologue
    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, p2, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, p2, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v2}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    .line 229
    invoke-static {v3}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v3

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v4}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/atm$1;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v5}, Lcom/kingroot/kinguser/atm;->c(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;

    move-result-object v5

    .line 228
    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    .line 231
    :cond_1
    return-void
.end method
