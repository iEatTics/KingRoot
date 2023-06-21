.class public Lcom/kingroot/kinguser/alg;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alg$a;,
        Lcom/kingroot/kinguser/alg$b;
    }
.end annotation


# instance fields
.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aml;",
            ">;"
        }
    .end annotation
.end field

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/alg$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/alg$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aml;",
            ">;",
            "Lcom/kingroot/kinguser/alg$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/alg;->alK:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object p1, p0, Lcom/kingroot/kinguser/alg;->ahM:Ljava/util/List;

    .line 26
    if-eqz p2, :cond_0

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alg;->alK:Ljava/lang/ref/WeakReference;

    .line 29
    :cond_0
    return-void
.end method

.method private GO()Lcom/kingroot/kinguser/alg$a;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/alg;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/alg;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alg$a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/alg;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/alg;->ahM:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/alg;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alg;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/alg;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aml;

    .line 43
    check-cast p1, Lcom/kingroot/kinguser/alg$b;

    .line 44
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/alg$b;->a(Lcom/kingroot/kinguser/aml;)V

    .line 45
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    const v1, 0x7f0300c0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/kingroot/kinguser/alg$b;

    invoke-direct {p0}, Lcom/kingroot/kinguser/alg;->GO()Lcom/kingroot/kinguser/alg$a;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/kingroot/kinguser/alg$b;-><init>(Lcom/kingroot/kinguser/alg;Landroid/view/View;Lcom/kingroot/kinguser/alg$a;)V

    return-object v1
.end method
