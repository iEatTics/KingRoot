.class Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;
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
    .line 393
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;Z)Z

    .line 407
    new-instance v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6$1;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 414
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationStart(Lcom/android/animation/Animator;)V

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;Z)Z

    .line 399
    return-void
.end method
