.class Lcom/kingroot/kinguser/apn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apn;->k(Landroid/view/View;I)Lcom/android/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHT:Lcom/kingroot/kinguser/apn;

.field final synthetic aHU:I

.field final synthetic abL:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apn;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kingroot/kinguser/apn$2;->aHT:Lcom/kingroot/kinguser/apn;

    iput p2, p0, Lcom/kingroot/kinguser/apn$2;->aHU:I

    iput-object p3, p0, Lcom/kingroot/kinguser/apn$2;->abL:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 119
    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 120
    iget v1, p0, Lcom/kingroot/kinguser/apn$2;->aHU:I

    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/kingroot/kinguser/apn$2;->abL:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    return-void
.end method
