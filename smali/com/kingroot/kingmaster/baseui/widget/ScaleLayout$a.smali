.class final Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private acI:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;

.field private acJ:I

.field private acK:I


# direct methods
.method constructor <init>(Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;)V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acI:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;

    .line 309
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 311
    return-void
.end method


# virtual methods
.method D(II)V
    .locals 0

    .prologue
    .line 314
    iput p1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acJ:I

    .line 315
    iput p2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acK:I

    .line 316
    return-void
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 320
    .line 321
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acJ:I

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acK:I

    if-le v0, v1, :cond_0

    .line 322
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acJ:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acJ:I

    iget v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acK:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acI:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;

    invoke-virtual {v1, v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->setScaleHeight(F)V

    .line 328
    iget-object v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acI:Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout;->requestLayout()V

    .line 329
    return-void

    .line 324
    :cond_0
    iget v0, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acJ:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acK:I

    iget v2, p0, Lcom/kingroot/kingmaster/baseui/widget/ScaleLayout$a;->acJ:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0
.end method
