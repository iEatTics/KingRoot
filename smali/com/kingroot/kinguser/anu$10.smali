.class Lcom/kingroot/kinguser/anu$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->JK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->s(Lcom/kingroot/kinguser/anu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 581
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->t(Lcom/kingroot/kinguser/anu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->v(Lcom/kingroot/kinguser/anu;)V

    .line 584
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->j(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    .line 585
    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->i(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    .line 586
    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->JG()V

    .line 759
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->h(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 595
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->u(Lcom/kingroot/kinguser/anu;)V

    .line 613
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 614
    iget-object v3, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v3}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/kingroot/kinguser/amo;

    invoke-direct {v4}, Lcom/kingroot/kinguser/amo;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->l(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->m(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->BD()J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    invoke-static {v4, v5, v6, v7}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 623
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bx()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    invoke-static {v4, v5, v6, v7}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 624
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akl;->BC()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    invoke-static {v4, v5, v6, v7}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v1

    .line 625
    iget-object v3, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v3}, Lcom/kingroot/kinguser/anu;->m(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v0, :cond_b

    .line 627
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/amh;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->m(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/amh;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 629
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/akl;->aE(J)V

    .line 630
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18972

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 639
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->j(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 641
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/amk;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->j(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    const-wide/32 v6, 0x7f07041f

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/anu;->V(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/kingroot/kinguser/anu$10$1;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/anu$10$1;-><init>(Lcom/kingroot/kinguser/anu$10;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/kingroot/kinguser/amk;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->k(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 653
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 654
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/amj;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->k(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/amj;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->i(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 659
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 660
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/amk;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->i(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    const-wide/32 v6, 0x7f070421

    invoke-virtual {v5, v6, v7}, Lcom/kingroot/kinguser/anu;->V(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/kingroot/kinguser/anu$10$2;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/anu$10$2;-><init>(Lcom/kingroot/kinguser/anu$10;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/kingroot/kinguser/amk;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 671
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 674
    const v4, 0x7f02008a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    const v4, 0x7f020085

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    const v4, 0x7f020089

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    const v4, 0x7f020088

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    const v4, 0x7f02008e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    const v4, 0x4c7bb5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    const v4, 0x4c7bb6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    const v4, 0x4c7bb8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    const v4, 0x4c7bb9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    const v4, 0x4c7bba

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    const v4, 0x7f070428

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    const v4, 0x7f070423

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    const v4, 0x7f070427

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    const v4, 0x7f070426

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    const v4, 0x7f070424

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v4, Lcom/kingroot/kinguser/amr;

    invoke-direct {v4, v3, v0, v1}, Lcom/kingroot/kinguser/amr;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 693
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 694
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 698
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 699
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/amq;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    const-wide/32 v6, 0x7f070420

    invoke-virtual {v4, v6, v7}, Lcom/kingroot/kinguser/anu;->V(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/amq;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;I)I

    .line 701
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->q(Lcom/kingroot/kinguser/anu;)I

    move-result v1

    iget-object v3, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v3}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;III)V

    .line 702
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/amn;

    invoke-direct {v1}, Lcom/kingroot/kinguser/amn;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->o(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alj;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/alj;->notifyItemChanged(ILjava/lang/Object;)V

    .line 707
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ec

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 710
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/anu$10$3;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/anu$10$3;-><init>(Lcom/kingroot/kinguser/anu$10;)V

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto/16 :goto_0

    .line 597
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->o(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alj;->cx(Z)V

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 600
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->h(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 601
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 602
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_9

    .line 603
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->h(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 604
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 605
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 608
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lcom/kingroot/kinguser/ami;

    invoke-direct {v4, v3}, Lcom/kingroot/kinguser/ami;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 623
    goto/16 :goto_2

    .line 631
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->l(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 633
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 634
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/amp;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->l(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/amp;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3
.end method
