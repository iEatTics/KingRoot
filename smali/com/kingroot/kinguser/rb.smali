.class public abstract Lcom/kingroot/kinguser/rb;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/rb$c;,
        Lcom/kingroot/kinguser/rb$b;,
        Lcom/kingroot/kinguser/rb$e;,
        Lcom/kingroot/kinguser/rb$a;,
        Lcom/kingroot/kinguser/rb$d;
    }
.end annotation


# instance fields
.field protected mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/rb$a;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInterpolator:Landroid/view/animation/Interpolator;

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/rb$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/rb$a;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/rb$d;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mAddAnimations:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mMoveAnimations:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/rb;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->setSupportsChangeAnimations(Z)V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/rb$a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 350
    iget-object v0, p1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 351
    if-nez v0, :cond_3

    move-object v0, v1

    .line 352
    :goto_0
    iget-object v2, p1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 353
    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 354
    :cond_0
    if-eqz v0, :cond_1

    .line 355
    iget-object v2, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getChangeDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 358
    iget v2, p1, Lcom/kingroot/kinguser/rb$a;->toX:I

    iget v3, p1, Lcom/kingroot/kinguser/rb$a;->fromX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 359
    iget v2, p1, Lcom/kingroot/kinguser/rb$a;->toY:I

    iget v3, p1, Lcom/kingroot/kinguser/rb$a;->fromY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 360
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/rb$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/kingroot/kinguser/rb$5;-><init>(Lcom/kingroot/kinguser/rb;Lcom/kingroot/kinguser/rb$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 376
    :cond_1
    if-eqz v1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getChangeDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 380
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/rb$6;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/kingroot/kinguser/rb$6;-><init>(Lcom/kingroot/kinguser/rb;Lcom/kingroot/kinguser/rb$a;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 396
    :cond_2
    return-void

    .line 351
    :cond_3
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rb;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/rb;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/rb;Lcom/kingroot/kinguser/rb$a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb$a;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/rb$a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 419
    .line 420
    iget-object v2, p1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v2, p2, :cond_1

    .line 421
    iput-object v3, p1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 428
    :goto_0
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 429
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 430
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 431
    invoke-virtual {p0, p2, v0}, Lcom/kingroot/kinguser/rb;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    move v0, v1

    .line 432
    :cond_0
    return v0

    .line 422
    :cond_1
    iget-object v2, p1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v2, p2, :cond_0

    .line 423
    iput-object v3, p1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move v0, v1

    .line 424
    goto :goto_0
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 289
    sub-int v3, p4, p2

    .line 290
    sub-int v4, p5, p3

    .line 291
    if-eqz v3, :cond_0

    .line 292
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 294
    :cond_0
    if-eqz v4, :cond_1

    .line 295
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/rb;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 302
    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v0, Lcom/kingroot/kinguser/rb$4;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/rb$4;-><init>(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 323
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/rb$a;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p1, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb$a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 413
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p1, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb$a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 416
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 206
    instance-of v0, p1, Lcom/kingroot/kinguser/ra;

    if-eqz v0, :cond_0

    .line 207
    check-cast p1, Lcom/kingroot/kinguser/ra;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ra;->hH()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 216
    instance-of v0, p1, Lcom/kingroot/kinguser/ra;

    if-eqz v0, :cond_0

    .line 217
    check-cast p1, Lcom/kingroot/kinguser/ra;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ra;->hG()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->dispatchAnimationsFinished()V

    .line 539
    :cond_0
    return-void
.end method

.method private e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 224
    instance-of v0, p1, Lcom/kingroot/kinguser/ra;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 225
    check-cast v0, Lcom/kingroot/kinguser/ra;

    new-instance v1, Lcom/kingroot/kinguser/rb$c;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/rb$c;-><init>(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ra;->b(Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/rb;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/rb;->dispatchFinishedWhenDone()V

    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/rb$a;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 400
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rb$a;

    .line 401
    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/rb;->a(Lcom/kingroot/kinguser/rb$a;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, v0, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/rb$a;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 403
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 407
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/rb;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 234
    instance-of v0, p1, Lcom/kingroot/kinguser/ra;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 235
    check-cast v0, Lcom/kingroot/kinguser/ra;

    new-instance v1, Lcom/kingroot/kinguser/rb$b;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/rb$b;-><init>(Lcom/kingroot/kinguser/rb;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ra;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)V

    .line 240
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rb;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 9

    .prologue
    .line 328
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    .line 329
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    .line 330
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    .line 331
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 332
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 333
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 335
    iget-object v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 336
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 337
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 338
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/rb;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 341
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 342
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 343
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 345
    :cond_0
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Lcom/kingroot/kinguser/rb$a;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/rb$a;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/kingroot/kinguser/rb$1;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .prologue
    .line 267
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 268
    int-to-float v1, p2

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v2, v1

    .line 269
    int-to-float v1, p3

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v3, v1

    .line 270
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 271
    sub-int v1, p4, v2

    .line 272
    sub-int v4, p5, v3

    .line 273
    if-nez v1, :cond_0

    if-nez v4, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 275
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    .line 277
    :cond_0
    if-eqz v1, :cond_1

    .line 278
    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 280
    :cond_1
    if-eqz v4, :cond_2

    .line 281
    neg-int v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 283
    :cond_2
    iget-object v7, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/kingroot/kinguser/rb$d;

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/rb$d;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/kingroot/kinguser/rb$1;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rb;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method protected b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 630
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 629
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 438
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rb$d;

    .line 442
    iget-object v0, v0, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p1, :cond_0

    .line 443
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 444
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/rb;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 461
    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/rb;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 462
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 466
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_8

    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_6

    .line 469
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/rb$d;

    .line 470
    iget-object v1, v1, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p1, :cond_7

    .line 471
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 472
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 473
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 474
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 466
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 468
    :cond_7
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_a

    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 484
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 485
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 486
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/rb;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 487
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 488
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    :cond_9
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    .line 494
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 499
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 504
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 509
    :cond_d
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 513
    :cond_e
    invoke-direct {p0}, Lcom/kingroot/kinguser/rb;->dispatchFinishedWhenDone()V

    .line 514
    return-void
.end method

.method public endAnimations()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 542
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 543
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rb$d;

    .line 545
    iget-object v2, v0, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 546
    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 547
    invoke-static {v2, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 548
    iget-object v0, v0, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 554
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 552
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 560
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lcom/kingroot/kinguser/rd;->e(Landroid/view/View;)V

    .line 561
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 562
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 558
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 565
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_3

    .line 566
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rb$a;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/rb;->b(Lcom/kingroot/kinguser/rb$a;)V

    .line 565
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 569
    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 626
    :goto_4
    return-void

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_7

    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 576
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 577
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_6
    if-ltz v2, :cond_6

    .line 578
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/rb$d;

    .line 579
    iget-object v4, v1, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 580
    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 581
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 582
    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 583
    iget-object v1, v1, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/rb;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 584
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 585
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 586
    iget-object v1, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 577
    :cond_5
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_6

    .line 574
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    .line 590
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_7
    if-ltz v3, :cond_b

    .line 592
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 594
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_8
    if-ltz v2, :cond_a

    .line 595
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 596
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 597
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 598
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/rb;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 600
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 601
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 603
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 604
    iget-object v1, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 594
    :cond_9
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_8

    .line 591
    :cond_a
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_7

    .line 608
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 609
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_9
    if-ltz v3, :cond_e

    .line 610
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 611
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 612
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_a
    if-ltz v2, :cond_d

    .line 613
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/rb$a;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/rb;->b(Lcom/kingroot/kinguser/rb$a;)V

    .line 614
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 615
    iget-object v1, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_c
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_a

    .line 609
    :cond_d
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_9

    .line 620
    :cond_e
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->cancelAll(Ljava/util/List;)V

    .line 621
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->cancelAll(Ljava/util/List;)V

    .line 622
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->cancelAll(Ljava/util/List;)V

    .line 623
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/rb;->cancelAll(Ljava/util/List;)V

    .line 625
    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->dispatchAnimationsFinished()V

    goto/16 :goto_4
.end method

.method protected g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getRemoveDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected h(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getAddDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    .line 518
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    .line 519
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMoveAnimations:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 522
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAddAnimations:Ljava/util/ArrayList;

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangeAnimations:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    .line 527
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 108
    :goto_0
    iget-object v3, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    .line 109
    :goto_1
    iget-object v4, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v0

    .line 110
    :goto_2
    iget-object v5, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v0

    .line 111
    :goto_3
    if-nez v1, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    .line 191
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v1, v2

    .line 107
    goto :goto_0

    :cond_2
    move v3, v2

    .line 108
    goto :goto_1

    :cond_3
    move v4, v2

    .line 109
    goto :goto_2

    :cond_4
    move v5, v2

    .line 110
    goto :goto_3

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 117
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/rb;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_5

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    if-eqz v3, :cond_7

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 126
    new-instance v8, Lcom/kingroot/kinguser/rb$1;

    invoke-direct {v8, p0, v0}, Lcom/kingroot/kinguser/rb$1;-><init>(Lcom/kingroot/kinguser/rb;Ljava/util/ArrayList;)V

    .line 136
    if-eqz v1, :cond_a

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rb$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/rb$d;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getRemoveDuration()J

    move-result-wide v10

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 144
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v8, p0, Lcom/kingroot/kinguser/rb;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 149
    new-instance v8, Lcom/kingroot/kinguser/rb$2;

    invoke-direct {v8, p0, v0}, Lcom/kingroot/kinguser/rb$2;-><init>(Lcom/kingroot/kinguser/rb;Ljava/util/ArrayList;)V

    .line 158
    if-eqz v1, :cond_b

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/rb$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/rb$a;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 160
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getRemoveDuration()J

    move-result-wide v10

    invoke-static {v0, v8, v10, v11}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 166
    :cond_8
    :goto_7
    if-eqz v5, :cond_0

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/rb;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 171
    new-instance v12, Lcom/kingroot/kinguser/rb$3;

    invoke-direct {v12, p0, v5}, Lcom/kingroot/kinguser/rb$3;-><init>(Lcom/kingroot/kinguser/rb;Ljava/util/ArrayList;)V

    .line 180
    if-nez v1, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_f

    .line 181
    :cond_9
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getRemoveDuration()J

    move-result-wide v0

    move-wide v10, v0

    .line 182
    :goto_8
    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getMoveDuration()J

    move-result-wide v0

    move-wide v8, v0

    .line 183
    :goto_9
    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lcom/kingroot/kinguser/rb;->getChangeDuration()J

    move-result-wide v0

    .line 184
    :goto_a
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long v6, v10, v0

    .line 185
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 186
    invoke-static {v0, v12, v6, v7}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    .line 140
    :cond_a
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 162
    :cond_b
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    :cond_c
    move-wide v10, v6

    .line 181
    goto :goto_8

    :cond_d
    move-wide v8, v6

    .line 182
    goto :goto_9

    :cond_e
    move-wide v0, v6

    .line 183
    goto :goto_a

    .line 188
    :cond_f
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4
.end method
