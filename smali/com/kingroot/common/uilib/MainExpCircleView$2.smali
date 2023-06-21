.class Lcom/kingroot/common/uilib/MainExpCircleView$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpCircleView;->a(JILandroid/view/View;Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ob:Lcom/android/animation/AnimatorListenerAdapter;

.field final synthetic Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

.field final synthetic Od:Lcom/android/animation/ObjectAnimator;

.field final synthetic Oe:Lcom/android/animation/ObjectAnimator;

.field final synthetic Of:Lcom/android/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpCircleView;Lcom/android/animation/ObjectAnimator;Lcom/android/animation/ObjectAnimator;Lcom/android/animation/ObjectAnimator;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    iput-object p2, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Od:Lcom/android/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Oe:Lcom/android/animation/ObjectAnimator;

    iput-object p4, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Of:Lcom/android/animation/ObjectAnimator;

    iput-object p5, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 187
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 188
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->g(Lcom/kingroot/common/uilib/MainExpCircleView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Od:Lcom/android/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 191
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Oe:Lcom/android/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 192
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Of:Lcom/android/animation/ObjectAnimator;

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 193
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Od:Lcom/android/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->reverse()V

    .line 194
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Oe:Lcom/android/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->reverse()V

    .line 195
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Of:Lcom/android/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->reverse()V

    .line 197
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Oc:Lcom/kingroot/common/uilib/MainExpCircleView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/MainExpCircleView;->h(Lcom/kingroot/common/uilib/MainExpCircleView;)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpCircleView$2;->Ob:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 202
    :cond_0
    return-void
.end method
