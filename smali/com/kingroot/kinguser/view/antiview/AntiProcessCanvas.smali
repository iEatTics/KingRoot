.class public Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private AA:F

.field private aWR:I

.field private bsn:I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private zE:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    .line 21
    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    .line 21
    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    .line 32
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    .line 21
    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 46
    float-to-double v2, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    .line 54
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    .line 60
    return-void

    .line 48
    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x4000cccccccccccdL    # 2.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->zE:I

    goto :goto_0
.end method


# virtual methods
.method public acR()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->invalidate()V

    .line 94
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/16 v8, 0x42

    const/16 v7, 0x22

    const/4 v4, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v6, 0x40400000    # 3.0f

    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    if-gt v0, v7, :cond_0

    .line 70
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x22

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    .line 71
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    iget-object v5, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    if-le v0, v7, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    if-gt v0, v8, :cond_1

    .line 76
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    add-int/lit8 v0, v0, -0x21

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x21

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    iget-object v5, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 81
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    if-le v0, v8, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    add-int/lit8 v0, v0, -0x43

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x21

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    .line 83
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    add-int/lit8 v0, v0, -0x3

    int-to-float v0, v0

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->bsn:I

    add-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    invoke-direct {v1, v6, v6, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->AA:F

    iget-object v5, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 65
    return-void
.end method

.method public setCurPercentage(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiProcessCanvas;->aWR:I

    .line 90
    return-void
.end method
