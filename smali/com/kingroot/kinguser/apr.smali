.class public Lcom/kingroot/kinguser/apr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aJr:Lcom/kingroot/kinguser/apq;

.field private aJs:F

.field private aJt:F

.field private aJu:F

.field private aJv:F

.field private aJw:F

.field private aJx:F


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/apq;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kingroot/kinguser/apr;->aJr:Lcom/kingroot/kinguser/apq;

    .line 21
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)F
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJu:F

    .line 54
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJv:F

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJw:F

    .line 56
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJx:F

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/apr;->aJx:F

    iget v1, p0, Lcom/kingroot/kinguser/apr;->aJv:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/kingroot/kinguser/apr;->aJw:F

    iget v2, p0, Lcom/kingroot/kinguser/apr;->aJu:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 27
    packed-switch v0, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 30
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apr;->e(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJs:F

    goto :goto_0

    .line 33
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/apr;->e(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJt:F

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/apr;->aJt:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 37
    iget v2, p0, Lcom/kingroot/kinguser/apr;->aJs:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 39
    sub-double/2addr v0, v2

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/kingroot/kinguser/apr;->aJr:Lcom/kingroot/kinguser/apq;

    double-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/apr;->aJw:F

    iget v3, p0, Lcom/kingroot/kinguser/apr;->aJu:F

    add-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v3, p0, Lcom/kingroot/kinguser/apr;->aJx:F

    iget v4, p0, Lcom/kingroot/kinguser/apr;->aJv:F

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-interface {v2, v0, v1, v3}, Lcom/kingroot/kinguser/apq;->a(FFF)V

    .line 44
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/apr;->aJt:F

    iput v0, p0, Lcom/kingroot/kinguser/apr;->aJs:F

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
