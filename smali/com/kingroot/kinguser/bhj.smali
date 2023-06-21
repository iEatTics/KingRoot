.class public Lcom/kingroot/kinguser/bhj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhj$a;
    }
.end annotation


# direct methods
.method public static a([Lcom/kingroot/kinguser/wq$a;[F[FJLcom/kingroot/kinguser/bhj$a;)Lcom/android/animation/AnimatorSet;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 24
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_0

    if-nez p5, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    .line 27
    :cond_1
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 28
    array-length v0, p0

    new-array v3, v0, [Lcom/android/animation/ValueAnimator;

    move v0, v1

    .line 29
    :goto_1
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 30
    const/4 v4, 0x2

    new-array v4, v4, [F

    aget v5, p1, v0

    aput v5, v4, v1

    const/4 v5, 0x1

    aget v6, p2, v0

    aput v6, v4, v5

    invoke-static {v4}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    .line 31
    aget-object v5, p0, v0

    iget-object v5, v5, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {v4, p3, p4}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 33
    new-instance v6, Lcom/kingroot/kinguser/bhj$1;

    invoke-direct {v6, p5, v5}, Lcom/kingroot/kinguser/bhj$1;-><init>(Lcom/kingroot/kinguser/bhj$a;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v0, v2

    .line 42
    goto :goto_0
.end method
