.class public Lcom/kingroot/kinguser/rb$c;
.super Lcom/kingroot/kinguser/rb$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic Fv:Lcom/kingroot/kinguser/rb;

.field mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 674
    iput-object p1, p0, Lcom/kingroot/kinguser/rb$c;->Fv:Lcom/kingroot/kinguser/rb;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/rb$e;-><init>(Lcom/kingroot/kinguser/rb$1;)V

    .line 675
    iput-object p2, p0, Lcom/kingroot/kinguser/rb$c;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 676
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 683
    invoke-static {p1}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 684
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 687
    invoke-static {p1}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 688
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$c;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$c;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/rb;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 689
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$c;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v0, v0, Lcom/kingroot/kinguser/rb;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$c;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$c;->Fv:Lcom/kingroot/kinguser/rb;

    invoke-static {v0}, Lcom/kingroot/kinguser/rb;->e(Lcom/kingroot/kinguser/rb;)V

    .line 691
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/kingroot/kinguser/rb$c;->Fv:Lcom/kingroot/kinguser/rb;

    iget-object v1, p0, Lcom/kingroot/kinguser/rb$c;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/rb;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 680
    return-void
.end method
