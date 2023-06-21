.class public Lcom/kingroot/kinguser/xj;
.super Lcom/kingroot/kinguser/xi;
.source "SourceFile"


# instance fields
.field private TN:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/kingroot/kinguser/xi;-><init>()V

    .line 7
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/kingroot/kinguser/xj;->TN:F

    .line 10
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 20
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 21
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/xj;->TN:F

    mul-float/2addr v0, p2

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 28
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 29
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/xj;->d(Landroid/view/View;F)V

    .line 34
    return-void
.end method
