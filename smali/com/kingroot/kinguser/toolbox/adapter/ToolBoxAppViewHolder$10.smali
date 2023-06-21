.class public Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    .line 434
    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    .line 435
    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->p(Lcom/kingroot/kinguser/bfd;)I

    move-result v1

    const-string v2, "Roottool"

    .line 433
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 443
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 415
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->apkUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;I)V

    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->o(Lcom/kingroot/kinguser/bfd;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$10;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->n(Lcom/kingroot/kinguser/bfd;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method
