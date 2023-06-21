.class Lcom/kingroot/kinguser/axa$8;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axa;->dp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXc:Lcom/kingroot/kinguser/axa;

.field final synthetic aXe:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa;Z)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axa$8;->aXe:Z

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 511
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 517
    iget-boolean v1, p0, Lcom/kingroot/kinguser/axa$8;->aXe:Z

    if-eqz v1, :cond_2

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->d(Lcom/kingroot/kinguser/axa;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axa$8$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axa$8$1;-><init>(Lcom/kingroot/kinguser/axa$8;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move v0, v6

    .line 542
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;Ljava/util/List;)Ljava/util/List;

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 545
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 548
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v7, v6

    .line 549
    :goto_1
    if-ge v7, v9, :cond_4

    .line 550
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    iget-wide v0, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 527
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DE()I

    move-result v1

    .line 528
    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 531
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    .line 532
    invoke-virtual {v2}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 531
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v1

    .line 534
    if-eq v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    .line 538
    invoke-virtual {v2}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 537
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    goto/16 :goto_0

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$8;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DK()Z

    move-result v0

    .line 563
    if-eqz v0, :cond_6

    .line 564
    invoke-static {}, Lcom/kingroot/kinguser/bfn;->aaj()Lcom/kingroot/kinguser/bfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfn;->aak()V

    .line 565
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aks;->bN(Z)V

    .line 567
    :cond_6
    return-void

    :cond_7
    move v0, v6

    goto :goto_2
.end method
