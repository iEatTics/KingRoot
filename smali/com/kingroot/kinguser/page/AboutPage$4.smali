.class public Lcom/kingroot/kinguser/page/AboutPage$4;
.super Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awt;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/kingroot/kinguser/page/AboutPage$4;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-direct {p0}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckEvent(I)V
    .locals 1

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    const v0, 0x7f0703c1

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->bE(I)V

    .line 521
    :cond_0
    return-void
.end method

.method public onCheckFinished(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lcom/kingroot/kinguser/page/AboutPage$4;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v1}, Lcom/kingroot/kinguser/awt;->f(Lcom/kingroot/kinguser/awt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget v1, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 538
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 539
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 540
    iget-object v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    .line 543
    :goto_1
    if-eqz v1, :cond_2

    .line 545
    const/4 v1, 0x4

    invoke-static {v1, v0, p1}, Lcom/kingroot/kinguser/aei;->a(ILcom/kingroot/common/network/download/UpdateInfo;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AboutPage$4;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->Tw()V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/page/AboutPage$4;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v0}, Lcom/kingroot/kinguser/awt;->g(Lcom/kingroot/kinguser/awt;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public onCheckStarted()V
    .locals 1

    .prologue
    .line 514
    const v0, 0x7f0703c0

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->bE(I)V

    .line 515
    return-void
.end method
