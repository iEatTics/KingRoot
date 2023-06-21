.class Lcom/kingroot/kinguser/aog$1;
.super Lcom/kingroot/kinguser/and$a;
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
    .line 146
    iput-object p1, p0, Lcom/kingroot/kinguser/aog$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-direct {p0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 1

    .prologue
    .line 162
    invoke-static {p1}, Lcom/kingroot/kinguser/activitys/ShareLoginActivity;->aK(Landroid/content/Context;)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/aog$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0, p3}, Lcom/kingroot/kinguser/aog;->a(Lcom/kingroot/kinguser/aog;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 165
    return-void
.end method

.method public a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->pkgName:Ljava/lang/String;

    sget-object v3, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v3, v3, Lcom/kingroot/kinguser/wd$a;->My:Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/wd;->Mu:Lcom/kingroot/kinguser/wd$a;

    iget-object v4, v4, Lcom/kingroot/kinguser/wd$a;->Mz:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/aog$1;->this$0:Lcom/kingroot/kinguser/aog;

    .line 157
    invoke-static {v5}, Lcom/kingroot/kinguser/aog;->a(Lcom/kingroot/kinguser/aog;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    move-result-object v5

    .line 156
    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    .line 158
    return-void
.end method

.method public c(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/aog$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ik()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aog$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aog;->Jg()Lcom/kingroot/kinguser/ano;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ano;->Jm()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/kingroot/kinguser/ang;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Z

    .line 151
    return-void
.end method
