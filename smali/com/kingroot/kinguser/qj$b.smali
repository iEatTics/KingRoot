.class public Lcom/kingroot/kinguser/qj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/kingroot/kinguser/qj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field protected final Ei:Landroid/view/animation/Interpolator;

.field protected final Ej:F

.field protected final Ek:F

.field protected final El:Lcom/kingroot/kinguser/qj$a;

.field final synthetic Em:Lcom/kingroot/kinguser/qj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/qj;F)V
    .locals 1

    .prologue
    .line 318
    iput-object p1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/qj$b;->Ei:Landroid/view/animation/Interpolator;

    .line 319
    iput p2, p0, Lcom/kingroot/kinguser/qj$b;->Ej:F

    .line 320
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/kingroot/kinguser/qj$b;->Ek:F

    .line 322
    invoke-virtual {p1}, Lcom/kingroot/kinguser/qj;->ho()Lcom/kingroot/kinguser/qj$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    .line 323
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;IF)Lcom/android/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj$a;->mProperty:Lcom/android/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lcom/android/util/Property;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 413
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 414
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Ei:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 415
    invoke-virtual {v0, p0}, Lcom/android/animation/ObjectAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/kingroot/kinguser/qj$c;)V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->Ed:Lcom/kingroot/kinguser/qg;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    invoke-interface {p1}, Lcom/kingroot/kinguser/qj$c;->hq()I

    move-result v2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj$b;->hq()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/qg;->a(Lcom/kingroot/kinguser/qf;II)V

    .line 335
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qj$b;->hr()Lcom/android/animation/Animator;

    move-result-object v0

    .line 336
    invoke-virtual {v0, p0}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 338
    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    .line 339
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method protected e(F)Lcom/android/animation/ObjectAnimator;
    .locals 6

    .prologue
    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v0, v0, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qm;->getView()Landroid/view/View;

    move-result-object v0

    .line 424
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    iget v2, v2, Lcom/kingroot/kinguser/qj$a;->Eh:F

    div-float/2addr v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    mul-float/2addr v1, v2

    .line 425
    iget-object v2, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/qj$a;->mProperty:Lcom/android/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v5, v5, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget v5, v5, Lcom/kingroot/kinguser/qj$f;->Eg:F

    aput v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lcom/android/util/Property;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 426
    float-to-int v1, v1

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 427
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Ei:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 428
    invoke-virtual {v0, p0}, Lcom/android/animation/ObjectAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 429
    return-object v0
.end method

.method public hq()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x3

    return v0
.end method

.method protected hr()Lcom/android/animation/Animator;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DY:Lcom/kingroot/kinguser/qm;

    invoke-interface {v1}, Lcom/kingroot/kinguser/qm;->getView()Landroid/view/View;

    move-result-object v2

    .line 381
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/qj$a;->c(Landroid/view/View;)V

    .line 387
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget v1, v1, Lcom/kingroot/kinguser/qj;->Ef:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget v1, v1, Lcom/kingroot/kinguser/qj;->Ef:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget v1, v1, Lcom/kingroot/kinguser/qj;->Ef:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DX:Lcom/kingroot/kinguser/qj$f;

    iget-boolean v1, v1, Lcom/kingroot/kinguser/qj$f;->Ep:Z

    if-nez v1, :cond_2

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    iget v0, v0, Lcom/kingroot/kinguser/qj$a;->Eg:F

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/qj$b;->e(F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget v1, v1, Lcom/kingroot/kinguser/qj;->Ef:F

    neg-float v1, v1

    iget v3, p0, Lcom/kingroot/kinguser/qj$b;->Ej:F

    div-float/2addr v1, v3

    .line 393
    cmpg-float v3, v1, v0

    if-gez v3, :cond_3

    .line 396
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget v1, v1, Lcom/kingroot/kinguser/qj;->Ef:F

    neg-float v1, v1

    iget-object v3, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget v3, v3, Lcom/kingroot/kinguser/qj;->Ef:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/kingroot/kinguser/qj$b;->Ek:F

    div-float/2addr v1, v3

    .line 397
    iget-object v3, p0, Lcom/kingroot/kinguser/qj$b;->El:Lcom/kingroot/kinguser/qj$a;

    iget v3, v3, Lcom/kingroot/kinguser/qj$a;->Eg:F

    add-float/2addr v1, v3

    .line 399
    float-to-int v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/kingroot/kinguser/qj$b;->a(Landroid/view/View;IF)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 403
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/qj$b;->e(F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 406
    new-instance v0, Lcom/android/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 407
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/animation/AnimatorSet;->playSequentially([Lcom/android/animation/Animator;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 393
    goto :goto_1
.end method

.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v1, Lcom/kingroot/kinguser/qj;->DZ:Lcom/kingroot/kinguser/qj$d;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qj;->a(Lcom/kingroot/kinguser/qj$c;)V

    .line 358
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 367
    return-void
.end method

.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    iget-object v1, v0, Lcom/kingroot/kinguser/qj;->Ee:Lcom/kingroot/kinguser/qh;

    iget-object v2, p0, Lcom/kingroot/kinguser/qj$b;->Em:Lcom/kingroot/kinguser/qj;

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/kingroot/kinguser/qh;->a(Lcom/kingroot/kinguser/qf;IF)V

    .line 363
    return-void
.end method
