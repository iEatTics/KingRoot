.class Lcom/kingroot/kinguser/atn$8;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/kingroot/kinguser/asx;->OK()Lcom/kingroot/kinguser/asx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/asx;->m(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 561
    iget-object v1, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iget v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->categoryId:I

    .line 562
    iget-object v1, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/atn;->a(Lcom/kingroot/kinguser/atn;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 563
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->p(Lcom/kingroot/kinguser/atn;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$8;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atn;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    :cond_0
    return-void
.end method
