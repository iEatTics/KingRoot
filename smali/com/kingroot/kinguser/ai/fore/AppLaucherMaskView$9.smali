.class Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$9;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->xp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$9;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 465
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$9;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->f(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 466
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$9;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->g(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;->xq()V

    .line 472
    return-void
.end method
