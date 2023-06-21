.class public Lcom/kingroot/kinguser/bfx;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bfx$e;,
        Lcom/kingroot/kinguser/bfx$d;,
        Lcom/kingroot/kinguser/bfx$c;,
        Lcom/kingroot/kinguser/bfx$b;,
        Lcom/kingroot/kinguser/bfx$a;
    }
.end annotation


# instance fields
.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation
.end field

.field private alJ:Lcom/kingroot/kinguser/asf;

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/bfx$d;",
            ">;"
        }
    .end annotation
.end field

.field private bnK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/bfx$e;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/bfx$d;Lcom/kingroot/kinguser/bfx$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;",
            "Lcom/kingroot/kinguser/bfx$d;",
            "Lcom/kingroot/kinguser/bfx$e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx;->alK:Ljava/lang/ref/WeakReference;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx;->alK:Ljava/lang/ref/WeakReference;

    .line 43
    :cond_0
    if-eqz p3, :cond_1

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx;->bnK:Ljava/lang/ref/WeakReference;

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public da(I)Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public e(FF)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 139
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 79
    iget-boolean v0, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 119
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 128
    :goto_0
    return v0

    .line 122
    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 125
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/bfx;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 90
    new-instance v0, Lcom/kingroot/kinguser/asf;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kingroot/kinguser/asf;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/asf$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx;->alJ:Lcom/kingroot/kinguser/asf;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfx;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 92
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 68
    check-cast p1, Lcom/kingroot/kinguser/bfx$a;

    .line 69
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bfx$a;->j(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 70
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    packed-switch p2, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 55
    :pswitch_0
    const v1, 0x7f0300d6

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 56
    new-instance v1, Lcom/kingroot/kinguser/bfx$b;

    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$d;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bfx$b;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/bfx$d;)V

    move-object v0, v1

    goto :goto_0

    .line 58
    :pswitch_1
    const v1, 0x7f0300d7

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    new-instance v1, Lcom/kingroot/kinguser/bfx$c;

    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->bnK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$e;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bfx$c;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/bfx$e;)V

    move-object v0, v1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public r(IZ)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bfx;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/asf;->c(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public vM()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public vN()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method
