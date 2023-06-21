.class Lcom/kingroot/kinguser/awt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awt;->Tx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/kingroot/kinguser/awt$4;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 562
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v4

    .line 564
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aeg;->uf()Z

    move-result v2

    .line 567
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aeg;->tc()Z

    move-result v5

    .line 570
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v6

    .line 571
    const/4 v0, 0x0

    .line 572
    if-eqz v6, :cond_4

    iget-object v3, v6, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 573
    iget-object v0, v6, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    move-object v3, v0

    .line 576
    :goto_0
    if-nez v3, :cond_3

    move v0, v1

    .line 580
    :goto_1
    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 584
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aeg;->ug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const v0, 0x7f0703c2

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->bE(I)V

    .line 597
    :goto_2
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, v3, v6}, Lcom/kingroot/kinguser/aei;->a(ILcom/kingroot/common/network/download/UpdateInfo;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_2

    .line 594
    :catch_0
    move-exception v0

    goto :goto_2

    .line 589
    :cond_1
    if-eqz v0, :cond_2

    .line 590
    const/4 v0, 0x4

    invoke-static {v0, v3, v6}, Lcom/kingroot/kinguser/aei;->a(ILcom/kingroot/common/network/download/UpdateInfo;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_2

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$4;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awt;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move-object v3, v0

    goto :goto_0
.end method
