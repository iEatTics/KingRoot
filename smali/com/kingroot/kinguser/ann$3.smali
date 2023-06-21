.class Lcom/kingroot/kinguser/ann$3;
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
    .line 438
    iput-object p1, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 4

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703e8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v2}, Lcom/kingroot/kinguser/ann;->b(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v3}, Lcom/kingroot/kinguser/ann;->c(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    .line 460
    invoke-static {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 462
    return-void
.end method

.method public h(Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/amz;->z(Ljava/lang/String;Z)V

    .line 445
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->d(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/ale;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ale;->notifyItemRemoved(I)V

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ann;->cz(Z)V

    .line 448
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703ea

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 449
    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->e(Lcom/kingroot/kinguser/ann;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    .line 454
    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v2}, Lcom/kingroot/kinguser/ann;->b(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v3}, Lcom/kingroot/kinguser/ann;->c(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ann$3;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v4}, Lcom/kingroot/kinguser/ann;->f(Lcom/kingroot/kinguser/ann;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 453
    invoke-static {v1, v0, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 455
    return-void
.end method
