.class public Lcom/kingroot/kinguser/xk;
.super Lcom/kingroot/kinguser/xi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/kingroot/kinguser/xi;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 10
    return-void
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 19
    return-void
.end method
