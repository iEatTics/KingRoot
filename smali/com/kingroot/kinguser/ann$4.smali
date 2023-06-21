.class Lcom/kingroot/kinguser/ann$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ale$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ann;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ann;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 3

    .prologue
    .line 490
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    .line 491
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703e8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public h(Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 472
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    .line 474
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/amz;->z(Ljava/lang/String;Z)V

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->h(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/ale;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ale;->notifyItemRemoved(I)V

    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ann;->cA(Z)V

    .line 478
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703ea

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 479
    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->i(Lcom/kingroot/kinguser/ann;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    .line 484
    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v3}, Lcom/kingroot/kinguser/ann;->c(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ann$4;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v4}, Lcom/kingroot/kinguser/ann;->f(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 483
    invoke-static {v1, v0, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 485
    return-void
.end method
