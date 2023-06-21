.class Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFo:Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5$7;->aFo:Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5$7;->aFo:Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-static {v0}, Lcom/kingroot/kinguser/aof;->e(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5$7;->aFo:Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/RecommendAppView$5;->this$0:Lcom/kingroot/kinguser/aof;

    invoke-static {v1}, Lcom/kingroot/kinguser/aof;->e(Lcom/kingroot/kinguser/aof;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 263
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method
