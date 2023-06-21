.class Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(IIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v2}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->b(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->b(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 77
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v2}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->c(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->d(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v3

    iget-object v4, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v4}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->c(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 78
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v2}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->e(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->e(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 79
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v1}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v2}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->f(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->g(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v3

    iget-object v4, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-static {v4}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->f(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;->aQC:Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->invalidate()V

    .line 81
    return-void
.end method
