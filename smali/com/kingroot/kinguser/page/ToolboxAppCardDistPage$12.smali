.class public Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;->this$0:Lcom/kingroot/kinguser/ayb;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    .line 600
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;->this$0:Lcom/kingroot/kinguser/ayb;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    .line 605
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->i(Lcom/kingroot/kinguser/ayb;)V

    .line 606
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$12;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 588
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 589
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 595
    return-void
.end method
