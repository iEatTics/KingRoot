.class Lcom/kingroot/kinguser/aoj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ale$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    .line 407
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703e8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    .line 406
    invoke-static {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 408
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 417
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1897a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 418
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->d(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 419
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akl;->BE()Z

    move-result v1

    .line 421
    if-nez v1, :cond_0

    .line 422
    new-instance v1, Lcom/kingroot/kinguser/bid;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->h(Lcom/kingroot/kinguser/aoj;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 423
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 424
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07047f

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07047e

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 427
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->iY(I)V

    .line 428
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0700c7

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 430
    new-instance v2, Lcom/kingroot/kinguser/aoj$5$1;

    invoke-direct {v2, p0, v1}, Lcom/kingroot/kinguser/aoj$5$1;-><init>(Lcom/kingroot/kinguser/aoj$5;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 437
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akl;->BF()V

    .line 440
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aoj$5;->h(Landroid/view/View;I)V

    .line 441
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x1

    new-instance v6, Lcom/kingroot/kinguser/aoj$5$2;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/aoj$5$2;-><init>(Lcom/kingroot/kinguser/aoj$5;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 449
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070482

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 450
    return-void
.end method

.method public h(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 389
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    .line 390
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/amz;->z(Ljava/lang/String;Z)V

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->d(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->e(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/ale;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ale;->notifyItemRemoved(I)V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoj;->cE(Z)V

    .line 395
    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 399
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->f(Lcom/kingroot/kinguser/aoj;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    .line 400
    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v4}, Lcom/kingroot/kinguser/aoj;->g(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 399
    invoke-static {v1, v0, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 401
    return-void
.end method

.method public j(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 412
    return-void
.end method
