.class public Lcom/kingroot/kinguser/and$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/and;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 1

    .prologue
    .line 549
    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->In()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    check-cast p1, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {p1, p2}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 561
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 557
    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/and;->d(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public b(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 1

    .prologue
    .line 566
    if-eqz p1, :cond_0

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 570
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/and$a;->c(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 571
    return-void
.end method

.method public c(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

.method public d(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public fF(I)V
    .locals 0

    .prologue
    .line 589
    return-void
.end method
