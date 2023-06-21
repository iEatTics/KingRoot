.class public Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayv;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ayv;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayv;->a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 407
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/azo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azo;-><init>()V

    .line 408
    invoke-static {p1}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azo;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 409
    new-instance v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;-><init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azo;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayv;->a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 424
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/azp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azp;-><init>()V

    .line 425
    invoke-static {p1}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azp;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 426
    new-instance v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$4;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$4;-><init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azp;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayv;->a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 441
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/azq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azq;-><init>()V

    .line 442
    invoke-static {p1}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azq;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 443
    new-instance v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$5;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$5;-><init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azq;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 450
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v0

    const v1, 0x40bf6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aye;->bi(I)V

    goto :goto_0
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayv;->a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/azr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azr;-><init>()V

    .line 461
    invoke-static {p1}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azr;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 462
    new-instance v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$6;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$6;-><init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azr;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayv;->a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/azs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azs;-><init>()V

    .line 372
    invoke-static {p2}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azs;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 373
    new-instance v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$1;-><init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azs;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayv;->a(Lcom/kingroot/kinguser/ayv;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/azt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/azt;-><init>()V

    .line 391
    invoke-static {p1}, Lcom/kingroot/kinguser/ayt;->f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/azt;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 392
    new-instance v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$2;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$2;-><init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azt;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
