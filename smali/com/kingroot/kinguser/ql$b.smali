.class public Lcom/kingroot/kinguser/ql$b;
.super Lcom/kingroot/kinguser/qj$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ql;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/qj$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-nez v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v0, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v3

    sub-float/2addr v2, v3

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, v0, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    sub-float/2addr v3, v4

    .line 32
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 36
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    iput v3, p0, Lcom/kingroot/kinguser/ql$b;->Eg:F

    .line 37
    iput v2, p0, Lcom/kingroot/kinguser/ql$b;->Eo:F

    .line 38
    iget v2, p0, Lcom/kingroot/kinguser/ql$b;->Eo:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ql$b;->Ep:Z

    move v0, v1

    .line 40
    goto :goto_0
.end method
