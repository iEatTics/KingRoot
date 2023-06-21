.class public Lcom/kingroot/kinguser/biv;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aRB:Lcom/kingroot/kinguser/bed;

.field private anW:Lcom/kingroot/kinguser/ada;

.field private aoy:Lcom/kingroot/kinguser/bid;

.field private buQ:Landroid/view/View;

.field private buR:Landroid/widget/Button;

.field private buS:Lcom/kingroot/common/uilib/FixLinearLayoutManager;

.field private buT:Z

.field private buU:Z

.field private buV:Lcom/kingroot/kinguser/bit;

.field private buW:Landroid/view/View;

.field private buX:Lcom/kingroot/kinguser/bit$b;

.field private mAnimating:Z

.field private mHandler:Landroid/os/Handler;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private zv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v4, p0, Lcom/kingroot/kinguser/biv;->buT:Z

    .line 55
    iput-boolean v0, p0, Lcom/kingroot/kinguser/biv;->buU:Z

    .line 56
    iput-boolean v0, p0, Lcom/kingroot/kinguser/biv;->mAnimating:Z

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/bit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bit;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->buV:Lcom/kingroot/kinguser/bit;

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/biv$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/biv$1;-><init>(Lcom/kingroot/kinguser/biv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->mHandler:Landroid/os/Handler;

    .line 261
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/biv$9;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/biv$9;-><init>(Lcom/kingroot/kinguser/biv;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->aRB:Lcom/kingroot/kinguser/bed;

    .line 276
    new-instance v0, Lcom/kingroot/kinguser/biv$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/biv$10;-><init>(Lcom/kingroot/kinguser/biv;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->buX:Lcom/kingroot/kinguser/bit$b;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/biv;)Lcom/kingroot/kinguser/bit;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buV:Lcom/kingroot/kinguser/bit;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/biv;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/biv;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/biv;Z)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/biv;->ei(Z)V

    return-void
.end method

.method private aG(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->ar(Z)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ada;->aq(Z)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->c(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    new-instance v1, Lcom/kingroot/kinguser/biv$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/biv$5;-><init>(Lcom/kingroot/kinguser/biv;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->b(Landroid/view/View$OnClickListener;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ada;->ar(Z)V

    goto :goto_0
.end method

.method private adn()V
    .locals 2

    .prologue
    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/biv;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/biv;->mAnimating:Z

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/biv;->buT:Z

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buQ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buV:Lcom/kingroot/kinguser/bit;

    iget-object v1, p0, Lcom/kingroot/kinguser/biv;->buX:Lcom/kingroot/kinguser/bit$b;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bit;->a(Lcom/kingroot/kinguser/bit$b;)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buV:Lcom/kingroot/kinguser/bit;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bit;->adl()V

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188de

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/biv;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/kingroot/kinguser/biv;->buU:Z

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/biv;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingroot/kinguser/biv;->adn()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/biv;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingroot/kinguser/biv;->wC()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/biv;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private ei(Z)V
    .locals 4

    .prologue
    const v3, 0x188e8

    const/4 v1, 0x0

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/biq;->eh(Z)V

    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aks;->cq(Z)V

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cp(Z)V

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/biv;->buQ:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 159
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/biv;->aG(Z)V

    .line 161
    if-eqz p1, :cond_3

    .line 162
    iput-boolean v1, p0, Lcom/kingroot/kinguser/biv;->mAnimating:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/biv;->buT:Z

    .line 167
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buV:Lcom/kingroot/kinguser/bit;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bit;->notifyDataSetChanged()V

    .line 169
    if-eqz p1, :cond_4

    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bj(I)V

    .line 176
    :goto_2
    return-void

    :cond_2
    move v0, v1

    .line 158
    goto :goto_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    .line 174
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bk(I)V

    goto :goto_2
.end method

.method private r(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 201
    new-instance v0, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 202
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 206
    const v3, 0x7f07044d

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 209
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 210
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 212
    new-instance v1, Lcom/kingroot/kinguser/biv$6;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/biv$6;-><init>(Lcom/kingroot/kinguser/biv;Lcom/kingroot/kinguser/aic;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->show()V

    .line 224
    return-void
.end method

.method private wC()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/kingroot/kinguser/bid;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07044e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07044b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/biv$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/biv$7;-><init>(Lcom/kingroot/kinguser/biv;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/biv$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/biv$8;-><init>(Lcom/kingroot/kinguser/biv;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 259
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    goto :goto_0
.end method


# virtual methods
.method public Qs()V
    .locals 6

    .prologue
    .line 288
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FE()Z

    move-result v1

    .line 290
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FC()Z

    move-result v2

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/bgt;->abX()Z

    move-result v3

    .line 294
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 295
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 296
    new-instance v2, Lcom/kingroot/kinguser/bii;

    iget-object v3, p0, Lcom/kingroot/kinguser/biv;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bii;-><init>(Landroid/content/Context;)V

    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/aks;->bE(J)V

    .line 299
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bii;->show()V

    .line 300
    const v3, 0x7f070242

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lN(Ljava/lang/String;)V

    .line 301
    const v3, 0x7f070241

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bii;->lM(Ljava/lang/String;)V

    .line 302
    const v3, 0x7f02014a

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->h(Landroid/graphics/drawable/Drawable;)V

    .line 303
    const v1, 0x7f0201f9

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->jd(I)V

    .line 304
    new-instance v1, Lcom/kingroot/kinguser/biv$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/kingroot/kinguser/biv$2;-><init>(Lcom/kingroot/kinguser/biv;Lcom/kingroot/kinguser/bii;Lcom/kingroot/kinguser/aks;)V

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bii;->n(Landroid/view/View$OnClickListener;)V

    .line 316
    :cond_0
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 114
    const v1, 0x7f0300fb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->zv:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->zv:Landroid/view/View;

    const v1, 0x7f0f02a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 116
    new-instance v0, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/biv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->buS:Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biv;->buS:Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/biv;->buV:Lcom/kingroot/kinguser/bit;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->zv:Landroid/view/View;

    const v1, 0x7f0f02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->buQ:Landroid/view/View;

    .line 121
    iget-object v1, p0, Lcom/kingroot/kinguser/biv;->buQ:Landroid/view/View;

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->zv:Landroid/view/View;

    const v1, 0x7f0f02a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->buR:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buR:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/biv$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/biv$4;-><init>(Lcom/kingroot/kinguser/biv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->zv:Landroid/view/View;

    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07044e

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v1, 0x7f0f0332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/biv;->buW:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->buW:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/biv$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/biv$3;-><init>(Lcom/kingroot/kinguser/biv;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->anW:Lcom/kingroot/kinguser/ada;

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/kingroot/kinguser/biv;->buT:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->vd()V

    .line 321
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 322
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 103
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biv;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "auto_fix"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/biv;->buU:Z

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/biv;->aRB:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/biv;->aG(Z)V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188e1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 109
    return-void
.end method

.method public vd()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/biv;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 331
    :cond_0
    return-void
.end method
