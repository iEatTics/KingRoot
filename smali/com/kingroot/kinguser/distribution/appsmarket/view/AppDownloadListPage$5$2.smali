.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBP:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;->aBP:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setPercentage(I)V

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;->aBP:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 362
    :cond_0
    return-void
.end method
