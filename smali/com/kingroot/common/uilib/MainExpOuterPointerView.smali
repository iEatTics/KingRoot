.class public Lcom/kingroot/common/uilib/MainExpOuterPointerView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private OB:Landroid/graphics/Paint;

.field private Oq:I

.field private Or:I

.field private Ot:I

.field private Ou:I

.field private Pg:Lcom/kingroot/common/uilib/MainExpOutCircleView;

.field private Ph:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

.field private Pi:Lcom/android/animation/ValueAnimator;

.field private Pj:F

.field private Pk:Z

.field private Pl:[F

.field private Pm:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pj:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pk:Z

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    .line 51
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pj:F

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pk:Z

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    .line 56
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->init()V

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpOuterPointerView;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pj:F

    return p1
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pg:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    invoke-virtual {v0, p2, v1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(F[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    .line 72
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pg:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a([F)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->OB:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ot:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pl:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ou:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pm:F

    iget-object v3, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->OB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/MainExpOuterPointerView;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pk:Z

    return p1
.end method

.method private init()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->OB:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->OB:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    return-void
.end method

.method private nO()V
    .locals 3

    .prologue
    .line 94
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Or:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ot:I

    .line 95
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Oq:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ou:I

    .line 96
    const v0, 0x3cbfb15a    # 0.023399998f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Or:I

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Oq:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pm:F

    .line 97
    return-void
.end method


# virtual methods
.method public b(FF)V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 118
    new-array v0, v1, [F

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    .line 119
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOuterPointerView$2;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView$2;-><init>(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOuterPointerView$3;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView$3;-><init>(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 139
    :goto_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    sub-float v1, p2, p1

    float-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 140
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 141
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 142
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 136
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pi:Lcom/android/animation/ValueAnimator;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public nS()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ph:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ph:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->getStartAngle()F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ph:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->getPresentAngle()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->b(FF)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ot:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ou:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pk:Z

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pj:F

    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->a(Landroid/graphics/Canvas;F)V

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 81
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Or:I

    .line 82
    iput p2, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Oq:I

    .line 83
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->nO()V

    .line 84
    return-void
.end method

.method public setInnerCircleView(Lcom/kingroot/common/uilib/MainExpInnerCircleView;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Ph:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    .line 146
    return-void
.end method

.method public setOuterCircleView(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V
    .locals 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pg:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    .line 101
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->Pg:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView$1;-><init>(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpOutCircleView$a;)V

    .line 114
    return-void
.end method
