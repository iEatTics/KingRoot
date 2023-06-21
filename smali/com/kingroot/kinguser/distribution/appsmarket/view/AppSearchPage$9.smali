.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anq;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 628
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v2}, Lcom/kingroot/kinguser/anq;->q(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 629
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 657
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 661
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 689
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$7;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 700
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 595
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 606
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 675
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$6;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 611
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method
