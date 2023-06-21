.class public Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/alf;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alf;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v2}, Lcom/kingroot/kinguser/alf;->d(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 348
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$5;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 384
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$6;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method
