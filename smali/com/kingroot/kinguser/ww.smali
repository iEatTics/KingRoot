.class public Lcom/kingroot/kinguser/ww;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ww$a;
    }
.end annotation


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final Sk:Lcom/kingroot/kinguser/ww$a;

.field private mActivePointerId:I

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/kingroot/kinguser/ww$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ww$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ww;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/kingroot/kinguser/ww$a;)V
    .locals 3

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 334
    new-instance v0, Lcom/kingroot/kinguser/ww$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ww$2;-><init>(Lcom/kingroot/kinguser/ww;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ww;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 405
    if-nez p2, :cond_0

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent view may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    if-nez p4, :cond_1

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    iput-object p2, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    .line 413
    iput-object p4, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    .line 415
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 417
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/ww;->mEdgeSize:I

    .line 419
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/kingroot/kinguser/ww;->mMaxVelocity:F

    .line 421
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/ww;->mMinVelocity:F

    .line 422
    if-eqz p3, :cond_2

    :goto_0
    invoke-static {p1, p3}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 423
    return-void

    .line 422
    :cond_2
    sget-object p3, Lcom/kingroot/kinguser/ww;->sInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/kingroot/kinguser/ww$a;)Lcom/kingroot/kinguser/ww;
    .locals 3

    .prologue
    .line 389
    invoke-static {p0, p2, p3}, Lcom/kingroot/kinguser/ww;->a(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/kingroot/kinguser/ww$a;)Lcom/kingroot/kinguser/ww;

    move-result-object v0

    .line 390
    iget v1, v0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    .line 391
    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/kingroot/kinguser/ww$a;)Lcom/kingroot/kinguser/ww;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/kingroot/kinguser/ww;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/kingroot/kinguser/ww;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/animation/Interpolator;Lcom/kingroot/kinguser/ww$a;)V

    return-object v0
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1267
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1268
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1270
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return v0

    .line 1276
    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v2, p4}, Lcom/kingroot/kinguser/ww$a;->onEdgeLock(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1277
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    aget v2, v1, p3

    or-int/2addr v2, p4

    aput v2, v1, p3

    goto :goto_0

    .line 1280
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    aget v2, v2, p3

    and-int/2addr v2, p4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1294
    if-nez p1, :cond_1

    move v1, v2

    .line 1307
    :cond_0
    :goto_0
    return v1

    .line 1297
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ww$a;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    .line 1298
    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v3, p1}, Lcom/kingroot/kinguser/ww$a;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    .line 1300
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1301
    mul-float v0, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    iget v4, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1297
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1298
    goto :goto_2

    .line 1302
    :cond_4
    if-eqz v0, :cond_5

    .line 1303
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1304
    :cond_5
    if-eqz v3, :cond_6

    .line 1305
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1307
    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 698
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 699
    cmpg-float v2, v1, p2

    if-gez v2, :cond_1

    move p3, v0

    .line 701
    :cond_0
    :goto_0
    return p3

    .line 700
    :cond_1
    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 701
    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1

    .prologue
    .line 681
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 682
    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    .line 684
    :cond_0
    :goto_0
    return p3

    .line 683
    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    .line 684
    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 811
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 822
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 815
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 816
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 817
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 818
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 819
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 820
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 821
    iput v2, p0, Lcom/kingroot/kinguser/ww;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 829
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 830
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    aput v1, v0, p1

    .line 831
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    aput v1, v0, p1

    .line 832
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 833
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 834
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 835
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/ww;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 649
    if-nez p1, :cond_0

    .line 650
    const/4 v0, 0x0

    .line 667
    :goto_0
    return v0

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 654
    div-int/lit8 v1, v0, 0x2

    .line 655
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 656
    int-to-float v2, v1

    int-to-float v1, v1

    .line 657
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ww;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 660
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 661
    if-lez v1, :cond_1

    .line 662
    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 667
    :goto_1
    const/16 v1, 0x258

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 664
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 665
    add-float/2addr v0, v3

    const/high16 v1, 0x43800000    # 256.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 8

    .prologue
    .line 628
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/ww;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/kingroot/kinguser/ww;->clampMag(III)I

    move-result v2

    .line 629
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/ww;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/kingroot/kinguser/ww;->clampMag(III)I

    move-result v3

    .line 630
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 631
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 632
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 633
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 634
    add-int v6, v1, v5

    .line 635
    add-int v7, v0, v4

    .line 637
    if-eqz v2, :cond_0

    int-to-float v0, v1

    int-to-float v1, v6

    div-float/2addr v0, v1

    move v1, v0

    .line 639
    :goto_0
    if-eqz v3, :cond_1

    int-to-float v0, v5

    int-to-float v4, v6

    div-float/2addr v0, v4

    .line 642
    :goto_1
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v4, p1}, Lcom/kingroot/kinguser/ww$a;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p2, v2, v4}, Lcom/kingroot/kinguser/ww;->computeAxisDuration(III)I

    move-result v2

    .line 643
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v4, p1}, Lcom/kingroot/kinguser/ww$a;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4}, Lcom/kingroot/kinguser/ww;->computeAxisDuration(III)I

    move-result v3

    .line 645
    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 637
    :cond_0
    int-to-float v0, v0

    int-to-float v1, v7

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 639
    :cond_1
    int-to-float v0, v4

    int-to-float v4, v7

    div-float/2addr v0, v4

    goto :goto_1
