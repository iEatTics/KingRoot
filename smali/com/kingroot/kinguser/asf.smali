.class public Lcom/kingroot/kinguser/asf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/asf$a;
    }
.end annotation


# instance fields
.field private aMA:Lcom/android/animation/Animator;

.field private aMB:Lcom/kingroot/kinguser/asf$a;

.field private aMu:Landroid/view/View;

.field private aMv:Z

.field private aMw:I

.field private aMx:I

.field private aMy:I

.field private aMz:Z

.field private akQ:Landroid/view/View;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/asf$a;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/asf;->aMv:Z

    .line 56
    iput-object p2, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    .line 58
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/asf;->mTouchSlop:I

    .line 60
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/asf;->aMw:I

    .line 61
    return-void
.end method

.method private N(II)Z
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 216
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method private NL()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v1

    .line 173
    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-boolean v2, p0, Lcom/kingroot/kinguser/asf;->aMv:Z

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NN()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private NM()Landroid/view/View;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMu:Landroid/view/View;

    return-object v0
.end method

.method private NN()I
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    if-nez v0, :cond_1

    .line 555
    :cond_0
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/asf$a;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/asf$a;->i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method private O(II)Z
    .locals 5

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    .line 232
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v1, v2, v1

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 235
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NN()I

    move-result v3

    add-int/2addr v3, v1

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 237
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    return-object p1
.end method

