.class Lcom/kingroot/kinguser/axr$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axr;->bm(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbr:Lcom/kingroot/kinguser/axr;

.field final synthetic bbt:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axr;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    iput-object p2, p0, Lcom/kingroot/kinguser/axr$5;->bbt:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axr;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f02c6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/axr;->a(Lcom/kingroot/kinguser/axr;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView;

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axr$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v2}, Lcom/kingroot/kinguser/axr;->d(Lcom/kingroot/kinguser/axr;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/axr$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/rc;

    invoke-direct {v1}, Lcom/kingroot/kinguser/rc;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    new-instance v1, Lcom/kingroot/kinguser/agh;

    iget-object v2, p0, Lcom/kingroot/kinguser/axr$5;->bbt:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v3}, Lcom/kingroot/kinguser/axr;->e(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh$k;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/agh;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/agh$k;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axr;->a(Lcom/kingroot/kinguser/axr;Lcom/kingroot/kinguser/agh;)Lcom/kingroot/kinguser/agh;

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->c(Lcom/kingroot/kinguser/axr;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v1}, Lcom/kingroot/kinguser/axr;->f(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->f(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axr$5;->bbt:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agh;->setData(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/axr$5;->bbr:Lcom/kingroot/kinguser/axr;

    invoke-static {v0}, Lcom/kingroot/kinguser/axr;->f(Lcom/kingroot/kinguser/axr;)Lcom/kingroot/kinguser/agh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agh;->notifyDataSetChanged()V

    .line 136
    return-void
.end method
