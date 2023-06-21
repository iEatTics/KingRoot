.class public Lcom/kingroot/kinguser/qb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/qb$a;
    }
.end annotation


# static fields
.field private static zz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x258

    sput v0, Lcom/kingroot/kinguser/qb;->zz:I

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/android/animation/Animator$AnimatorListener;)Lcom/android/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 56
    const-string v0, "alpha"

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 57
    const-string v1, "scaleX"

    new-array v2, v7, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 58
    const-string v2, "scaleY"

    new-array v3, v7, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/kingroot/kinguser/xr;

    sget-object v4, Lcom/kingroot/kinguser/xq;->Up:Lcom/kingroot/kinguser/xq;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    .line 60
    invoke-virtual {v1, v3}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 61
    invoke-virtual {v2, v3}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 63
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/qb;->a(Landroid/widget/ImageView;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/android/animation/ValueAnimator;

    move-result-object v3

    .line 64
    new-instance v4, Lcom/android/animation/AnimatorSet;

    invoke-direct {v4}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 66
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/android/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    aput-object v2, v5, v7

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 67
    sget v0, Lcom/kingroot/kinguser/qb;->zz:I

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 68
    invoke-virtual {v4, p0}, Lcom/android/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v4, p3}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 70
    return-object v4

    .line 56
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 57
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/Point;Landroid/graphics/Point;)Lcom/android/animation/ValueAnimator;
    .locals 4

    .prologue
    .line 31
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 35
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 36
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 37
    new-instance v0, Lcom/kingroot/kinguser/qb$a;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/qb$a;-><init>(Landroid/graphics/Point;)V

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/animation/ValueAnimator;->ofObject(Lcom/android/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/kingroot/kinguser/qb$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/qb$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/android/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 49
    sget v1, Lcom/kingroot/kinguser/qb;->zz:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    goto :goto_0
.end method