.method private a(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/asf;->aMu:Landroid/view/View;

    iput-object v0, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    .line 193
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    :goto_1
    iput-object v0, p0, Lcom/kingroot/kinguser/asf;->aMu:Landroid/view/View;

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/asf;->akQ:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/asf$a;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/asf$a;->da(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/kingroot/kinguser/asf;->aMv:Z

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 196
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asf;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asf;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->isCollapsed()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/asf;)Lcom/kingroot/kinguser/asf$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    return-object v0
.end method

.method private gu(I)V
    .locals 5

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 304
    add-int v3, v1, p1

    if-gtz v3, :cond_1

    .line 305
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NN()I

    move-result v3

    .line 311
    add-int/2addr v1, p1

    .line 312
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w(F)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v1

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v5

    .line 400
    if-eqz v5, :cond_0

    .line 404
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 405
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NN()I

    move-result v0

    .line 408
    const/16 v3, 0xc8

    .line 410
    cmpl-float v4, p1, v7

    if-nez v4, :cond_2

    .line 412
    div-int/lit8 v4, v0, 0x2

    if-le v6, v4, :cond_5

    move v4, v0

    .line 424
    :goto_1
    if-eq v4, v6, :cond_0

    .line 429
    if-nez v4, :cond_4

    move v0, v2

    .line 430
    :goto_2
    const-string v6, "scrollX"

    new-array v7, v2, [I

    aput v4, v7, v1

    invoke-static {v5, v6, v7}, Lcom/android/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    .line 431
    iget-object v1, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/android/animation/Animator;->setDuration(J)Lcom/android/animation/Animator;

    .line 432
    iget-object v1, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    new-instance v3, Lcom/kingroot/kinguser/asf$2;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/asf$2;-><init>(Lcom/kingroot/kinguser/asf;Z)V

    invoke-virtual {v1, v3}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    move v1, v2

    .line 474
    goto :goto_0

    .line 416
    :cond_2
    cmpl-float v3, p1, v7

    if-lez v3, :cond_3

    move v0, v1

    .line 421
    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lcom/kingroot/kinguser/asf;->aMw:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 429
    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_1
.end method


# virtual methods
.method public b(Landroid/view/View;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    if-eqz v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 333
    :cond_1
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 336
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NN()I

    move-result v2

    .line 339
    const/16 v4, 0xc8

    .line 341
    if-eqz p2, :cond_2

    .line 347
    :goto_1
    if-eq v2, v3, :cond_0

    .line 351
    const-string v3, "scrollX"

    new-array v5, v1, [I

    aput v2, v5, v0

    invoke-static {p1, v3, v5}, Lcom/android/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    int-to-long v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/Animator;->setDuration(J)Lcom/android/animation/Animator;

    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    new-instance v2, Lcom/kingroot/kinguser/asf$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/asf$1;-><init>(Lcom/kingroot/kinguser/asf;)V

    invoke-virtual {v0, v2}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    move v0, v1

    .line 384
    goto :goto_0

    :cond_2
    move v2, v0

    .line 344
    goto :goto_1
.end method

.method public c(Landroid/view/View;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    if-eqz v0, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    .line 493
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 494
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NN()I

    move-result v0

    .line 497
    const/16 v3, 0xc8

    .line 499
    if-eqz p2, :cond_2

    .line 505
    :goto_1
    if-eq v0, v2, :cond_0

    .line 509
    const-string v2, "scrollX"

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v0, v4, v1

    invoke-static {p1, v2, v4}, Lcom/android/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    .line 510
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    int-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/Animator;->setDuration(J)Lcom/android/animation/Animator;

    .line 511
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    new-instance v1, Lcom/kingroot/kinguser/asf$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingroot/kinguser/asf$3;-><init>(Lcom/kingroot/kinguser/asf;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 502
    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    invoke-virtual {v2}, Lcom/android/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 90
    :cond_1
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 93
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    iput-boolean v1, p0, Lcom/kingroot/kinguser/asf;->aMz:Z

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kingroot/kinguser/asf;->aMx:I

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/kingroot/kinguser/asf;->aMy:I

    .line 100
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/asf;->N(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/asf;->w(F)Z

    .line 103
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 112
    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/asf;->O(II)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    int-to-float v2, v3

    int-to-float v3, v4

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/asf$a;->e(FF)Landroid/util/Pair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-boolean v2, p0, Lcom/kingroot/kinguser/asf;->aMz:Z

    if-eqz v2, :cond_5

    move v1, v0

    .line 123
    goto :goto_0

    .line 126
    :cond_5
    iget v2, p0, Lcom/kingroot/kinguser/asf;->aMx:I

    sub-int v2, v3, v2

    .line 127
    iget v3, p0, Lcom/kingroot/kinguser/asf;->aMy:I

    sub-int v3, v4, v3

    .line 129
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/kingroot/kinguser/asf;->aMv:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/kingroot/kinguser/asf;->mTouchSlop:I

    if-lt v2, v3, :cond_0

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/asf;->aMx:I

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/asf;->aMy:I

    .line 138
    iput-boolean v0, p0, Lcom/kingroot/kinguser/asf;->aMz:Z

    move v1, v0

    goto/16 :goto_0

    .line 145
    :pswitch_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NL()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/asf;->O(II)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 155
    :cond_6
    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/asf;->w(F)Z

    .line 158
    :goto_2
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    .line 159
    iput-boolean v1, p0, Lcom/kingroot/kinguser/asf;->aMz:Z

    move v1, v0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->NM()Landroid/view/View;

    move-result-object v0

    .line 248
    iget-object v2, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    invoke-virtual {v2}, Lcom/android/animation/Animator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 253
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 254
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMA:Lcom/android/animation/Animator;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asf;->w(F)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 265
    :goto_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/asf;->isCollapsed()Z

    move-result v2

    .line 266
    if-nez v0, :cond_4

    .line 267
    if-eqz v2, :cond_3

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asf;->a(Landroid/util/Pair;)V

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/asf;->aMB:Lcom/kingroot/kinguser/asf$a;

    .line 273
    if-eqz v0, :cond_1

    .line 276
    if-eqz v2, :cond_7

    .line 277
    invoke-interface {v0}, Lcom/kingroot/kinguser/asf$a;->vM()V

    .line 283
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/kingroot/kinguser/asf;->aMz:Z

    goto :goto_0

    .line 256
    :pswitch_1
    iget-boolean v1, p0, Lcom/kingroot/kinguser/asf;->aMz:Z

    if-eqz v1, :cond_5

    .line 257
    iget v1, p0, Lcom/kingroot/kinguser/asf;->aMx:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/asf;->gu(I)V

    .line 259
    :cond_5
    iput v0, p0, Lcom/kingroot/kinguser/asf;->aMx:I

    goto :goto_0

    :cond_6
    move v0, v1

    .line 264
    goto :goto_1

    .line 279
    :cond_7
    invoke-interface {v0}, Lcom/kingroot/kinguser/asf$a;->vN()V

    goto :goto_2

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
