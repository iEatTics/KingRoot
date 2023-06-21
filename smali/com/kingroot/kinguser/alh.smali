.class public Lcom/kingroot/kinguser/alh;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alh$b;,
        Lcom/kingroot/kinguser/alh$c;,
        Lcom/kingroot/kinguser/alh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/kingroot/kinguser/alh$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final awO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/alh$c;",
            ">;"
        }
    .end annotation
.end field

.field private awP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/alh$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alh$c;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alh;->awO:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alh;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awO:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/alh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/alh$a;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    const v1, 0x7f0300d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/kingroot/kinguser/alh$a;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/alh$a;-><init>(Lcom/kingroot/kinguser/alh;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lcom/kingroot/kinguser/alh$a;I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alh$b;

    .line 53
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/alh$a;->a(Lcom/kingroot/kinguser/alh$b;)V

    .line 54
    return-void
.end method

.method public av(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/alh$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alh;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public ff(I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alh;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/alh;->awP:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/kingroot/kinguser/alh$a;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/alh;->a(Lcom/kingroot/kinguser/alh$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/alh;->a(Landroid/view/ViewGroup;I)Lcom/kingroot/kinguser/alh$a;

    move-result-object v0

    return-object v0
.end method
