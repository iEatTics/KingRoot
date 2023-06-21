.class public Lcom/kingroot/kinguser/anz;
.super Lcom/kingroot/kinguser/anw;
.source "SourceFile"


# instance fields
.field private aAF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aml;",
            ">;"
        }
    .end annotation
.end field

.field private final aEJ:Lcom/kingroot/kinguser/alg$a;

.field private aEK:Landroid/support/v7/widget/RecyclerView;

.field private aEL:Lcom/kingroot/kinguser/alg;

.field private aEM:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;Lcom/kingroot/kinguser/alg$a;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anw;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    .line 41
    iput-object p3, p0, Lcom/kingroot/kinguser/anz;->aEJ:Lcom/kingroot/kinguser/alg$a;

    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/anz;->gq()V

    .line 43
    return-void
.end method

.method private gq()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->mView:Landroid/view/View;

    const v1, 0x7f0f01bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anz;->aEK:Landroid/support/v7/widget/RecyclerView;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/alg;

    iget-object v1, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/anz;->aEJ:Lcom/kingroot/kinguser/alg$a;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/alg;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/alg$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anz;->aEL:Lcom/kingroot/kinguser/alg;

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/anz$1;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/anz$1;-><init>(Lcom/kingroot/kinguser/anz;II)V

    .line 59
    iget-object v1, p0, Lcom/kingroot/kinguser/anz;->aEK:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aEK:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aEK:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/anz;->aEL:Lcom/kingroot/kinguser/alg;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->mView:Landroid/view/View;

    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/anz;->aEM:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aEM:Landroid/widget/Button;

    const v1, 0x7f070408

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aEM:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method public av(Ljava/util/List;)V
    .locals 6
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
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 74
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    new-instance v3, Lcom/kingroot/kinguser/aml;

    invoke-direct {v3, v0, v4}, Lcom/kingroot/kinguser/aml;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anz;->aAF:Ljava/util/List;

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aEL:Lcom/kingroot/kinguser/alg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alg;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/anz;->aEz:Lcom/kingroot/kinguser/aoa;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aoa;->cB(Z)V

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 94
    return-void
.end method