.end method

.method private dispatchViewReleased(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 800
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ww;->mReleaseInProgress:Z

    .line 801
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ww$a;->onViewReleased(Landroid/view/View;FF)V

    .line 802
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ww;->mReleaseInProgress:Z

    .line 804
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 806
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    .line 808
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    .prologue
    .line 705
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 706
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 707
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 6

    .prologue
    .line 1419
    .line 1421
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1422
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1423
    if-eqz p3, :cond_3

    .line 1424
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/kingroot/kinguser/ww$a;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1425
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1427
    :goto_0
    if-eqz p4, :cond_2

    .line 1428
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3, v4, p2, p4}, Lcom/kingroot/kinguser/ww$a;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1429
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    sub-int v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1432
    :goto_1
    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    .line 1433
    :cond_0
    sub-int v4, v2, v0

    .line 1434
    sub-int v5, v3, v1

    .line 1435
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ww$a;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1438
    :cond_1
    return-void

    :cond_2
    move v3, p2

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 839
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    array-length v0, v0

    if-gt v0, p1, :cond_2

    .line 840
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [F

    .line 841
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [F

    .line 842
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [F

    .line 843
    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [F

    .line 844
    add-int/lit8 v4, p1, 0x1

    new-array v4, v4, [I

    .line 845
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [I

    .line 846
    add-int/lit8 v6, p1, 0x1

    new-array v6, v6, [I

    .line 848
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 849
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 852
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 853
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    :cond_1
    iput-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    .line 859
    iput-object v1, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    .line 860
    iput-object v2, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    .line 861
    iput-object v3, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    .line 862
    iput-object v4, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    .line 863
    iput-object v5, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    .line 864
    iput-object v6, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsLocked:[I

    .line 866
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 608
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 609
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 610
    sub-int v2, p1, v7

    .line 611
    sub-int v3, p2, v6

    .line 613
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 615
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 616
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    .line 624
    :goto_0
    return v0

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ww;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 621
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v5, v7

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 623
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    .line 624
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3

    .prologue
    .line 1493
    const/4 v0, 0x0

    .line 1495
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1497
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1498
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1500
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mMaxVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1409
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 1410
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/ww;->mMinVelocity:F

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mMaxVelocity:F

    .line 1409
    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/ww;->clampMag(FFF)F

    move-result v0

    .line 1412
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 1413
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mMinVelocity:F

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mMaxVelocity:F

    .line 1412
    invoke-direct {p0, v1, v2, v3}, Lcom/kingroot/kinguser/ww;->clampMag(FFF)F

    move-result v1

    .line 1415
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/ww;->dispatchViewReleased(FF)V

    .line 1416
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1246
    const/4 v1, 0x0

    .line 1247
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/ww;->checkNewEdgeDrag(FFII)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1250
    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/kingroot/kinguser/ww;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    or-int/lit8 v0, v0, 0x4

    .line 1253
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/kingroot/kinguser/ww;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    or-int/lit8 v0, v0, 0x2

    .line 1256
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/kingroot/kinguser/ww;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1257
    or-int/lit8 v0, v0, 0x8

    .line 1260
    :cond_2
    if-eqz v0, :cond_3

    .line 1261
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1262
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v1, v0, p3}, Lcom/kingroot/kinguser/ww$a;->onEdgeDragStarted(II)V

    .line 1264
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private saveInitialMotion(FFI)V
    .locals 3

    .prologue
    .line 869
    invoke-direct {p0, p3}, Lcom/kingroot/kinguser/ww;->ensureMotionHistorySizeForId(I)V

    .line 870
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 871
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 872
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/ww;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 873
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/ww;->mPointersDown:I

    .line 874
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    .line 877
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 878
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 879
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 880
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 881
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 883
    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    array-length v5, v5

    if-le v5, v2, :cond_0

    .line 885
    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    aput v3, v5, v2

    .line 886
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    aput v4, v3, v2

    .line 878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 6

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ww;->cancel()V

    .line 544
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v4

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    .line 547
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 548
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 549
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v4

    sub-int v5, v3, v5

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ww$a;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 552
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    .line 553
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 530
    invoke-direct {p0}, Lcom/kingroot/kinguser/ww;->clearMotionHistory()V

    .line 532
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 536
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    .line 497
    iput p2, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 498
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/ww$a;->onViewCaptured(Landroid/view/View;I)V

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    .line 500
    return-void
.end method

.method public continueSettling(Z)Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 747
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return v7

    .line 750
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v0, v9, :cond_6

    .line 751
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v8

    .line 752
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v2

    .line 753
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    .line 754
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 755
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 757
    if-nez v8, :cond_1

    if-eqz v5, :cond_1

    .line 759
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setTop(I)V

    move v7, v6

    .line 760
    goto :goto_0

    .line 763
    :cond_1
    if-eqz v4, :cond_2

    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 766
    :cond_2
    if-eqz v5, :cond_3

    .line 767
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 770
    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 771
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ww$a;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 774
    :cond_5
    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_9

    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_9

    .line 777
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 778
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    .line 781
    :goto_1
    if-nez v0, :cond_6

    .line 782
    if-eqz p1, :cond_7

    .line 783
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 790
    :cond_6
    :goto_2
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v0, v9, :cond_8

    move v0, v6

    :goto_3
    move v7, v0

    goto :goto_0

    .line 785
    :cond_7
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    goto :goto_2

    :cond_8
    move v0, v7

    .line 790
    goto :goto_3

    :cond_9
    move v0, v8

    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1482
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/ww$a;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1485
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1489
    :goto_1
    return-object v0

    .line 1482
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1489
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/kingroot/kinguser/ww;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1463
    if-nez p1, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 1467
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 1469
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public om()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1404
    iget v1, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1094
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1095
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1097
    if-nez v2, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ww;->cancel()V

    .line 1103
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 1104
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1106
    :cond_1
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1108
    packed-switch v2, :pswitch_data_0

    .line 1243
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1110
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1112
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1113
    float-to-int v3, v1

    float-to-int v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    .line 1115
    invoke-direct {p0, v1, v2, v0}, Lcom/kingroot/kinguser/ww;->saveInitialMotion(FFI)V

    .line 1120
    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1122
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    aget v1, v1, v0

    .line 1123
    iget v2, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1124
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Lcom/kingroot/kinguser/ww$a;->onEdgeTouched(II)V

    goto :goto_0

    .line 1130
    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1131
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1132
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 1134
    invoke-direct {p0, v1, v2, v0}, Lcom/kingroot/kinguser/ww;->saveInitialMotion(FFI)V

    .line 1137
    iget v3, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-nez v3, :cond_3

    .line 1140
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    .line 1141
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1143
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    aget v1, v1, v0

    .line 1144
    iget v2, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 1145
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Lcom/kingroot/kinguser/ww$a;->onEdgeTouched(II)V

    goto :goto_0

    .line 1147
    :cond_3
    float-to-int v1, v1

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/ww;->isCapturedViewUnder(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1152
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1158
    :pswitch_3
    iget v1, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v1, v7, :cond_4

    .line 1159
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1160
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1161
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1162
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->mLastMotionX:[F

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1163
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->mLastMotionY:[F

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1165
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/kingroot/kinguser/ww;->dragTo(IIII)V

    .line 1167
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ww;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1170
    :cond_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1171
    :goto_1
    if-ge v0, v1, :cond_5

    .line 1172
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1174
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1175
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1176
    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    aget v5, v5, v2

    sub-float/2addr v3, v5

    .line 1177
    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    .line 1179
    invoke-direct {p0, v3, v4, v2}, Lcom/kingroot/kinguser/ww;->reportNewEdgeDrags(FFI)V

    .line 1180
    iget v5, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v5, v7, :cond_6

    .line 1191
    :cond_5
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ww;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1185
    :cond_6
    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    aget v5, v5, v2

    float-to-int v5, v5

    iget-object v6, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    aget v6, v6, v2

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    .line 1186
    invoke-direct {p0, v5, v3, v4}, Lcom/kingroot/kinguser/ww;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1187
    invoke-virtual {p0, v5, v2}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1171
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1197
    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1198
    iget v3, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v3, v7, :cond_a

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    if-ne v2, v3, :cond_a

    .line 1201
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1202
    :goto_2
    if-ge v0, v3, :cond_d

    .line 1203
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1204
    iget v5, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    if-ne v4, v5, :cond_9

    .line 1202
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1209
    :cond_9
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1210
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1211
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    .line 1212
    invoke-virtual {p0, v5, v4}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1213
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 1218
    :goto_3
    if-ne v0, v1, :cond_a

    .line 1220
    invoke-direct {p0}, Lcom/kingroot/kinguser/ww;->releaseViewForPointerUp()V

    .line 1223
    :cond_a
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ww;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1228
    :pswitch_5
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v0, v7, :cond_b

    .line 1229
    invoke-direct {p0}, Lcom/kingroot/kinguser/ww;->releaseViewForPointerUp()V

    .line 1231
    :cond_b
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ww;->cancel()V

    goto/16 :goto_0

    .line 1236
    :pswitch_6
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v0, v7, :cond_c

    .line 1237
    invoke-direct {p0, v5, v5}, Lcom/kingroot/kinguser/ww;->dispatchViewReleased(FF)V

    .line 1239
    :cond_c
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ww;->cancel()V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_3

    .line 1108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setDragState(I)V
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 910
    iput p1, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    .line 911
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ww$a;->onViewDragStateChanged(I)V

    .line 912
    iget v0, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-nez v0, :cond_0

    .line 913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    .line 916
    :cond_0
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .prologue
    .line 432
    iput p1, p0, Lcom/kingroot/kinguser/ww;->mMinVelocity:F

    .line 433
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ww;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 594
    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 595
    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 593
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingroot/kinguser/ww;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 984
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 985
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .line 987
    if-nez v2, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ww;->cancel()V

    .line 993
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    .line 994
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 996
    :cond_1
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 998
    packed-switch v2, :pswitch_data_0

    .line 1084
    :cond_2
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v2, v0, :cond_9

    :goto_1
    return v0

    .line 1000
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1002
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1003
    invoke-direct {p0, v2, v3, v4}, Lcom/kingroot/kinguser/ww;->saveInitialMotion(FFI)V

    .line 1005
    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 1008
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    if-ne v2, v3, :cond_3

    iget v3, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v3, v6, :cond_3

    .line 1009
    invoke-virtual {p0, v2, v4}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1012
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    aget v2, v2, v4

    .line 1013
    iget v3, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 1014
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget v5, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v2, v5

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/ww$a;->onEdgeTouched(II)V

    goto :goto_0

    .line 1020
    :pswitch_2
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1021
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 1022
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1024
    invoke-direct {p0, v4, v3, v2}, Lcom/kingroot/kinguser/ww;->saveInitialMotion(FFI)V

    .line 1027
    iget v5, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-nez v5, :cond_4

    .line 1028
    iget-object v3, p0, Lcom/kingroot/kinguser/ww;->mInitialEdgesTouched:[I

    aget v3, v3, v2

    .line 1029
    iget v4, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 1030
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    iget v5, p0, Lcom/kingroot/kinguser/ww;->mTrackingEdges:I

    and-int/2addr v3, v5

    invoke-virtual {v4, v3, v2}, Lcom/kingroot/kinguser/ww$a;->onEdgeTouched(II)V

    goto :goto_0

    .line 1032
    :cond_4
    iget v5, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v5, v6, :cond_2

    .line 1034
    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {p0, v4, v3}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v3

    .line 1035
    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    if-ne v3, v4, :cond_2

    .line 1036
    invoke-virtual {p0, v3, v2}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    .line 1044
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    move v2, v1

    .line 1045
    :goto_2
    if-ge v2, v3, :cond_7

    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    if-eqz v4, :cond_7

    .line 1046
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 1047
    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    array-length v5, v5

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    array-length v5, v5

    if-lt v4, v5, :cond_6

    .line 1045
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1050
    :cond_6
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1051
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1052
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    aget v7, v7, v4

    sub-float/2addr v5, v7

    .line 1053
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    .line 1055
    invoke-direct {p0, v5, v6, v4}, Lcom/kingroot/kinguser/ww;->reportNewEdgeDrags(FFI)V

    .line 1056
    iget v7, p0, Lcom/kingroot/kinguser/ww;->mDragState:I

    if-ne v7, v0, :cond_8

    .line 1067
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ww;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1061
    :cond_8
    iget-object v7, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionX:[F

    aget v7, v7, v4

    float-to-int v7, v7

    iget-object v8, p0, Lcom/kingroot/kinguser/ww;->mInitialMotionY:[F

    aget v8, v8, v4

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/kingroot/kinguser/ww;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1062
    if-eqz v7, :cond_5

    invoke-direct {p0, v7, v5, v6}, Lcom/kingroot/kinguser/ww;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1063
    invoke-virtual {p0, v7, v4}, Lcom/kingroot/kinguser/ww;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 1072
    :pswitch_4
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 1073
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/ww;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1079
    :pswitch_5
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ww;->cancel()V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 1084
    goto/16 :goto_1

    .line 998
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 570
    iput-object p1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 573
    invoke-direct {p0, p2, p3, v1, v1}, Lcom/kingroot/kinguser/ww;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 928
    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    .line 937
    :goto_0
    return v0

    .line 932
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/ww;->Sk:Lcom/kingroot/kinguser/ww$a;

    invoke-virtual {v1, p1, p2}, Lcom/kingroot/kinguser/ww$a;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    iput p2, p0, Lcom/kingroot/kinguser/ww;->mActivePointerId:I

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/ww;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    .line 937
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
