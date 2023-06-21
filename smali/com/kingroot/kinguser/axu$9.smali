.class Lcom/kingroot/kinguser/axu$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->bm(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;

.field final synthetic bbt:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    iput-object p2, p0, Lcom/kingroot/kinguser/axu$9;->bbt:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->f(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f02c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView;

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v2, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v2}, Lcom/kingroot/kinguser/axu;->g(Lcom/kingroot/kinguser/axu;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    new-instance v1, Lcom/kingroot/kinguser/agi;

    iget-object v2, p0, Lcom/kingroot/kinguser/axu$9;->bbt:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v3}, Lcom/kingroot/kinguser/axu;->h(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/agi$a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/agi;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/agi$a;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axu;->a(Lcom/kingroot/kinguser/axu;Lcom/kingroot/kinguser/agi;)Lcom/kingroot/kinguser/agi;

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v1}, Lcom/kingroot/kinguser/axu;->i(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/agi;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->j(Lcom/kingroot/kinguser/axu;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$9;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v0}, Lcom/kingroot/kinguser/axu;->e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18885

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 219
    return-void
.end method
