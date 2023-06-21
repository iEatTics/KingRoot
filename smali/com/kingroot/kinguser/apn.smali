.class public Lcom/kingroot/kinguser/apn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aY(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 135
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 137
    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)Lcom/android/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 31
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 32
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/apn;->aY(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 34
    invoke-static {p1}, Lcom/kingroot/kinguser/apm;->v(Landroid/view/View;)Lcom/kingroot/kinguser/apm;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/kingroot/kinguser/apm;->getX()I

    .line 36
    invoke-virtual {v3}, Lcom/kingroot/kinguser/apm;->getWidth()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    .line 38
    invoke-virtual {v3}, Lcom/kingroot/kinguser/apm;->getY()I

    move-result v5

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/apn;->aY(Landroid/content/Context;)I

    move-result v0

    sub-int v0, v5, v0

    .line 39
    invoke-virtual {v3}, Lcom/kingroot/kinguser/apm;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 41
    int-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v3}, Lcom/kingroot/kinguser/apm;->Lq()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 44
    const-string v2, "scaleX"

    new-array v3, v7, [F

    invoke-static {p2}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/bhi;->getScaleX()F

    move-result v5

    aput v5, v3, v8

    aput v1, v3, v9

    invoke-static {p2, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 46
    const-string v3, "scaleY"

    new-array v5, v7, [F

    invoke-static {p2}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/bhi;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v1, v5, v9

    invoke-static {p2, v3, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 48
    const-string v3, "x"

    new-array v5, v7, [F

    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/bhi;->getTranslationX()F

    move-result v6

    aput v6, v5, v8

    int-to-float v4, v4

    aput v4, v5, v9

    invoke-static {p2, v3, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v3

    .line 50
    const-string v4, "y"

    new-array v5, v7, [F

    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/bhi;->getTranslationY()F

    move-result v6

    aput v6, v5, v8

    int-to-float v0, v0

    aput v0, v5, v9

    invoke-static {p2, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 52
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {p2, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v4

    .line 54
    new-instance v5, Lcom/android/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 55
    const/4 v6, 0x5

    new-array v6, v6, [Lcom/android/animation/Animator;

    aput-object v3, v6, v8

    aput-object v0, v6, v9

    aput-object v2, v6, v7

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    invoke-virtual {v5, v6}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 56
    const-wide/16 v0, 0x64

    invoke-virtual {v5, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 57
    return-object v5

    .line 52
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(Landroid/view/View;Landroid/view/View;)Lcom/android/animation/Animator;
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 62
    invoke-static {p2}, Lcom/kingroot/kinguser/apm;->v(Landroid/view/View;)Lcom/kingroot/kinguser/apm;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/kingroot/kinguser/apm;->Lq()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apm;->Lp()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    sub-float v2, v4, v2

    mul-float/2addr v2, v6

    .line 68
    invoke-virtual {v0}, Lcom/kingroot/kinguser/apm;->getY()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/kingroot/kinguser/apn;->aY(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-float v0, v2, v0

    .line 71
    const-string v2, "scaleX"

    new-array v4, v7, [F

    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/bhi;->getScaleX()F

    move-result v5

    aput v5, v4, v8

    aput v1, v4, v9

    invoke-static {p1, v2, v4}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 73
    const-string v4, "scaleY"

    new-array v5, v7, [F

    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/bhi;->getScaleY()F

    move-result v6

    aput v6, v5, v8

    aput v1, v5, v9

    invoke-static {p1, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 75
    const-string v4, "x"

    new-array v5, v7, [F

    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/bhi;->getTranslationX()F

    move-result v6

    aput v6, v5, v8

    neg-float v3, v3

    aput v3, v5, v9

    invoke-static {p1, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v3

    .line 77
    const-string v4, "y"

    new-array v5, v7, [F

    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/bhi;->getTranslationY()F

    move-result v6

    aput v6, v5, v8

    neg-float v0, v0

    aput v0, v5, v9

    invoke-static {p1, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 79
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v4

    .line 82
    new-instance v5, Lcom/android/animation/AnimatorSet;

    invoke-direct {v5}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 83
    invoke-virtual {v5, v2}, Lcom/android/animation/AnimatorSet;->play(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v1}, Lcom/android/animation/AnimatorSet$Builder;->with(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 85
    invoke-virtual {v1, v3}, Lcom/android/animation/AnimatorSet$Builder;->with(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/animation/AnimatorSet$Builder;->with(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v4}, Lcom/android/animation/AnimatorSet$Builder;->with(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    .line 88
    const-wide/16 v0, 0x12c

    invoke-virtual {v5, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 89
    return-object v5

    .line 79
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public k(Landroid/view/View;I)Lcom/android/animation/Animator;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 115
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 116
    new-instance v1, Lcom/kingroot/kinguser/apn$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingroot/kinguser/apn$2;-><init>(Lcom/kingroot/kinguser/apn;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    return-object v0
.end method

.method public u(Landroid/view/View;)Lcom/android/animation/Animator;
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 97
    new-instance v1, Lcom/kingroot/kinguser/apn$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/apn$1;-><init>(Lcom/kingroot/kinguser/apn;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    return-object v0

    .line 94
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
