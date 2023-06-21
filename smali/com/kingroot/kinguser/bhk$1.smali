.class final Lcom/kingroot/kinguser/bhk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bhk;->c(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Wz:I

.field final synthetic bqP:Lcom/android/animation/AnimatorListenerAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/kingroot/kinguser/bhk$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/kingroot/kinguser/bhk$1;->Wz:I

    iput-object p3, p0, Lcom/kingroot/kinguser/bhk$1;->bqP:Lcom/android/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/bhk$1;->val$view:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/kingroot/kinguser/bhk$1;->val$view:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/kingroot/kinguser/bhk$1;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    aput v4, v3, v8

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 236
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 237
    new-array v3, v7, [Lcom/android/animation/Animator;

    aput-object v0, v3, v8

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 238
    iget v0, p0, Lcom/kingroot/kinguser/bhk$1;->Wz:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 239
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 240
    new-instance v0, Lcom/kingroot/kinguser/bhk$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/bhk$1;->bqP:Lcom/android/animation/AnimatorListenerAdapter;

    iget-object v3, p0, Lcom/kingroot/kinguser/bhk$1;->val$view:Landroid/view/View;

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/bhk$b;-><init>(Lcom/android/animation/AnimatorListenerAdapter;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 241
    invoke-virtual {v2}, Lcom/android/animation/AnimatorSet;->start()V

    .line 242
    return v6

    .line 234
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method
