.class public Lcom/kingroot/kinguser/xc;
.super Lcom/kingroot/kinguser/xi;
.source "SourceFile"


# instance fields
.field private TM:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/xi;-><init>()V

    .line 12
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/kingroot/kinguser/xc;->TM:F

    .line 15
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 24
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/xc;->TM:F

    iget v1, p0, Lcom/kingroot/kinguser/xc;->TM:F

    sub-float v1, v2, v1

    add-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 29
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/xc;->TM:F

    iget v1, p0, Lcom/kingroot/kinguser/xc;->TM:F

    sub-float v1, v2, v1

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 34
    return-void
.end method
