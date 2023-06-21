.class Lcom/kingroot/kinguser/atm$18;
.super Lcom/kingroot/kinguser/and$a;
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
    .line 1439
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 4

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    const-string v1, "gamebox_main_loginaccount"

    invoke-static {v1}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;Lcom/kingroot/kinguser/tk;)Lcom/kingroot/kinguser/tk;

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->a(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 1462
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aK(Landroid/content/Context;)V

    .line 1463
    return-void
.end method

.method public a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 6

    .prologue
    .line 1449
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->pkgName:Ljava/lang/String;

    sget-object v3, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v3, v3, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    .line 1450
    invoke-static {v5}, Lcom/kingroot/kinguser/atm;->c(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult$Stub;

    move-result-object v5

    .line 1449
    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    .line 1451
    return-void
.end method

.method public c(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 3

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ik()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atm$18;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v2}, Lcom/kingroot/kinguser/atm;->d(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/anx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/kingroot/kinguser/ang;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Z

    .line 1444
    return-void
.end method
