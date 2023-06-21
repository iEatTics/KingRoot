.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anl;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anl;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 370
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-static {v2}, Lcom/kingroot/kinguser/anl;->b(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 371
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 399
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$5;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$7;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 411
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$6;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method
