.class public Lcom/kingroot/kinguser/aoc;
.super Lcom/kingroot/kinguser/anw;
.source "SourceFile"


# instance fields
.field private aEX:Landroid/support/v7/widget/RecyclerView;

.field private aEY:Landroid/widget/Button;

.field private aEZ:Lcom/kingroot/kinguser/alh;

.field protected final awO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/alh$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;Lcom/kingroot/kinguser/alh$c;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anw;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoc;->awO:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoc;->gq()V

    .line 31
    return-void
.end method

.method private gq()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->mView:Landroid/view/View;

    const v1, 0x7f0f01be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEX:Landroid/support/v7/widget/RecyclerView;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEX:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/kingroot/kinguser/aoc;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEX:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 37
    new-instance v1, Lcom/kingroot/kinguser/alh;

    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->awO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alh$c;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/alh;-><init>(Lcom/kingroot/kinguser/alh$c;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/aoc;->aEZ:Lcom/kingroot/kinguser/alh;

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEX:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoc;->aEZ:Lcom/kingroot/kinguser/alh;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->mView:Landroid/view/View;

    const v1, 0x7f0f01bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEY:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public aS(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    new-instance v3, Lcom/kingroot/kinguser/alh$b;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/kingroot/kinguser/alh$b;-><init>(ILjava/lang/String;)V

    .line 58
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEY:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEZ:Lcom/kingroot/kinguser/alh;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alh;->av(Ljava/util/List;)V

    .line 62
    return-void
.end method

.method public aT(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    new-instance v3, Lcom/kingroot/kinguser/alh$b;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Lcom/kingroot/kinguser/alh$b;-><init>(ILjava/lang/String;)V

    .line 68
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEY:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEZ:Lcom/kingroot/kinguser/alh;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alh;->av(Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public ff(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEZ:Lcom/kingroot/kinguser/alh;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/alh;->ff(I)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoc;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aoa;->AV()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x7f0f01bd
        :pswitch_0
    .end packed-switch
.end method
