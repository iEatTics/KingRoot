.class public Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atn;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->f(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 371
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$4;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 380
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 385
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$5;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 397
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 401
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$6;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 410
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$3;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 414
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$7;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 340
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6$2;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method
