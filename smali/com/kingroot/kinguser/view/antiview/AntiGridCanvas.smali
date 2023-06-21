.class public final Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private bse:I

.field private bsf:I

.field private bsg:I

.field private bsh:F

.field private bsi:F

.field private bsj:Landroid/graphics/Shader;

.field private bsk:Lcom/android/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsg:I

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsh:F

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsi:F

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->gq()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsg:I

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsh:F

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsi:F

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    .line 40
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->gq()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsg:I

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsh:F

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsi:F

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->gq()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsh:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bse:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsi:F

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsg:I

    return v0
.end method

.method private gq()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->mPaint:Landroid/graphics/Paint;

    .line 52
    return-void
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bse:I

    int-to-float v2, v2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas$1;-><init>(Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 78
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 86
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 72
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsf:I

    int-to-float v3, v0

    iget v4, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsh:F

    iget-object v5, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 57
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bse:I

    int-to-float v4, v2

    const/4 v2, 0x2

    new-array v5, v2, [I

    const/4 v2, 0x0

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v6, 0x7f0e0014

    invoke-virtual {v3, v6}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v3

    aput v3, v5, v2

    const/4 v2, 0x1

    const-string v3, "#b3009688"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsj:Landroid/graphics/Shader;

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsj:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->initAnimation()V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsk:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 67
    :cond_0
    return-void
.end method

.method public setCurPercent(I)V
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsg:I

    .line 119
    return-void
.end method

.method public setViewConfig(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bse:I

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiGridCanvas;->bsf:I

    .line 115
    return-void
.end method
