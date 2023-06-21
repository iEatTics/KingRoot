.class public Lcom/kingroot/kinguser/bga;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bfx$d;


# instance fields
.field private aWk:Landroid/view/View;

.field private aoy:Lcom/kingroot/kinguser/bid;

.field private bbE:Landroid/widget/TextView;

.field private bbF:Landroid/widget/ImageView;

.field private bbH:Landroid/view/View;

.field private bbI:Landroid/widget/TextView;

.field private bbJ:Landroid/widget/TextView;

.field private bbN:Landroid/widget/TextView;

.field private bbO:Landroid/widget/Button;

.field private bbT:Lcom/android/animation/ValueAnimator;

.field private bbU:Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;

.field private bbV:Lcom/android/animation/Animator$AnimatorListener;

.field private boc:Lcom/kingroot/kinguser/bic;

.field private boe:Lcom/kingroot/kinguser/acw;

.field private bof:Landroid/view/View;

.field private bog:Landroid/view/View;

.field private boh:Landroid/view/View;

.field private boi:Landroid/view/View;

.field private boj:Landroid/view/View;

.field private bok:Landroid/view/View;

.field private bol:Landroid/view/ViewStub;

.field private bom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation
.end field

.field private bon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation
.end field

.field private boo:Lcom/kingroot/kinguser/bfx;

.field private bop:Z

.field private boq:Z

.field private bor:Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;

.field private bos:Lcom/kingroot/kinguser/bed;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTitleView:Landroid/widget/TextView;

