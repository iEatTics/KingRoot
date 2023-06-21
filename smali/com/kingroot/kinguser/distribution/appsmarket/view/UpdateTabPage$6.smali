.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 615
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 616
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 629
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$5;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 677
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 596
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 657
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$6;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method
