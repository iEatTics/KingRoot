.class Landroid/support/v7/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 593
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 631
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_1

    .line 633
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 642
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->access$1300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 643
    return-void
.end method

.method public detachViewFromParent(I)V
    .locals 4

    .prologue
    .line 647
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_1

    .line 649
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 661
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->access$1400(Landroid/support/v7/widget/RecyclerView;I)V

    .line 662
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 625
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 666
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_0

    .line 668
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1500(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 670
    :cond_0
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 674
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 676
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$1600(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 678
    :cond_0
    return-void
.end method

.method public removeAllViews()V
    .locals 4

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$5;->getChildCount()I

    move-result v1

    .line 617
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 618
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 617
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 621
    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 603
    if-eqz v0, :cond_0

    .line 604
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 606
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 607
    return-void
.end method
