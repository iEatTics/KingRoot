.class Lcom/kingroot/kinguser/alj$l;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field private axK:Lcom/kingroot/kinguser/alk;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field private final axz:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$l;->axi:Lcom/kingroot/kinguser/alj;

    .line 669
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 670
    const v0, 0x7f0f00d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    .line 671
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/kinguser/anj;

    invoke-direct {v1}, Lcom/kingroot/kinguser/anj;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 672
    new-instance v0, Lcom/kingroot/kinguser/alk;

    invoke-static {p1}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/alk;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axK:Lcom/kingroot/kinguser/alk;

    .line 673
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$l;->axK:Lcom/kingroot/kinguser/alk;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 674
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 676
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 677
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/qk;->a(Landroid/support/v7/widget/RecyclerView;I)Lcom/kingroot/kinguser/qf;

    .line 678
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj$l;)Lcom/kingroot/kinguser/alk;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$l;->axK:Lcom/kingroot/kinguser/alk;

    return-object v0
.end method
