.class public Lcom/kingcore/uilib/ClipView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingcore/uilib/ClipView$b;,
        Lcom/kingcore/uilib/ClipView$a;
    }
.end annotation


# instance fields
.field private AA:F

.field private AB:Lcom/android/animation/ValueAnimator;

.field private AC:Z

.field private Av:Landroid/graphics/Paint;

.field private Aw:F

.field private Ax:F

.field private Ay:Lcom/kingcore/uilib/ClipView$b;

.field private Az:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private zI:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/kingcore/uilib/ClipView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/kingcore/uilib/ClipView;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0}, Lcom/kingcore/uilib/ClipView;->init()V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/ClipView;F)F
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/kingcore/uilib/ClipView;->AA:F

    return p1
.end method

.method static synthetic a(Lcom/kingcore/uilib/ClipView;)Lcom/kingcore/uilib/ClipView$b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Ay:Lcom/kingcore/uilib/ClipView$b;

    return-object v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/ClipView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/kingcore/uilib/ClipView;->AC:Z

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/ClipView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingcore/uilib/ClipView;->gC()V

    return-void
.end method

.method private gC()V
    .locals 4

    .prologue
    .line 154
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    .line 155
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingcore/uilib/ClipView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/ClipView;->invalidate()V

    .line 166
    return-void

    .line 158
    :cond_1
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 159
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    iput v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Ay:Lcom/kingcore/uilib/ClipView$b;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Ay:Lcom/kingcore/uilib/ClipView$b;

    invoke-interface {v0}, Lcom/kingcore/uilib/ClipView$b;->gE()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/kingcore/uilib/ClipView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kingcore/uilib/ClipView;->Az:F

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView;->Av:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Av:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Av:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Av:Landroid/graphics/Paint;

    const v1, 0x7f0e0078

    invoke-static {v1}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->Av:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Az:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView;->AB:Lcom/android/animation/ValueAnimator;

    .line 70
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/ClipView$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/ClipView$1;-><init>(Lcom/kingcore/uilib/ClipView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->AB:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 79
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->AB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/ClipView$2;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/ClipView$2;-><init>(Lcom/kingcore/uilib/ClipView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 88
    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x0
        -0x140
    .end array-data
.end method


# virtual methods
.method public a(Lcom/kingcore/uilib/ClipView$b;)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingcore/uilib/ClipView;->Ay:Lcom/kingcore/uilib/ClipView$b;

    .line 146
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/kingcore/uilib/ClipView$a;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/ClipView$a;-><init>(Lcom/kingcore/uilib/ClipView;)V

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView;->mHandler:Landroid/os/Handler;

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    .line 150
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    return-void
.end method

.method public gD()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->AB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 214
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 94
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 95
    const v1, 0x7f020223

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    .line 100
    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 101
    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    float-to-int v1, v1

    iget v2, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 117
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 127
    iget-object v1, p0, Lcom/kingcore/uilib/ClipView;->zI:Landroid/graphics/RectF;

    const/high16 v2, -0x3d900000    # -60.0f

    iget v3, p0, Lcom/kingcore/uilib/ClipView;->AA:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingcore/uilib/ClipView;->Av:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 129
    iget-boolean v0, p0, Lcom/kingcore/uilib/ClipView;->AC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {p0}, Lcom/kingcore/uilib/ClipView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/kingcore/uilib/ClipView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Ax:F

    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 135
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kingcore/uilib/ClipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 138
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 191
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Az:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 193
    if-ge p1, p2, :cond_1

    .line 194
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    sub-float/2addr v2, v0

    int-to-float v3, p1

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/ClipView;->zI:Landroid/graphics/RectF;

    .line 195
    int-to-float v0, p1

    iput v0, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 204
    iget v0, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 206
    const v1, 0x7f020223

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    iget v1, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    float-to-int v1, v1

    iget v2, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView;->mBitmap:Landroid/graphics/Bitmap;

    .line 210
    :cond_0
    return-void

    .line 197
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    sub-float/2addr v2, v0

    int-to-float v3, p2

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/ClipView;->zI:Landroid/graphics/RectF;

    .line 198
    int-to-float v0, p2

    iput v0, p0, Lcom/kingcore/uilib/ClipView;->Aw:F

    goto :goto_0
.end method

.method public setListener(Lcom/kingcore/uilib/ClipView$b;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingcore/uilib/ClipView;->Ay:Lcom/kingcore/uilib/ClipView$b;

    .line 142
    return-void
.end method
