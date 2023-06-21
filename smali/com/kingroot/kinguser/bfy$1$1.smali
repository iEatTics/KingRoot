.class Lcom/kingroot/kinguser/bfy$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqX:Landroid/view/WindowManager;

.field final synthetic bnR:Landroid/view/View;

.field final synthetic bnS:Landroid/view/View;

.field final synthetic bnT:Lcom/kingroot/kinguser/bfy$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfy$1;Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnT:Lcom/kingroot/kinguser/bfy$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnR:Landroid/view/View;

    iput-object p3, p0, Lcom/kingroot/kinguser/bfy$1$1;->aqX:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnS:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnR:Landroid/view/View;

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnR:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    iget-object v3, p0, Lcom/kingroot/kinguser/bfy$1$1;->bnR:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 115
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 116
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 117
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 118
    new-instance v1, Lcom/kingroot/kinguser/bfy$1$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfy$1$1$1;-><init>(Lcom/kingroot/kinguser/bfy$1$1;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 139
    return v5
.end method
