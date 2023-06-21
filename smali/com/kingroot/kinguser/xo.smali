.class public Lcom/kingroot/kinguser/xo;
.super Lcom/kingroot/kinguser/xi;
.source "SourceFile"


# instance fields
.field private TM:F

.field private Ue:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/kingroot/kinguser/xi;-><init>()V

    .line 7
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/kingroot/kinguser/xo;->TM:F

    .line 8
    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/kingroot/kinguser/xo;->Ue:F

    .line 11
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 21
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/xo;->TM:F

    add-float v1, v4, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 28
    div-float/2addr v1, v5

    sub-float v1, v2, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 29
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 30
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 31
    iget v1, p0, Lcom/kingroot/kinguser/xo;->Ue:F

    iget v2, p0, Lcom/kingroot/kinguser/xo;->TM:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/kingroot/kinguser/xo;->TM:F

    sub-float v2, v4, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/kingroot/kinguser/xo;->Ue:F

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 32
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/xo;->TM:F

    sub-float v1, v4, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, v4, v0

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 39
    neg-float v2, v2

    div-float/2addr v1, v5

    add-float/2addr v1, v2

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 40
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 41
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 42
    iget v1, p0, Lcom/kingroot/kinguser/xo;->Ue:F

    iget v2, p0, Lcom/kingroot/kinguser/xo;->TM:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/kingroot/kinguser/xo;->TM:F

    sub-float v2, v4, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/kingroot/kinguser/xo;->Ue:F

    sub-float v2, v4, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 43
    return-void
.end method
