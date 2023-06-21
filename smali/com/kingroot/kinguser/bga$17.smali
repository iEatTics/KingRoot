.class Lcom/kingroot/kinguser/bga$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->b(ILjava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bow:I

.field final synthetic box:Ljava/util/List;

.field final synthetic boy:Ljava/util/List;

.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    iput-object p2, p0, Lcom/kingroot/kinguser/bga$17;->box:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/bga$17;->boy:Ljava/util/List;

    iput p4, p0, Lcom/kingroot/kinguser/bga$17;->bow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->h(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->i(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->j(Lcom/kingroot/kinguser/bga;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->k(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->l(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->m(Lcom/kingroot/kinguser/bga;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->n(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->n(Lcom/kingroot/kinguser/bga;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->o(Lcom/kingroot/kinguser/bga;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->box:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->o(Lcom/kingroot/kinguser/bga;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga$17;->box:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->p(Lcom/kingroot/kinguser/bga;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->boy:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->p(Lcom/kingroot/kinguser/bga;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga$17;->boy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 492
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/bga$17;->bow:I

    packed-switch v0, :pswitch_data_0

    .line 510
    :cond_3
    :goto_0
    return-void

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->q(Lcom/kingroot/kinguser/bga;)V

    .line 496
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->r(Lcom/kingroot/kinguser/bga;)V

    goto :goto_0

    .line 499
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bga;->dZ(Z)V

    .line 501
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0}, Lcom/kingroot/kinguser/bga;->s(Lcom/kingroot/kinguser/bga;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bga;->d(Lcom/kingroot/kinguser/bga;Z)Z

    .line 503
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;Z)V

    goto :goto_0

    .line 507
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$17;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bga;->dZ(Z)V

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
