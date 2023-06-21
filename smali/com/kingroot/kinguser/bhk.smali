.class public Lcom/kingroot/kinguser/bhk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhk$a;,
        Lcom/kingroot/kinguser/bhk$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V
    .locals 4

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 94
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 95
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    new-instance v1, Lcom/kingroot/kinguser/bhk$b;

    invoke-direct {v1, p2, p0}, Lcom/kingroot/kinguser/bhk$b;-><init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 99
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V
    .locals 3

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 117
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 118
    new-instance v1, Lcom/kingroot/kinguser/bhk$b;

    invoke-direct {v1, p3, p0}, Lcom/kingroot/kinguser/bhk$b;-><init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 119
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 114
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(Landroid/view/View;JZ)V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 378
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 380
    if-eqz p3, :cond_0

    .line 381
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 383
    :cond_0
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 384
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 385
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 386
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;FF)V
    .locals 4

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "translationY"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 179
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 180
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    new-instance v1, Lcom/kingroot/kinguser/bhk$b;

    invoke-direct {v1, p1, p0}, Lcom/kingroot/kinguser/bhk$b;-><init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 182
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;ZLcom/kingroot/kinguser/bhk$a;)V
    .locals 4

    .prologue
    .line 430
    .line 432
    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 434
    new-instance v1, Lcom/kingroot/kinguser/bhk$3;

    invoke-direct {v1, p1, p0, v0}, Lcom/kingroot/kinguser/bhk$3;-><init>(ZLandroid/view/View;I)V

    .line 455
    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 457
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 458
    return-void
.end method

.method public static b(Landroid/view/View;FFJ)V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 370
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v1, p1

    move v2, p2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 372
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 373
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 374
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    return-void
.end method

.method public static b(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 139
    if-nez p0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "scaleX"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 143
    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    const-string v1, "scaleY"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    .line 145
    invoke-static {p0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 147
    new-array v3, v3, [Lcom/android/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 148
    int-to-long v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 149
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    new-instance v0, Lcom/kingroot/kinguser/bhk$b;

    invoke-direct {v0, p2, p0}, Lcom/kingroot/kinguser/bhk$b;-><init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 151
    invoke-virtual {v2}, Lcom/android/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 142
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 144
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static b(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0x1f4

    invoke-static {p0, v0, p1}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V

    .line 157
    return-void
.end method

.method public static c(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 225
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bhk$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bhk$1;-><init>(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public static c(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x12c

    invoke-static {p0, v0, p1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V

    .line 86
    return-void
.end method

.method public static d(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, 0x12c

    invoke-static {p0, v0, v1, p1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V

    .line 106
    return-void
.end method

.method public static e(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 2

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bhk$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/bhk$2;-><init>(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
