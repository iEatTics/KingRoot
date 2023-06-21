.class public Lcom/kingroot/kinguser/agi;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agi$a;,
        Lcom/kingroot/kinguser/agi$c;,
        Lcom/kingroot/kinguser/agi$b;
    }
.end annotation


# instance fields
.field private alI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agi$c;",
            ">;"
        }
    .end annotation
.end field

.field private ams:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agi$a;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/agi$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agi$c;",
            ">;",
            "Lcom/kingroot/kinguser/agi$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/agi;->alI:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/agi;->ams:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agi;->ams:Ljava/lang/ref/WeakReference;

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/agi;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/agi;->ams:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/agi;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/agi;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/agi;->alI:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agi$c;

    .line 62
    check-cast p1, Lcom/kingroot/kinguser/agi$b;

    .line 63
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/agi$b;->a(Lcom/kingroot/kinguser/agi$c;)V

    .line 64
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->h(Landroid/view/View;)V

    .line 56
    new-instance v1, Lcom/kingroot/kinguser/agi$b;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/agi$b;-><init>(Lcom/kingroot/kinguser/agi;Landroid/view/View;)V

    return-object v1
.end method
