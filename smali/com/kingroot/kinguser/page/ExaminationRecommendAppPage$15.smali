.class public Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 618
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 620
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->i(Lcom/kingroot/kinguser/axi;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v2}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 622
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 627
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$15;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 607
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 609
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 610
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 614
    return-void
.end method
