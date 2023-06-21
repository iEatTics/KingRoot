.class public final Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private CI:I

.field private brg:Lcom/android/animation/ValueAnimator;

.field private bsA:F

.field private bsB:F

.field private bsC:F

.field private bsD:F

.field private bsE:F

.field private bsF:F

.field private bsG:F

.field private bsH:F

.field private bsI:F

.field private bsJ:F

.field private bso:I

.field private bsp:I

.field private bsq:Landroid/graphics/Paint;

.field private bsr:I

.field private bss:Landroid/graphics/Paint;

.field private bst:Landroid/graphics/Paint;

.field private bsu:Landroid/graphics/Paint;

.field private bsv:Landroid/graphics/Paint;

.field private bsw:Landroid/graphics/Paint;

.field private bsx:Landroid/graphics/Paint;

.field private bsy:F

.field private bsz:F

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsy:F

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsz:F

    .line 40
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsA:F

    .line 41
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsB:F

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsC:F

    .line 43
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsD:F

    .line 44
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsE:F

    .line 45
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsF:F

    .line 46
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsG:F

    .line 47
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsH:F

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    .line 50
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsI:F

    .line 51
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsJ:F

    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->gq()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsy:F

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsz:F

    .line 40
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsA:F

    .line 41
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsB:F

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsC:F

    .line 43
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsD:F

    .line 44
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsE:F

    .line 45
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsF:F

    .line 46
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsG:F

    .line 47
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsH:F

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    .line 50
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsI:F

    .line 51
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsJ:F

    .line 61
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->gq()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsy:F

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsz:F

    .line 40
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsA:F

    .line 41
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsB:F

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsC:F

    .line 43
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsD:F

    .line 44
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsE:F

    .line 45
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsF:F

    .line 46
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsG:F

    .line 47
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsH:F

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    .line 50
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsI:F

    .line 51
    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsJ:F

    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->gq()V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsD:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsI:F

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsE:F

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsJ:F

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsF:F

    return p1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsG:F

    return p1
.end method

.method static synthetic e(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsH:F

    return p1
.end method

.method static synthetic f(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsy:F

    return p1
.end method

.method static synthetic g(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsz:F

    return p1
.end method

.method private gq()V
    .locals 3

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    .line 72
    const-string v0, "#00ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->CI:I

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsq:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsq:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->CI:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsq:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    const-string v0, "#349f96"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsr:I

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bss:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bss:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bss:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->CI:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bss:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bst:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bst:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bst:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsu:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsu:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsu:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsu:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsv:Landroid/graphics/Paint;

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsv:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsv:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsw:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsw:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsw:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsw:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsx:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsx:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsx:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsr:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsx:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 111
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    .line 112
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    .line 116
    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsA:F

    return p1
.end method

.method static synthetic i(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsB:F

    return p1
.end method

.method private initAnimation()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsI:F

    iget v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsJ:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Lcom/android/animation/ObjectAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas$1;-><init>(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    return-void
.end method

.method static synthetic j(Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsC:F

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 147
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 155
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bst:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsD:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsu:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsE:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsv:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsF:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsw:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsG:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsx:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsH:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsy:F

    iget-object v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bst:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsz:F

    iget-object v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsu:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 128
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsA:F

    iget-object v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsB:F

    iget-object v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsw:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsC:F

    iget-object v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsx:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    iget v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsp:I

    mul-int/lit8 v1, v1, 0x1a

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bso:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->bsq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 138
    invoke-direct {p0}, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->initAnimation()V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/view/antiview/AntiWaveCanvas;->brg:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 142
    :cond_0
    return-void
.end method
