.class Lcom/kingroot/kinguser/apn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apn;->u(Landroid/view/View;)Lcom/android/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHS:Landroid/view/View;

.field final synthetic aHT:Lcom/kingroot/kinguser/apn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apn;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/apn$1;->aHT:Lcom/kingroot/kinguser/apn;

    iput-object p2, p0, Lcom/kingroot/kinguser/apn$1;->aHS:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 100
    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 101
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 102
    sub-float v0, v2, v0

    .line 103
    iget-object v2, p0, Lcom/kingroot/kinguser/apn$1;->aHS:Landroid/view/View;

    invoke-static {v2}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bhi;->setScaleX(F)V

    .line 104
    iget-object v2, p0, Lcom/kingroot/kinguser/apn$1;->aHS:Landroid/view/View;

    invoke-static {v2}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bhi;->setScaleY(F)V

    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/apn$1;->aHS:Landroid/view/View;

    invoke-static {v1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bhi;->setAlpha(F)V

    .line 106
    return-void
.end method
