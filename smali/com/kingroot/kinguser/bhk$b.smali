.class Lcom/kingroot/kinguser/bhk$b;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private bqS:Lcom/android/animation/AnimatorListenerAdapter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    .line 396
    iput-object p2, p0, Lcom/kingroot/kinguser/bhk$b;->view:Landroid/view/View;

    .line 397
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationCancel(Lcom/android/animation/Animator;)V

    .line 420
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 414
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationRepeat(Lcom/android/animation/Animator;)V

    .line 426
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$b;->bqS:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 407
    :cond_1
    return-void
.end method