.field private zv:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/android/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/android/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bon:Ljava/util/List;

    .line 102
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bga;->bop:Z

    .line 103
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bga;->boq:Z

    .line 636
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/urlcheck/ui/page/UrlCheckMainPage$13;-><init>(Lcom/kingroot/kinguser/bga;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bor:Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;

    .line 650
    new-instance v0, Lcom/kingroot/kinguser/bga$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bga$5;-><init>(Lcom/kingroot/kinguser/bga;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbU:Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;

    .line 660
    new-instance v0, Lcom/kingroot/kinguser/bga$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bga$6;-><init>(Lcom/kingroot/kinguser/bga;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbV:Lcom/android/animation/Animator$AnimatorListener;

    .line 681
    new-instance v0, Lcom/kingroot/kinguser/bed;

    new-instance v1, Lcom/kingroot/kinguser/bga$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$7;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bos:Lcom/kingroot/kinguser/bed;

    .line 107
    iput-boolean p2, p0, Lcom/kingroot/kinguser/bga;->boq:Z

    .line 108
    return-void
.end method

.method private UG()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbH:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbF:Landroid/widget/ImageView;

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbE:Landroid/widget/TextView;

    const v1, 0x7f07033c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 633
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbN:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abm()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bga;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bga;->iG(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bga;->b(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bga;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bga;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bga;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bga;->dX(Z)V

    return-void
.end method

.method private aG(Z)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/acw;->ar(Z)V

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acw;->aq(Z)V

    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acw;->c(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 308
    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    new-instance v1, Lcom/kingroot/kinguser/bga$12;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$12;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/acw;->b(Landroid/view/View$OnClickListener;)V

    .line 316
    :cond_0
    return-void
.end method

.method private abm()V
    .locals 3

    .prologue
    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/bga$11;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bga$11;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 273
    return-void
.end method

.method private abn()V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaW()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfw;->dU(Z)V

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704fc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 283
    :goto_1
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704f7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private abo()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 361
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/bga;->aG(Z)V

    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbH:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbJ:Landroid/widget/TextView;

    const v1, 0x7f070505

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 367
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 369
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    .line 370
    iput-boolean v3, p0, Lcom/kingroot/kinguser/bga;->bop:Z

    .line 371
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/android/animation/ValueAnimator;->removeAllListeners()V

    .line 372
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->setIntValues([I)V

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    const-wide/32 v2, 0x88b8

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/bga$15;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$15;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 397
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 399
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bor:Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;

    invoke-virtual {v0, v4, v1}, Lcom/kingroot/kinguser/bfp;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    .line 400
    return-void
.end method

.method private abp()V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckRiskActivity;->aL(Landroid/content/Context;)V

    .line 465
    return-void
.end method

.method private abq()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 516
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bon:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bok:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bok:Landroid/view/View;

    const v1, 0x7f0f0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 522
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070514

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/bga;->bon:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 521
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bok:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/bga$18;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$18;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private abr()V
    .locals 6

    .prologue
    const/16 v3, 0x270f

    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bon:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aWk:Landroid/view/View;

    if-nez v0, :cond_0

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bol:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->aWk:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aWk:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aWk:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 580
    const v1, 0x7f070502

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 581
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 625
    :goto_1
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boo:Lcom/kingroot/kinguser/bfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfx;->notifyDataSetChanged()V

    goto :goto_1

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 590
    iget v0, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    add-int/2addr v0, v1

    .line 591
    if-lt v0, v3, :cond_6

    move v1, v3

    .line 596
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    if-lt v1, v3, :cond_4

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->mTitleView:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0704f4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 604
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaX()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 605
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaY()J

    move-result-wide v0

    const-wide/32 v2, 0xa4cb800

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bfw;->cv(J)V

    .line 607
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bga$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$4;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 623
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boo:Lcom/kingroot/kinguser/bfx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfx;->notifyDataSetChanged()V

    goto/16 :goto_1

    :cond_6
    move v1, v0

    .line 595
    goto/16 :goto_2

    .line 574
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private b(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bga$17;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/kingroot/kinguser/bga$17;-><init>(Lcom/kingroot/kinguser/bga;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abn()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bga;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bga;->bop:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bga;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbH:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bga;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bga;->aG(Z)V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bga;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bga;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bga;->boq:Z

    return p1
.end method

.method private dX(Z)V
    .locals 2

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfw;->dS(Z)V

    .line 293
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abo()V

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->wC()V

    goto :goto_0
.end method

.method private dY(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 403
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bga;->bop:Z

    if-eqz v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 408
    :cond_0
    if-eqz p1, :cond_1

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bL(J)V

    .line 410
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->removeAllListeners()V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/16 v3, 0x64

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->setIntValues([I)V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bbV:Lcom/android/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 418
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bga;->iE(I)V

    .line 419
    invoke-direct {p0, v1, v2, v2}, Lcom/kingroot/kinguser/bga;->b(ILjava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bga;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbF:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/bga;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bga;->dY(Z)V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbE:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbN:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bga;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boj:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bga;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bok:Landroid/view/View;

    return-object v0
.end method

.method private iF(I)V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Lcom/kingroot/kinguser/bic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    .line 719
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    .line 720
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07050b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->lJ(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->ee(Z)V

    .line 722
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07050a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->setTitleText(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    .line 724
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070509

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->d(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/bga$8;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bga$8;-><init>(Lcom/kingroot/kinguser/bga;I)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->b(Lcom/kingroot/kinguser/bic$a;)V

    .line 738
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/bga$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$9;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic$a;)V

    .line 753
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->dismiss()V

    .line 750
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    goto :goto_0
.end method

.method private iG(I)V
    .locals 4

    .prologue
    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 758
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 759
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abr()V

    .line 761
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    new-instance v3, Lcom/kingroot/kinguser/bga$10;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/bga$10;-><init>(Lcom/kingroot/kinguser/bga;Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bga;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/bga;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bog:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/bga;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/bga;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aWk:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/bga;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/bga;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bon:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abq()V

    return-void
.end method

.method private r(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 212
    new-instance v1, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    const v0, 0x7f0704fd

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaW()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0704fe

    :goto_0
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0704ff

    :goto_1
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 224
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 225
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 227
    new-instance v0, Lcom/kingroot/kinguser/bga$1;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bga$1;-><init>(Lcom/kingroot/kinguser/bga;Lcom/kingroot/kinguser/aic;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aic;->show()V

    .line 253
    return-void

    .line 218
    :cond_0
    const v0, 0x7f070501

    goto :goto_0

    .line 220
    :cond_1
    const v0, 0x7f070500

    goto :goto_1
.end method

.method static synthetic r(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abr()V

    return-void
.end method

.method static synthetic s(Lcom/kingroot/kinguser/bga;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bga;->boq:Z

    return v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abp()V

    return-void
.end method

.method static synthetic u(Lcom/kingroot/kinguser/bga;)Lcom/kingroot/kinguser/bfx;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boo:Lcom/kingroot/kinguser/bfx;

    return-object v0
.end method

.method static synthetic v(Lcom/kingroot/kinguser/bga;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->UG()V

    return-void
.end method

.method private wC()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/kingroot/kinguser/bid;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704f9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    .line 324
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704f8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bga$13;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$13;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/bga$14;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$14;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 355
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    goto :goto_0
.end method

.method static synthetic x(Lcom/kingroot/kinguser/bga;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bos:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method


# virtual methods
.method public dZ(Z)V
    .locals 4

    .prologue
    const v3, 0x7f0f0148

    const v2, 0x7f0f00d1

    const/4 v1, 0x0

    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boh:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 536
    const v1, 0x7f0202c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boh:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 538
    const v1, 0x7f070503

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 540
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boi:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    const v1, 0x7f0202c0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 542
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boi:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 543
    const v1, 0x7f0704d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 545
    if-eqz p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    const v1, 0x7f070332

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 548
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bga$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$2;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    const v1, 0x7f070238

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bga$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bga$3;-><init>(Lcom/kingroot/kinguser/bga;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public e(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 195
    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18944

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaZ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bga;->iF(I)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bga;->iG(I)V

    goto :goto_0
.end method

.method public iE(I)V
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bga$16;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bga$16;-><init>(Lcom/kingroot/kinguser/bga;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    const v1, 0x7f03010b

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    const v1, 0x7f0f01a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    const v1, 0x7f0f02cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbF:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    const v1, 0x7f0f0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbE:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bof:Landroid/view/View;

    const v1, 0x7f0f0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbN:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    const v1, 0x7f0f0266

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bog:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bog:Landroid/view/View;

    const v1, 0x7f0f02de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->boh:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bog:Landroid/view/View;

    const v1, 0x7f0f02df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->boi:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bog:Landroid/view/View;

    const v1, 0x7f0f0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbO:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    const v1, 0x7f0f02cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbH:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    const v1, 0x7f0f02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbI:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bbJ:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bbT:Lcom/android/animation/ValueAnimator;

    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bbU:Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    const v1, 0x7f0f02cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->boj:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boj:Landroid/view/View;

    const v1, 0x7f0f034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bok:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boj:Landroid/view/View;

    const v1, 0x7f0f02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->bol:Landroid/view/ViewStub;

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boj:Landroid/view/View;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->mTitleView:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boj:Landroid/view/View;

    const v1, 0x7f0f02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 169
    new-instance v0, Lcom/kingroot/kinguser/bfx;

    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-direct {v0, v1, p0, v3}, Lcom/kingroot/kinguser/bfx;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/bfx$d;Lcom/kingroot/kinguser/bfx$e;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->boo:Lcom/kingroot/kinguser/bfx;

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->boo:Lcom/kingroot/kinguser/bfx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->zv:Landroid/view/View;

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bga;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704e9

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bga;->aG(Z)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->boe:Lcom/kingroot/kinguser/acw;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfw;->dT(Z)V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18943

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bos:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 122
    return-void
.end method

.method public p(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 179
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 184
    iget-object v1, p0, Lcom/kingroot/kinguser/bga;->bom:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    invoke-direct {p0}, Lcom/kingroot/kinguser/bga;->abr()V

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18945

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfs;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0
.end method
