.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBP:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

.field final synthetic aww:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->aBP:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iput p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->aww:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->aww:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setPercentage(I)V

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->aBP:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 348
    :cond_0
    return-void
.end method
