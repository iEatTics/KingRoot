.class public Lcom/kingroot/kinguser/bgb;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingroot/kinguser/bfx$e;


# instance fields
.field private aVU:Landroid/view/View;

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

.field private boA:Landroid/view/View;

.field private boB:Landroid/widget/Button;

.field private boC:Landroid/widget/Button;

.field private boD:Landroid/view/View;

.field private boc:Lcom/kingroot/kinguser/bic;

.field private boo:Lcom/kingroot/kinguser/bfx;

.field private bos:Lcom/kingroot/kinguser/bed;

.field private boz:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/kingroot/kinguser/bed;

    new-instance v1, Lcom/kingroot/kinguser/bgb$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bgb$1;-><init>(Lcom/kingroot/kinguser/bgb;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->bos:Lcom/kingroot/kinguser/bed;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bgb;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bgb;->iG(I)V

    return-void
.end method

.method private abs()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bgb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bgb$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bgb$2;-><init>(Lcom/kingroot/kinguser/bgb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method private abt()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/bgb$7;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bgb$7;-><init>(Lcom/kingroot/kinguser/bgb;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 287
    return-void
.end method

.method private abu()V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/bgb$8;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bgb$8;-><init>(Lcom/kingroot/kinguser/bgb;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 306
    return-void
.end method

.method private abv()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgb;->abs()V

    .line 322
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bgb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bgb$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bgb$9;-><init>(Lcom/kingroot/kinguser/bgb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bgb;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgb;->abv()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boD:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->aVU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bgb;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boA:Landroid/view/View;

    return-object v0
.end method

.method private f(ZI)V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/kingroot/kinguser/bic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bgb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07050b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->lJ(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->ee(Z)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07050a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->setTitleText(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070509

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->d(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/bgb$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bgb$4;-><init>(Lcom/kingroot/kinguser/bgb;ZI)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->b(Lcom/kingroot/kinguser/bic$a;)V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/bgb$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bgb$5;-><init>(Lcom/kingroot/kinguser/bgb;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic$a;)V

    .line 247
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->dismiss()V

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bgb;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgb;->abt()V

    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bgb;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boz:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bgb;)Lcom/kingroot/kinguser/bfx;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boo:Lcom/kingroot/kinguser/bfx;

    return-object v0
.end method

.method private iG(I)V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 252
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    new-instance v3, Lcom/kingroot/kinguser/bgb$6;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/bgb$6;-><init>(Lcom/kingroot/kinguser/bgb;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 263
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgb;->abv()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 200
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bgb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0
.end method

.method public e(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18949

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/bgb;->f(ZI)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bgb;->iG(I)V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    const v1, 0x7f03010e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    const v0, 0x7f0f01a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->aVU:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->aVU:Landroid/view/View;

    const v2, 0x7f0f02d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boz:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f02e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/bfx;

    iget-object v2, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-direct {v0, v2, v3, p0}, Lcom/kingroot/kinguser/bfx;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/bfx$d;Lcom/kingroot/kinguser/bfx$e;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boo:Lcom/kingroot/kinguser/bfx;

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bgb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/bgb;->boo:Lcom/kingroot/kinguser/bfx;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 69
    const v0, 0x7f0f02a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boA:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boA:Landroid/view/View;

    const v2, 0x7f0f02e1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boB:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boA:Landroid/view/View;

    const v2, 0x7f0f02e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boC:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->boC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f0f02e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bgb;->boD:Landroid/view/View;

    .line 76
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 80
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bgb;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e9

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    const v2, 0x7f0f0336

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18947

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 141
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgb;->abu()V

    goto :goto_0

    .line 145
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18948

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bgb;->f(ZI)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgb;->abt()V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f02e1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18946

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bgb;->bos:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 97
    return-void
.end method

.method public q(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    new-instance v3, Lcom/kingroot/kinguser/bgb$3;

    invoke-direct {v3, p0, v0, p2}, Lcom/kingroot/kinguser/bgb$3;-><init>(Lcom/kingroot/kinguser/bgb;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;I)V

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method
