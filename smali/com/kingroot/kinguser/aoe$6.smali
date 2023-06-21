.class public Lcom/kingroot/kinguser/aoe$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoe;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aFg:Lcom/kingroot/kinguser/aoe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoe;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoe;->e(Lcom/kingroot/kinguser/aoe;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoe;->e(Lcom/kingroot/kinguser/aoe;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    new-instance v5, Lcom/kingroot/kinguser/distribution/appsmarket/view/PopRecommendAppSplashPage$6$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/PopRecommendAppSplashPage$6$1;-><init>(Lcom/kingroot/kinguser/aoe$6;)V

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoe;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoe;->e(Lcom/kingroot/kinguser/aoe;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoe;->e(Lcom/kingroot/kinguser/aoe;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->appName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/webview/WebViewActivity;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->a(Lcom/kingroot/kinguser/aoe;)V

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->f(Lcom/kingroot/kinguser/aoe;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aoe$6;->aFg:Lcom/kingroot/kinguser/aoe;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoe;->f(Lcom/kingroot/kinguser/aoe;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method
