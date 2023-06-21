.class public Lcom/kingroot/kinguser/xf;
.super Lcom/kingroot/kinguser/xi;
.source "SourceFile"


# instance fields
.field private TM:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/kingroot/kinguser/xi;-><init>()V

    .line 7
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/kingroot/kinguser/xf;->TM:F

    .line 10
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 19
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 24
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 25
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 26
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 27
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    sub-float v0, v2, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/xf;->TM:F

    iget v1, p0, Lcom/kingroot/kinguser/xf;->TM:F

    sub-float v1, v2, v1

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 34
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 35
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 36
    return-void
.end method
