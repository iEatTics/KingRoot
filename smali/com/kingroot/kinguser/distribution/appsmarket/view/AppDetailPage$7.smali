.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ank;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;)V
    .locals 3

    .prologue
    .line 524
    if-eqz p2, :cond_0

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    iput-boolean v0, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->isUpdate:Z

    .line 527
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isDiff:Z

    iput-boolean v0, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->isDiff:Z

    .line 528
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/ank;->a(Lcom/kingroot/kinguser/ank;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 530
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 547
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ank;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    iget-object v1, v1, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingcore/uilib/TextRoundCornerProgressBar;)V

    .line 553
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ank;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
