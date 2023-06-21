.class final Lcom/kingroot/kinguser/bhk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhk;->e(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic bqP:Lcom/android/animation/AnimatorListenerAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kingroot/kinguser/bhk$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/kingroot/kinguser/bhk$2;->bqP:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$2;->val$view:Landroid/view/View;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bhk$2;->val$view:Landroid/view/View;

    .line 262
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 261
    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 263
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 264
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 265
    new-instance v1, Lcom/kingroot/kinguser/bhk$b;

    iget-object v2, p0, Lcom/kingroot/kinguser/bhk$2;->bqP:Lcom/android/animation/AnimatorListenerAdapter;

    iget-object v3, p0, Lcom/kingroot/kinguser/bhk$2;->val$view:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/kingroot/kinguser/bhk$b;-><init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 266
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 267
    return v5
.end method
