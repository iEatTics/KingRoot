.class Lcom/kingroot/kinguser/axm$26;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->d(Lcom/android/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ob:Lcom/android/animation/AnimatorListenerAdapter;

.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$26;->this$0:Lcom/kingroot/kinguser/axm;

    iput-object p2, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationCancel(Lcom/android/animation/Animator;)V

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationCancel(Lcom/android/animation/Animator;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 432
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->j(Lcom/kingroot/kinguser/axm;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 436
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationRepeat(Lcom/android/animation/Animator;)V

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationRepeat(Lcom/android/animation/Animator;)V

    .line 444
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$26;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 419
    :cond_0
    return-void
.end method
