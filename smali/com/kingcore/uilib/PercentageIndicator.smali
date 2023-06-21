.class public Lcom/kingcore/uilib/PercentageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static Bf:I


# instance fields
.field private Bg:Landroid/graphics/Paint;

.field private Bh:Landroid/graphics/Paint;

.field private Bi:Landroid/graphics/Paint;

.field private Bj:Landroid/graphics/Paint;

.field private Bk:Ljava/lang/String;

.field private Bl:I

.field private mStrokeWidth:I

.field private zI:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x30

    sput v0, Lcom/kingcore/uilib/PercentageIndicator;->Bf:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "DDD"

    iput-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bk:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    .line 40
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v0, "DDD"

    iput-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bk:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    .line 45
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "DDD"

    iput-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bk:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    .line 50
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    const-string v0, "DDD"

    iput-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bk:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    .line 55
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->init()V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/PercentageIndicator;I)I
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    return p1
.end method

.method private a(Landroid/graphics/Canvas;I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->zI:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bh:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->zI:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const v0, 0x40666666    # 3.6f

    int-to-float v3, p2

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bg:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 129
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcom/kingcore/uilib/PercentageIndicator;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v2, v1

    .line 132
    invoke-virtual {p0}, Lcom/kingcore/uilib/PercentageIndicator;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 138
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Lcom/kingcore/uilib/PercentageIndicator;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    .line 141
    invoke-virtual {p0}, Lcom/kingcore/uilib/PercentageIndicator;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    return-void
.end method

.method private gO()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bh:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bh:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 72
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bh:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e007a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    return-void
.end method

.method private gP()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bg:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bg:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0079

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    return-void
.end method

.method private gQ()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/zi;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    .line 86
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bi:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0079

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    .line 91
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    iget-object v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    const/high16 v2, 0x41300000    # 11.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bj:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0088

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->gO()V

    .line 64
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->gP()V

    .line 65
    invoke-direct {p0}, Lcom/kingcore/uilib/PercentageIndicator;->gQ()V

    .line 66
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    invoke-direct {p0, p1, v0}, Lcom/kingcore/uilib/PercentageIndicator;->a(Landroid/graphics/Canvas;I)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kingcore/uilib/PercentageIndicator;->a(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bk:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/kingcore/uilib/PercentageIndicator;->b(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-static {v1, p1}, Lcom/kingcore/uilib/PercentageIndicator;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/kingcore/uilib/PercentageIndicator;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kingcore/uilib/PercentageIndicator;->setMeasuredDimension(II)V

    .line 147
    invoke-virtual {p0}, Lcom/kingcore/uilib/PercentageIndicator;->getMeasuredHeight()I

    move-result v0

    .line 148
    invoke-virtual {p0}, Lcom/kingcore/uilib/PercentageIndicator;->getMeasuredWidth()I

    move-result v1

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 151
    invoke-super {p0, v0, v0}, Landroid/view/View;->onMeasure(II)V

    .line 152
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 157
    sget v0, Lcom/kingcore/uilib/PercentageIndicator;->Bf:I

    div-int v0, p1, v0

    iput v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->mStrokeWidth:I

    .line 158
    iget v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->mStrokeWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 161
    div-int/lit8 v1, p1, 0x10

    .line 162
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    add-float/2addr v3, v0

    int-to-float v4, v1

    add-float/2addr v4, v0

    int-to-float v5, p1

    sub-float/2addr v5, v0

    int-to-float v6, v1

    sub-float/2addr v5, v6

    int-to-float v6, p1

    sub-float v0, v6, v0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/kingcore/uilib/PercentageIndicator;->zI:Landroid/graphics/RectF;

    .line 164
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bg:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    iget-object v0, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bh:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    return-void
.end method

.method public setPercentage(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 104
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bl:I

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 111
    new-instance v1, Lcom/kingcore/uilib/PercentageIndicator$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/PercentageIndicator$1;-><init>(Lcom/kingcore/uilib/PercentageIndicator;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setTextStyle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingcore/uilib/PercentageIndicator;->Bk:Ljava/lang/String;

    .line 60
    return-void
.end method
