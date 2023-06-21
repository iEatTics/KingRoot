.class public Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private Az:F

.field private Cu:F

.field private Cz:I

.field private bgJ:Landroid/graphics/Paint;

.field private bgK:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private zD:I

.field private zF:F

.field private zG:F

.field private zI:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->init()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;)F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Cu:F

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;F)F
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Cu:F

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zD:I

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    iput v3, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zD:I

    .line 53
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Az:F

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgJ:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgJ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgJ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgJ:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgJ:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Az:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgK:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgK:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgK:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgK:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgK:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Az:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Cz:I

    .line 69
    return-void
.end method

.method private p(II)I
    .locals 2

    .prologue
    .line 141
    .line 143
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 144
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 146
    sparse-switch v1, :sswitch_data_0

    .line 166
    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    move p1, v0

    .line 156
    goto :goto_0

    :sswitch_2
    move p1, v0

    .line 161
    goto :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle$1;-><init>(Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->mHandler:Landroid/os/Handler;

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 129
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->mHandler:Landroid/os/Handler;

    .line 138
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Cu:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zF:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zG:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zI:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    iget-object v5, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgJ:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zI:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v5, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->bgK:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 92
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Cz:I

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->p(II)I

    move-result v0

    .line 75
    iget v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Cz:I

    invoke-direct {p0, v1, p2}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->p(II)I

    move-result v1

    .line 76
    if-ge v0, v1, :cond_0

    move v1, v0

    .line 81
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->setMeasuredDimension(II)V

    .line 82
    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 97
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zF:F

    .line 98
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zG:F

    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->Az:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 101
    if-ge p1, p2, :cond_0

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p1

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zI:Landroid/graphics/RectF;

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    sub-float/2addr v2, v0

    int-to-float v3, p2

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/AdaptRotatingCircle;->zI:Landroid/graphics/RectF;

    goto :goto_0
.end method
