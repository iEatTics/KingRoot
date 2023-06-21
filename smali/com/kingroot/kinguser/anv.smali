.class public Lcom/kingroot/kinguser/anv;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/anv$a;
    }
.end annotation


# instance fields
.field private final aEn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aEo:Lcom/kingroot/kinguser/anv$a;

.field private aEp:Lcom/kingcore/uilib/ProgressWhell;

.field private aEq:Lcom/kingroot/kinguser/ant;

.field private aEr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ant;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/ant;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u817e\u8baf\u8f6f\u4ef6"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anv;->aEr:Ljava/util/List;

    .line 73
    iput-object p3, p0, Lcom/kingroot/kinguser/anv;->aEn:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lcom/kingroot/kinguser/anv;->aEq:Lcom/kingroot/kinguser/ant;

    .line 75
    iput p4, p0, Lcom/kingroot/kinguser/anv;->mType:I

    .line 76
    return-void
.end method

.method private JL()V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEn:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    .line 164
    iget-object v2, p0, Lcom/kingroot/kinguser/anv;->aEr:Ljava/util/List;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->mTitle:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anv;)Lcom/kingcore/uilib/ProgressWhell;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anv;)Lcom/kingroot/kinguser/ant;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEq:Lcom/kingroot/kinguser/ant;

    return-object v0
.end method


# virtual methods
.method public JC()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEo:Lcom/kingroot/kinguser/anv$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anv$a;->notifyDataSetChanged()V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEn:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gT()V

    .line 158
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-direct {p0}, Lcom/kingroot/kinguser/anv;->JL()V

    goto :goto_0
.end method

.method public JD()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gU()V

    .line 176
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 86
    const v0, 0x7f0f01f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/anv$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anv;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anv;->aEn:Ljava/util/List;

    iget v4, p0, Lcom/kingroot/kinguser/anv;->mType:I

    invoke-direct {v0, v2, v3, v4}, Lcom/kingroot/kinguser/anv$a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anv;->aEo:Lcom/kingroot/kinguser/anv$a;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/anv;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/anv;->aEo:Lcom/kingroot/kinguser/anv$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/kinguser/anv$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anv$1;-><init>(Lcom/kingroot/kinguser/anv;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 100
    const v0, 0x7f0f000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v5}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0018

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->aEp:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v2, Lcom/kingroot/kinguser/anv$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anv$2;-><init>(Lcom/kingroot/kinguser/anv;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 116
    const v0, 0x7f0f00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0e0028

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0f0278

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0703e3

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/anv;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/anv;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/anv$3;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anv$3;-><init>(Lcom/kingroot/kinguser/anv;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public oR()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->oR()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method
