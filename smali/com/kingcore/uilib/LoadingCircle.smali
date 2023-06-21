.class public Lcom/kingcore/uilib/LoadingCircle;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final AN:I


# instance fields
.field private AO:I

.field private AP:I

.field private AQ:Landroid/graphics/Paint;

.field private AR:Landroid/graphics/Paint;

.field private AS:I

.field private AT:Landroid/graphics/RectF;

.field private AU:Lcom/android/animation/ValueAnimator;

.field private AV:Lcom/android/animation/ValueAnimator;

.field private AW:F

.field private AX:Landroid/view/View;

.field private AY:Landroid/view/View;

.field protected AZ:Lcom/android/animation/ValueAnimator;

.field private Ba:Z

.field private Bb:Z

.field private mContext:Landroid/content/Context;

.field private zR:I

.field private zS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "#00ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kingcore/uilib/LoadingCircle;->AN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    sget v0, Lcom/kingcore/uilib/LoadingCircle;->AN:I

    iput v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AO:I

    .line 39
    iput v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AP:I

    .line 44
    iput v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    .line 52
    iput-boolean v1, p0, Lcom/kingcore/uilib/LoadingCircle;->Ba:Z

    .line 53
    iput-boolean v1, p0, Lcom/kingcore/uilib/LoadingCircle;->Bb:Z

    .line 56
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/LoadingCircle;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingcore/uilib/LoadingCircle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/LoadingCircle;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget v0, Lcom/kingcore/uilib/LoadingCircle;->AN:I

    iput v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AO:I

    .line 39
    iput v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AP:I

    .line 44
    iput v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    .line 52
    iput-boolean v1, p0, Lcom/kingcore/uilib/LoadingCircle;->Ba:Z

    .line 53
    iput-boolean v1, p0, Lcom/kingcore/uilib/LoadingCircle;->Bb:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/LoadingCircle;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/LoadingCircle;F)F
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/kingcore/uilib/LoadingCircle;->AW:F

    return p1
.end method

.method static synthetic a(Lcom/kingcore/uilib/LoadingCircle;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/kingcore/uilib/LoadingCircle;->AP:I

    return p1
.end method

.method static synthetic a(Lcom/kingcore/uilib/LoadingCircle;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method private a(FF)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 273
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    .line 274
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v5, v0, v1

    .line 276
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v0, v1

    .line 277
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v1

    .line 279
    new-instance v0, Lcom/kingroot/kinguser/qc;

    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/view/ContextThemeWrapper;

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/qc;-><init>(Landroid/view/ContextThemeWrapper;FFFFFZ)V

    .line 280
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/qc;->setDuration(J)V

    .line 281
    invoke-virtual {v0, v7}, Lcom/kingroot/kinguser/qc;->setFillAfter(Z)V

    .line 282
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qc;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
    new-instance v1, Lcom/kingcore/uilib/LoadingCircle$5;

    invoke-direct {v1, p0, v8, v9}, Lcom/kingcore/uilib/LoadingCircle$5;-><init>(Lcom/kingcore/uilib/LoadingCircle;FF)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/qc;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 295
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v4, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    iget v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AP:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 224
    iget-boolean v0, p0, Lcom/kingcore/uilib/LoadingCircle;->Bb:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AT:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 240
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 241
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/kingcore/uilib/LoadingCircle;->AN:I

    aput v1, v0, v4

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AO:I

    aput v1, v0, v5

    const/4 v1, -0x1

    aput v1, v0, v6

    .line 228
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v3, v1, v4

    iget v3, p0, Lcom/kingcore/uilib/LoadingCircle;->AW:F

    aput v3, v1, v5

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v6

    .line 229
    new-instance v3, Landroid/graphics/SweepGradient;

    iget v5, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v3, v5, v6, v0, v1}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 230
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    iget v0, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/kingcore/uilib/LoadingCircle;->AR:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AT:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 235
    iget v0, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 236
    iget v0, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v7}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v5, p0, Lcom/kingcore/uilib/LoadingCircle;->AR:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 237
    iget-object v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AT:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/kingcore/uilib/LoadingCircle;FF)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/LoadingCircle;->a(FF)V

    return-void
