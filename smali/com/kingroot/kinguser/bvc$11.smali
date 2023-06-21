.class Lcom/kingroot/kinguser/bvc$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->b(ILcom/kingroot/kinguser/bun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic aye:I

.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPd:Lcom/kingroot/kinguser/bun;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bun;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$11;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$11;->bPd:Lcom/kingroot/kinguser/bun;

    iput p3, p0, Lcom/kingroot/kinguser/bvc$11;->aye:I

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    if-eqz p1, :cond_1

    .line 597
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$11;->bPd:Lcom/kingroot/kinguser/bun;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$11;->bPd:Lcom/kingroot/kinguser/bun;

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetBanner;

    .line 604
    iget v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetBanner;->retCode:I

    .line 612
    iget-object v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetBanner;->vecBannerDetail:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 613
    iget-object v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetBanner;->vecBannerDetail:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 616
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 637
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 639
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/bvc$11;->aye:I

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 639
    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/bvm;->m(IJ)V

    .line 641
    invoke-static {}, Lcom/kingroot/kinguser/bvk;->aiy()Lcom/kingroot/kinguser/bvk;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/bvc$11;->aye:I

    invoke-virtual {v0, v1, v2, v6}, Lcom/kingroot/kinguser/bvk;->a(Ljava/util/List;II)Z

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$11;->bPd:Lcom/kingroot/kinguser/bun;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$11;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v6, v1}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0

    .line 616
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;

    .line 617
    const-string v3, "SeachSoftEngine"

    .line 618
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "|categoryId,"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/kingroot/kinguser/bvc$11;->aye:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/kingroot/kinguser/bvc;->b(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v3, v4}, Lcom/kingroot/kinguser/but;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {v0}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 628
    iget v3, p0, Lcom/kingroot/kinguser/bvc$11;->aye:I

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;I)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_3

    .line 630
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
