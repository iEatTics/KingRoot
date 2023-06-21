.class public Lcom/kingroot/kinguser/agh;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asf$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agh$k;,
        Lcom/kingroot/kinguser/agh$c;,
        Lcom/kingroot/kinguser/agh$d;,
        Lcom/kingroot/kinguser/agh$g;,
        Lcom/kingroot/kinguser/agh$i;,
        Lcom/kingroot/kinguser/agh$l;,
        Lcom/kingroot/kinguser/agh$h;,
        Lcom/kingroot/kinguser/agh$e;,
        Lcom/kingroot/kinguser/agh$j;,
        Lcom/kingroot/kinguser/agh$b;,
        Lcom/kingroot/kinguser/agh$f;,
        Lcom/kingroot/kinguser/agh$a;
    }
.end annotation


# instance fields
.field private alI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
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
            "Lcom/kingroot/kinguser/agh$k;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kingroot/kinguser/agh$k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;",
            "Lcom/kingroot/kinguser/agh$k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh;->alK:Ljava/lang/ref/WeakReference;

    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/agh;->alI:Ljava/util/List;

    .line 63
    if-eqz p2, :cond_0

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agh;->alK:Ljava/lang/ref/WeakReference;

    .line 66
    :cond_0
    return-void
.end method

.method private vL()Lcom/kingroot/kinguser/agh$k;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agh$k;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public da(I)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 176
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcy;->Yp()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    instance-of v0, p1, Lcom/kingroot/kinguser/agh$j;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/kingroot/kinguser/agh$j;

    .line 153
    invoke-static {v0}, Lcom/kingroot/kinguser/agh$j;->a(Lcom/kingroot/kinguser/agh$j;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 158
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 160
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 165
    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/agh;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 127
    new-instance v0, Lcom/kingroot/kinguser/asf;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kingroot/kinguser/asf;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/asf$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agh;->alJ:Lcom/kingroot/kinguser/asf;

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/agh;->alJ:Lcom/kingroot/kinguser/asf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 129
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/agh;->alI:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 120
    check-cast p1, Lcom/kingroot/kinguser/agh$a;

    .line 121
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/agh$a;->a(Lcom/kingroot/kinguser/bcy;)V

    .line 122
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    packed-switch p2, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    const v1, 0x7f0300c6

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    new-instance v0, Lcom/kingroot/kinguser/agh$f;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/agh$f;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 87
    :pswitch_1
    const v1, 0x7f03003d

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    new-instance v0, Lcom/kingroot/kinguser/agh$e;

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/agh$e;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto :goto_0

    .line 91
    :pswitch_2
    const v1, 0x7f03003c

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/agh$j;

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agh$j;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto :goto_0

    .line 95
    :pswitch_3
    const v1, 0x7f0300c8

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    new-instance v0, Lcom/kingroot/kinguser/agh$g;

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/agh$g;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto :goto_0

    .line 99
    :pswitch_4
    const v1, 0x7f0300c9

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/agh$l;

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/agh$l;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto :goto_0

    .line 103
    :pswitch_5
    const v1, 0x7f0300c7

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    new-instance v0, Lcom/kingroot/kinguser/agh$i;

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/agh$i;-><init>(Lcom/kingroot/kinguser/agh;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto :goto_0

    .line 107
    :pswitch_6
    const v1, 0x7f0300c5

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    new-instance v0, Lcom/kingroot/kinguser/agh$d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/kingroot/kinguser/agh$d;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto :goto_0

    .line 110
    :pswitch_7
    const v1, 0x7f030041

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/agh$c;

    invoke-direct {p0}, Lcom/kingroot/kinguser/agh;->vL()Lcom/kingroot/kinguser/agh$k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agh$c;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    goto/16 :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/agh;->alI:Ljava/util/List;

    .line 70
    return-void
.end method

.method public vM()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public vN()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
