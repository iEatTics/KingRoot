.class public Lcom/kingroot/kinguser/root/views/circles/GradientCircle;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private Ot:I

.field private Ou:I

.field private bgM:Landroid/graphics/Paint;

.field private bgN:Landroid/graphics/Paint;

.field private bgO:F

.field private bgP:Lcom/android/animation/ValueAnimator;

.field private bgQ:Z

.field private bgR:Landroid/graphics/RadialGradient;

.field private bgS:Landroid/graphics/RadialGradient;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->init()V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgO:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgQ:Z

    return p1
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgM:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgM:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgN:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgN:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgN:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void
.end method


# virtual methods
.method public gD()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgQ:Z

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 120
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->Ot:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->Ou:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->mRadius:F

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgM:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-boolean v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgQ:Z

    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgO:F

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgN:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9

    .prologue
    const v8, 0x7f0e0015

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 79
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->Ot:I

    .line 80
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->Ou:I

    .line 81
    iget v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->Ot:I

    iget v2, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->Ou:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->mRadius:F

    .line 83
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->mRadius:F

    add-float v3, v2, v7

    const v2, 0x7f0e0089

    .line 84
    invoke-static {v2}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v4

    .line 85
    invoke-static {v8}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgR:Landroid/graphics/RadialGradient;

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgM:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgR:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 89
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->mRadius:F

    add-float v3, v2, v7

    const v2, 0x7f0e0079

    .line 90
    invoke-static {v2}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v4

    .line 91
    invoke-static {v8}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgS:Landroid/graphics/RadialGradient;

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgN:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgS:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$1;-><init>(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->Uo:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->bgP:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$2;-><init>(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 114
    return-void
.end method