.end method

.method static synthetic b(Lcom/kingcore/uilib/LoadingCircle;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/kingcore/uilib/LoadingCircle;->AO:I

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/LoadingCircle;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingcore/uilib/LoadingCircle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/kingcore/uilib/LoadingCircle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    return-object v0
.end method

.method private gK()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 86
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_1
    sget v0, Lcom/kingcore/uilib/LoadingCircle;->AN:I

    iput v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AO:I

    .line 89
    iput-boolean v2, p0, Lcom/kingcore/uilib/LoadingCircle;->Bb:Z

    .line 90
    iput-boolean v2, p0, Lcom/kingcore/uilib/LoadingCircle;->Ba:Z

    .line 91
    return-void
.end method

.method private gN()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 119
    iput-object p1, p0, Lcom/kingcore/uilib/LoadingCircle;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AQ:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AR:Landroid/graphics/Paint;

    .line 128
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AR:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AR:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    invoke-direct {p0}, Lcom/kingcore/uilib/LoadingCircle;->initAnimation()V

    .line 133
    return-void
.end method

.method private initAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v4, 0x2

    .line 136
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    .line 137
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 138
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 140
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/LoadingCircle$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/LoadingCircle$1;-><init>(Lcom/kingcore/uilib/LoadingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AV:Lcom/android/animation/ValueAnimator;

    .line 150
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AV:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 151
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AV:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AV:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/LoadingCircle$2;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/LoadingCircle$2;-><init>(Lcom/kingcore/uilib/LoadingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AZ:Lcom/android/animation/ValueAnimator;

    .line 161
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AZ:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 162
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AZ:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/LoadingCircle$3;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/LoadingCircle$3;-><init>(Lcom/kingcore/uilib/LoadingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 170
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AZ:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingcore/uilib/LoadingCircle$4;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/LoadingCircle$4;-><init>(Lcom/kingcore/uilib/LoadingCircle;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 187
    return-void

    .line 136
    :array_0
    .array-data 4
        0x0
        0x167
    .end array-data

    .line 149
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 160
    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private n(II)V
    .locals 6

    .prologue
    .line 206
    iput p1, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    .line 207
    iput p2, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    .line 209
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    .line 210
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    iget v2, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget v3, p0, Lcom/kingcore/uilib/LoadingCircle;->zR:I

    iget v4, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/kingcore/uilib/LoadingCircle;->zS:I

    iget v5, p0, Lcom/kingcore/uilib/LoadingCircle;->AS:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AT:Landroid/graphics/RectF;

    .line 211
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 215
    iget-boolean v0, p0, Lcom/kingcore/uilib/LoadingCircle;->Ba:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/LoadingCircle;->a(Landroid/graphics/Canvas;)V

    .line 218
    :cond_0
    return-void
.end method

.method public gJ()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/kingcore/uilib/LoadingCircle;->gK()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/LoadingCircle;->Ba:Z

    .line 72
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AU:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 73
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AV:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 74
    invoke-direct {p0}, Lcom/kingcore/uilib/LoadingCircle;->gN()V

    .line 75
    return-void
.end method

.method public gL()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/kingcore/uilib/LoadingCircle;->Bb:Z

    .line 95
    iput-boolean v0, p0, Lcom/kingcore/uilib/LoadingCircle;->Ba:Z

    .line 96
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 98
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 102
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/kingcore/uilib/LoadingCircle;->invalidate()V

    .line 105
    return-void
.end method

.method public gM()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AZ:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 116
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 194
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 195
    const v0, 0x7f0f01b0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/LoadingCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AX:Landroid/view/View;

    .line 196
    const v0, 0x7f0f01b1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/LoadingCircle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/LoadingCircle;->AY:Landroid/view/View;

    .line 197
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/LoadingCircle;->n(II)V

    .line 203
    return-void
.end method
