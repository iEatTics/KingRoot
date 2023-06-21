.class public final Lcom/kingcore/uilib/CheckingProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private zC:F

.field private zD:I

.field private zE:I

.field private zF:F

.field private zG:F

.field private zH:F

.field private zI:Landroid/graphics/RectF;

.field private zJ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/kingcore/uilib/CheckingProgressBar;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/kingcore/uilib/CheckingProgressBar;->init()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/CheckingProgressBar;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zJ:F

    return v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/CheckingProgressBar;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zJ:F

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/CheckingProgressBar;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zD:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 47
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zC:F

    .line 48
    const/16 v0, 0xf

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zD:I

    .line 49
    invoke-virtual {p0}, Lcom/kingcore/uilib/CheckingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zE:I

    .line 51
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zJ:F

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/kingcore/uilib/CheckingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    invoke-virtual {p0}, Lcom/kingcore/uilib/CheckingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zH:F

    .line 59
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/kingcore/uilib/CheckingProgressBar$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingcore/uilib/CheckingProgressBar$1;-><init>(Lcom/kingcore/uilib/CheckingProgressBar;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mHandler:Landroid/os/Handler;

    .line 106
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 113
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mHandler:Landroid/os/Handler;

    .line 117
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    iget v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zJ:F

    iget v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zF:F

    iget v2, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zG:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 65
    iget-object v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zI:Landroid/graphics/RectF;

    const/high16 v2, 0x43340000    # 180.0f

    iget v3, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zC:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 72
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zF:F

    .line 73
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zG:F

    .line 75
    iget v0, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zE:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zH:F

    add-float/2addr v0, v1

    .line 77
    if-ge p1, p2, :cond_0

    .line 78
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p1

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zI:Landroid/graphics/RectF;

    .line 82
    :goto_0
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zF:F

    iget v2, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zG:F

    new-array v3, v7, [I

    aput v4, v3, v4

    const/4 v4, 0x1

    const v5, 0xe5f2fd

    aput v5, v3, v4

    const/4 v4, 0x2

    .line 83
    invoke-virtual {p0}, Lcom/kingcore/uilib/CheckingProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    aput v5, v3, v4

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 85
    iget-object v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 86
    return-void

    .line 80
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    sub-float/2addr v2, v0

    int-to-float v3, p2

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/CheckingProgressBar;->zI:Landroid/graphics/RectF;

    goto :goto_0

    .line 83
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method
