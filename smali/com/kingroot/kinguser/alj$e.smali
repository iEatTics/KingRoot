.class Lcom/kingroot/kinguser/alj$e;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/alj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private final ajP:Landroid/widget/TextView;

.field final synthetic axi:Lcom/kingroot/kinguser/alj;

.field private final axx:Landroid/view/View;

.field private axy:Lcom/kingroot/kinguser/ali;

.field private final axz:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alj;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 616
    iput-object p1, p0, Lcom/kingroot/kinguser/alj$e;->axi:Lcom/kingroot/kinguser/alj;

    .line 617
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 618
    const v0, 0x7f0f00d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    .line 619
    const v0, 0x7f0f00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axx:Landroid/view/View;

    .line 620
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$e;->ajP:Landroid/widget/TextView;

    .line 621
    new-instance v0, Lcom/kingroot/kinguser/ali;

    invoke-static {p1}, Lcom/kingroot/kinguser/alj;->b(Lcom/kingroot/kinguser/alj;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ali;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axy:Lcom/kingroot/kinguser/ali;

    .line 622
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/alj$e;->axy:Lcom/kingroot/kinguser/ali;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 623
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 625
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 626
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/alj$e$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/alj$e$1;-><init>(Lcom/kingroot/kinguser/alj$e;Lcom/kingroot/kinguser/alj;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 633
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/qk;->a(Landroid/support/v7/widget/RecyclerView;I)Lcom/kingroot/kinguser/qf;

    .line 634
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alj$e;)Lcom/kingroot/kinguser/ali;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axy:Lcom/kingroot/kinguser/ali;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/alj$e;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->ajP:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/alj$e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axx:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/alj$e;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/kingroot/kinguser/alj$e;->axz:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
