.class public final Lcom/kingcore/uilib/RotateCircle;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private AA:F

.field private AB:Lcom/android/animation/ValueAnimator;

.field private Az:F

.field private Ct:I

.field private Cu:F

.field private Cv:F

.field private Cw:I

.field private Cx:I

.field private Cy:F

.field private Cz:I

.field private mPaint:Landroid/graphics/Paint;

.field private zD:I

.field private zF:F

.field private zG:F

.field private zI:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/RotateCircle;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/RotateCircle;)F
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cu:F

    return v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/RotateCircle;F)F
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/kingcore/uilib/RotateCircle;->AA:F

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/RotateCircle;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->zD:I

    return v0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->RotatingCircleStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    const/4 v0, 0x2

    const/16 v2, 0x168

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Ct:I

    .line 55
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cu:F

    .line 56
    const/4 v0, 0x4

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->zD:I

    .line 57
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotateCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 59
    const/4 v2, 0x3

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Az:F

    .line 60
    const/4 v0, 0x5

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cv:F

    .line 61
    const/4 v0, 0x7

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cw:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 63
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->Ct:I

    iget v1, p0, Lcom/kingcore/uilib/RotateCircle;->Cw:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cy:F

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->mPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 78
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/RotateCircle;->Cx:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/RotateCircle;->Az:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotateCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cz:I

    .line 81
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotateCircle;->gW()V

    .line 82
    return-void

    .line 65
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 67
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 69
    :cond_1
    :goto_1
    throw v0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private p(II)I
    .locals 2

    .prologue
    .line 125
    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 128
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 130
    sparse-switch v1, :sswitch_data_0

    .line 150
    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    move p1, v0

    .line 140
    goto :goto_0

    :sswitch_2
    move p1, v0

    .line 145
    goto :goto_0

    .line 130
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public gD()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 171
    return-void
.end method

.method public gW()V
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    .line 155
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/RotateCircle$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RotateCircle$1;-><init>(Lcom/kingcore/uilib/RotateCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 163
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 164
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 167
    return-void

    .line 154
    :array_0
    .array-data 4
        0x0
        0x167
    .end array-data
.end method

.method public gX()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kingcore/uilib/RotateCircle;->AB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 175
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->AA:F

    iget v1, p0, Lcom/kingcore/uilib/RotateCircle;->Cu:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/kingcore/uilib/RotateCircle;->zF:F

    iget v2, p0, Lcom/kingcore/uilib/RotateCircle;->zG:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v6, v4

    .line 102
    :goto_0
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cw:I

    if-ge v6, v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/kingcore/uilib/RotateCircle;->zI:Landroid/graphics/RectF;

    int-to-float v0, v6

    iget v2, p0, Lcom/kingcore/uilib/RotateCircle;->Cy:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/kingcore/uilib/RotateCircle;->Cv:F

    iget-object v5, p0, Lcom/kingcore/uilib/RotateCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 87
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->Cz:I

    invoke-direct {p0, v0, p1}, Lcom/kingcore/uilib/RotateCircle;->p(II)I

    move-result v0

    .line 88
    iget v1, p0, Lcom/kingcore/uilib/RotateCircle;->Cz:I

    invoke-direct {p0, v1, p2}, Lcom/kingcore/uilib/RotateCircle;->p(II)I

    move-result v1

    .line 89
    if-ge v0, v1, :cond_0

    move v1, v0

    .line 94
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/kingcore/uilib/RotateCircle;->setMeasuredDimension(II)V

    .line 95
    return-void

    :cond_0
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 111
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->zF:F

    .line 112
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotateCircle;->zG:F

    .line 113
    iget v0, p0, Lcom/kingcore/uilib/RotateCircle;->Az:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 115
    if-ge p1, p2, :cond_0

    .line 116
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p1

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/RotateCircle;->zI:Landroid/graphics/RectF;

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    sub-float/2addr v2, v0

    int-to-float v3, p2

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/RotateCircle;->zI:Landroid/graphics/RectF;

    goto :goto_0
.end method
