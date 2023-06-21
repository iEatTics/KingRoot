.class public Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 566
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v2}, Lcom/kingroot/kinguser/axd;->c(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 585
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$4;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 597
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$5;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 611
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$7;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 534
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;ILjava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 544
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$6;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v1, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$2;-><init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method
