.class Lcom/kingroot/kinguser/aog$2;
.super Lcom/kingroot/kinguser/we$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aog;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aog;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-direct {p0}, Lcom/kingroot/kinguser/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLcom/kingroot/kinguser/wd$a;)V
    .locals 6

    .prologue
    .line 205
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, p2, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, p2, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v1}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v2}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    .line 210
    invoke-static {v3}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v3

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v4}, Lcom/kingroot/kinguser/aog;->c(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/aog$2;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v5}, Lcom/kingroot/kinguser/aog;->a(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    move-result-object v5

    .line 209
    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    .line 212
    :cond_0
    return-void
.end method
