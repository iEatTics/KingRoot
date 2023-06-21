.class public final Lcom/kingcore/uilib/RotatingCircle;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private Az:F

.field private CB:Lcom/android/animation/ValueAnimator;

.field private CC:Lcom/android/animation/ValueAnimator;

.field private volatile CD:Z

.field private Ct:I

.field private Cu:F

.field private Cv:F

.field private Cw:I

.field private Cx:I

.field private Cy:F

.field private Cz:I

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private zD:I

.field private zF:F

.field private zG:F

.field private zI:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/RotatingCircle;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/RotatingCircle;)F
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cu:F

    return v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/RotatingCircle;F)F
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/kingcore/uilib/RotatingCircle;->Cu:F

    return p1
.end method

.method static synthetic a(Lcom/kingcore/uilib/RotatingCircle;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/kingcore/uilib/RotatingCircle;->zD:I

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/RotatingCircle;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zD:I

    return v0
.end method

.method static synthetic c(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 64
    const/4 v1, 0x0

    .line 66
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->RotatingCircleStyle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 67
    const/4 v0, 0x2

    const/16 v2, 0x168

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Ct:I

    .line 68
    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cu:F

    .line 69
    const/4 v0, 0x4

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zD:I

    .line 70
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotatingCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 72
    const/4 v2, 0x3

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Az:F

    .line 73
    const/4 v0, 0x5

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cv:F

    .line 74
    const/4 v0, 0x7

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cw:I

    .line 75
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mRadius:F

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 77
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz v1, :cond_0

    .line 81
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Ct:I

    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->Cw:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cy:F

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mPaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->Cx:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->Az:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mRadius:F

    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->Az:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zG:F

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zF:F

    .line 95
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotatingCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cz:I

    .line 96
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotatingCircle;->gW()V

    .line 97
    return-void

    .line 79
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 81
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :cond_1
    :goto_1
    throw v0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/kingcore/uilib/RotatingCircle;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CD:Z

    return v0
.end method

.method static synthetic e(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method private p(II)I
    .locals 2

    .prologue
    .line 171
    .line 173
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 174
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 176
    sparse-switch v1, :sswitch_data_0

    .line 196
    :goto_0
    :sswitch_0
    return p1

    :sswitch_1
    move p1, v0

    .line 186
    goto :goto_0

    :sswitch_2
    move p1, v0

    .line 191
    goto :goto_0

    .line 176
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
    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CD:Z

    .line 262
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 263
    return-void
.end method

.method public gW()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1770

    const/4 v3, 0x2

    .line 211
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    .line 212
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/RotatingCircle$2;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RotatingCircle$2;-><init>(Lcom/kingcore/uilib/RotatingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/RotatingCircle$3;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RotatingCircle$3;-><init>(Lcom/kingcore/uilib/RotatingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 232
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 233
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Ui:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 236
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    .line 237
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/RotatingCircle$4;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RotatingCircle$4;-><init>(Lcom/kingcore/uilib/RotatingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 248
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/RotatingCircle$5;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RotatingCircle$5;-><init>(Lcom/kingcore/uilib/RotatingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Ui:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 258
    return-void

    .line 211
    :array_0
    .array-data 4
        0x4
        0x7d
    .end array-data

    .line 236
    :array_1
    .array-data 4
        0x7d
        0x4
    .end array-data
.end method

.method public gX()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CD:Z

    .line 267
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 268
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->CC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 269
    return-void
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mRadius:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 142
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/kingcore/uilib/RotatingCircle$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingcore/uilib/RotatingCircle$1;-><init>(Lcom/kingcore/uilib/RotatingCircle;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mHandler:Landroid/os/Handler;

    .line 157
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 164
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mHandler:Landroid/os/Handler;

    .line 168
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cu:F

    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->zF:F

    iget v2, p0, Lcom/kingcore/uilib/RotatingCircle;->zG:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v6, v4

    .line 117
    :goto_0
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cw:I

    if-ge v6, v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/kingcore/uilib/RotatingCircle;->zI:Landroid/graphics/RectF;

    int-to-float v0, v6

    iget v2, p0, Lcom/kingcore/uilib/RotatingCircle;->Cy:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/kingcore/uilib/RotatingCircle;->Cv:F

    iget-object v5, p0, Lcom/kingcore/uilib/RotatingCircle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 117
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 121
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 102
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Cz:I

    invoke-direct {p0, v0, p1}, Lcom/kingcore/uilib/RotatingCircle;->p(II)I

    move-result v0

    .line 103
    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->Cz:I

    invoke-direct {p0, v1, p2}, Lcom/kingcore/uilib/RotatingCircle;->p(II)I

    move-result v1

    .line 104
    if-ge v0, v1, :cond_0

    move v1, v0

    .line 109
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/kingcore/uilib/RotatingCircle;->setMeasuredDimension(II)V

    .line 110
    return-void

    :cond_0
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 126
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zF:F

    .line 127
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zG:F

    .line 128
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->zF:F

    iget v1, p0, Lcom/kingcore/uilib/RotatingCircle;->zG:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mRadius:F

    .line 129
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->Az:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 131
    if-ge p1, p2, :cond_0

    .line 132
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p1

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/RotatingCircle;->zI:Landroid/graphics/RectF;

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    sub-float/2addr v2, v0

    int-to-float v3, p2

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/RotatingCircle;->zI:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/kingcore/uilib/RotatingCircle;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 205
    iput p1, p0, Lcom/kingcore/uilib/RotatingCircle;->mRadius:F

    .line 206
    invoke-virtual {p0}, Lcom/kingcore/uilib/RotatingCircle;->invalidate()V

    .line 208
    :cond_0
    return-void
.end method
