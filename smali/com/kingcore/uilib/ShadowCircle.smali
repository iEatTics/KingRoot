.class public Lcom/kingcore/uilib/ShadowCircle;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private Az:F

.field private BW:Landroid/graphics/Paint;

.field private CF:Landroid/graphics/Paint;

.field private CG:I

.field private CH:I

.field private CI:I

.field private CJ:Ljava/lang/String;

.field private CK:F

.field private CL:Z

.field private mRadius:F

.field private mShadowColor:I

.field private zF:F

.field private zG:F

.field private zH:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CJ:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CL:Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/ShadowCircle;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 45
    .line 47
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->ShadowCircleStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00fe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    const/4 v3, 0x4

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->zH:F

    .line 51
    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00fd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 53
    const/4 v3, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->mRadius:F

    .line 54
    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a00fc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    const/4 v3, 0x5

    int-to-float v0, v0

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->Az:F

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0122

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CG:I

    .line 59
    const/16 v0, 0x21

    const v3, 0x7f0e00a5

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v0

    .line 60
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->mShadowColor:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 62
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CH:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    if-eqz v1, :cond_0

    .line 66
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :cond_0
    :goto_0
    const v0, 0x7f0e00c0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CI:I

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 74
    invoke-virtual {p0, v4, v2}, Lcom/kingcore/uilib/ShadowCircle;->setLayerType(ILandroid/graphics/Paint;)V

    .line 76
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->CG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->zH:F

    iget v2, p0, Lcom/kingcore/uilib/ShadowCircle;->mShadowColor:I

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->CI:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    return-void

    .line 64
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 66
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 68
    :cond_2
    :goto_2
    throw v0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 64
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getCircleColor()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CG:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    iget v0, p0, Lcom/kingcore/uilib/ShadowCircle;->zF:F

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->zG:F

    iget v2, p0, Lcom/kingcore/uilib/ShadowCircle;->mRadius:F

    iget v3, p0, Lcom/kingcore/uilib/ShadowCircle;->zH:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    iget-boolean v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CL:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingcore/uilib/ShadowCircle;->CJ:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingcore/uilib/ShadowCircle;->CJ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 97
    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/kingcore/uilib/ShadowCircle;->CJ:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 105
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->zF:F

    .line 106
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->zG:F

    .line 107
    iget v0, p0, Lcom/kingcore/uilib/ShadowCircle;->zF:F

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->zG:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->mRadius:F

    .line 108
    const v0, 0x3f19999a    # 0.6f

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->mRadius:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CK:F

    .line 109
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->BW:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->CK:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingcore/uilib/ShadowCircle;->CJ:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CG:I

    if-eq v0, p1, :cond_0

    .line 118
    iput p1, p0, Lcom/kingcore/uilib/ShadowCircle;->CG:I

    .line 119
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->CG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->invalidate()V

    .line 122
    :cond_0
    return-void
.end method

.method public setIsShowCenterText(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/kingcore/uilib/ShadowCircle;->CL:Z

    .line 138
    return-void
.end method

.method public setShadowColor(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v0, p0, Lcom/kingcore/uilib/ShadowCircle;->mShadowColor:I

    if-eq v0, p1, :cond_0

    .line 127
    iput p1, p0, Lcom/kingcore/uilib/ShadowCircle;->mShadowColor:I

    .line 128
    iget-object v0, p0, Lcom/kingcore/uilib/ShadowCircle;->CF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ShadowCircle;->zH:F

    iget v2, p0, Lcom/kingcore/uilib/ShadowCircle;->mShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 129
    invoke-virtual {p0}, Lcom/kingcore/uilib/ShadowCircle;->invalidate()V

    .line 131
    :cond_0
    return-void
.end method
