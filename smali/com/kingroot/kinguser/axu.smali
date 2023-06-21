.class public Lcom/kingroot/kinguser/axu;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aul$b;


# instance fields
.field private anW:Lcom/kingroot/kinguser/ada;

.field private aoy:Lcom/kingroot/kinguser/bid;

.field private bbD:Landroid/view/View;

.field private bbE:Landroid/widget/TextView;

.field private bbF:Landroid/widget/ImageView;

.field private bbG:Landroid/view/View;

.field private bbH:Landroid/view/View;

.field private bbI:Landroid/widget/TextView;

.field private bbJ:Landroid/widget/TextView;

.field private bbK:Landroid/view/View;

.field private bbL:Landroid/widget/TextView;

.field private bbM:Landroid/widget/TextView;

.field private bbN:Landroid/widget/TextView;

.field private bbO:Landroid/widget/Button;

.field private bbP:Landroid/view/View;

.field private bbQ:Landroid/view/View;

.field private bbR:Lcom/kingroot/kinguser/agi;

.field private bbS:Lcom/kingroot/kinguser/aul$a;

.field public bbT:Lcom/android/animation/ValueAnimator;

.field private bbU:Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;

.field private bbV:Lcom/android/animation/Animator$AnimatorListener;

.field private bbW:Lcom/kingroot/kinguser/agi$a;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private zv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/android/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    .line 73
    new-instance v0, Lcom/kingroot/kinguser/axu$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axu$1;-><init>(Lcom/kingroot/kinguser/axu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbU:Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/axu$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axu$7;-><init>(Lcom/kingroot/kinguser/axu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbV:Lcom/android/animation/Animator$AnimatorListener;

    .line 438
    new-instance v0, Lcom/kingroot/kinguser/axu$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axu$4;-><init>(Lcom/kingroot/kinguser/axu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbW:Lcom/kingroot/kinguser/agi$a;

    .line 117
    return-void
.end method

.method private UG()V
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$13;-><init>(Lcom/kingroot/kinguser/axu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axu;Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/axu;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axu;Lcom/kingroot/kinguser/agi;)Lcom/kingroot/kinguser/agi;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/axu;->bbR:Lcom/kingroot/kinguser/agi;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axu;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axu;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axu;->aG(Z)V

    return-void
.end method

.method private aG(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->ar(Z)V

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ada;->aq(Z)V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->c(Landroid/graphics/drawable/Drawable;)V

    .line 424
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 425
    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 426
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    new-instance v1, Lcom/kingroot/kinguser/axu$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$3;-><init>(Lcom/kingroot/kinguser/axu;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->b(Landroid/view/View$OnClickListener;)V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ada;->ar(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/axu;->UG()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/aul$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbS:Lcom/kingroot/kinguser/aul$a;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/axu;->wC()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axu;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axu;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/agi$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbW:Lcom/kingroot/kinguser/agi$a;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/axu;)Lcom/kingroot/kinguser/agi;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbR:Lcom/kingroot/kinguser/agi;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbD:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbK:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbH:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbJ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/axu;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/axu;)Lcom/android/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbV:Lcom/android/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/axu;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbF:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbE:Landroid/widget/TextView;

    return-object v0
.end method

.method private r(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 137
    new-instance v0, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    const v3, 0x7f070344

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const v3, 0x7f070343

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const v3, 0x7f070342

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v3, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 147
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 148
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 150
    new-instance v3, Lcom/kingroot/kinguser/axu$8;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/kingroot/kinguser/axu$8;-><init>(Lcom/kingroot/kinguser/axu;Lcom/kingroot/kinguser/aic;Ljava/util/List;Lcom/kingroot/kinguser/zi;)V

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->show()V

    .line 167
    return-void
.end method

.method static synthetic s(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbM:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/axu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbL:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbP:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/kingroot/kinguser/axu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbQ:Landroid/view/View;

    return-object v0
.end method

.method private wC()V
    .locals 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/kingroot/kinguser/bid;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07032c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    .line 457
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07032b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axu$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$5;-><init>(Lcom/kingroot/kinguser/axu;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 468
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/axu$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$6;-><init>(Lcom/kingroot/kinguser/axu;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    goto :goto_0
.end method


# virtual methods
.method public Qv()V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$10;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$10;-><init>(Lcom/kingroot/kinguser/axu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public Qw()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$11;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$11;-><init>(Lcom/kingroot/kinguser/axu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$14;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/kingroot/kinguser/axu$14;-><init>(Lcom/kingroot/kinguser/axu;ZZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aul$a;)V
    .locals 1

    .prologue
    .line 448
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aul$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbS:Lcom/kingroot/kinguser/aul$a;

    .line 449
    return-void
.end method

.method public bm(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agi$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$9;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axu$9;-><init>(Lcom/kingroot/kinguser/axu;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public cW(Z)V
    .locals 2

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axu$2;-><init>(Lcom/kingroot/kinguser/axu;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method public cY(Z)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$12;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/axu$12;-><init>(Lcom/kingroot/kinguser/axu;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 178
    const v1, 0x7f030106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbD:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbG:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbK:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbF:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbE:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbN:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f0267

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbP:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f0268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbQ:Landroid/view/View;

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbO:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbH:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbI:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbJ:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbL:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    const v1, 0x7f0f02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->bbM:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    iget-object v1, p0, Lcom/kingroot/kinguser/axu;->bbU:Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbS:Lcom/kingroot/kinguser/aul$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$a;->start()V

    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->zv:Landroid/view/View;

    return-object v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070341

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->anW:Lcom/kingroot/kinguser/ada;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18884

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 488
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 491
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/axu;->bbS:Lcom/kingroot/kinguser/aul$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$a;->PJ()V

    .line 173
    return-void
.end method
