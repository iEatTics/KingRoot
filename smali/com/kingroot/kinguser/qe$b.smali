.class public Lcom/kingroot/kinguser/qe$b;
.super Lcom/kingroot/kinguser/qj$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/qe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/qj$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v0, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v3

    sub-float/2addr v2, v3

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p2, v0, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    sub-float/2addr v3, v4

    .line 31
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v4, v2

    if-ltz v2, :cond_0

    .line 35
    invoke-static {p1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bhi;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/qe$b;->Eg:F

    .line 36
    iput v3, p0, Lcom/kingroot/kinguser/qe$b;->Eo:F

    .line 37
    iget v2, p0, Lcom/kingroot/kinguser/qe$b;->Eo:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/kingroot/kinguser/qe$b;->Ep:Z

    move v0, v1

    .line 39
    goto :goto_0
.end method
