.class public Lcom/kingroot/kinguser/ale;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ale$c;,
        Lcom/kingroot/kinguser/ale$a;,
        Lcom/kingroot/kinguser/ale$d;,
        Lcom/kingroot/kinguser/ale$b;
    }
.end annotation


# instance fields
.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
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
            "Lcom/kingroot/kinguser/ale$a;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/ale$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;",
            "Lcom/kingroot/kinguser/ale$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ale;->alK:Ljava/lang/ref/WeakReference;

    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    .line 52
    if-eqz p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale;->alK:Ljava/lang/ref/WeakReference;

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public da(I)Z
    .locals 1

    .prologue
    .line 117
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
    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 153
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    invoke-interface {v0}, Lcom/kingroot/kinguser/ame;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 126
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 142
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 130
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 132
    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/ale;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 97
    new-instance v0, Lcom/kingroot/kinguser/asf;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kingroot/kinguser/asf;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/asf$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ale;->alJ:Lcom/kingroot/kinguser/asf;

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 99
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/ale;->getItemViewType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 74
    :sswitch_0
    check-cast p1, Lcom/kingroot/kinguser/ale$b;

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ale$b;->a(Lcom/kingroot/kinguser/ame;)V

    goto :goto_0

    .line 78
    :sswitch_1
    check-cast p1, Lcom/kingroot/kinguser/ale$d;

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ale$d;->a(Lcom/kingroot/kinguser/ame;)V

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    sparse-switch p2, :sswitch_data_0

    .line 67
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :sswitch_0
    new-instance v1, Lcom/kingroot/kinguser/ale$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300a9

    .line 62
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$a;

    invoke-direct {v1, p0, v2, v0}, Lcom/kingroot/kinguser/ale$b;-><init>(Lcom/kingroot/kinguser/ale;Landroid/view/View;Lcom/kingroot/kinguser/ale$a;)V

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 64
    :sswitch_1
    new-instance v1, Lcom/kingroot/kinguser/ale$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300ad

    .line 65
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ale$c;

    invoke-direct {v1, p0, v2, v0}, Lcom/kingroot/kinguser/ale$d;-><init>(Lcom/kingroot/kinguser/ale;Landroid/view/View;Lcom/kingroot/kinguser/ale$c;)V

    move-object v0, v1

    .line 64
    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public r(IZ)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/ale;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ale;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/asf;->c(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public vM()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public vN()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method
