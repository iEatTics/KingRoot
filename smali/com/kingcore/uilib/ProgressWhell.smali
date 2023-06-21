.class public Lcom/kingcore/uilib/ProgressWhell;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;,
        Lcom/kingcore/uilib/ProgressWhell$a;
    }
.end annotation


# instance fields
.field private BA:I

.field private BB:Landroid/graphics/Paint;

.field private BC:Landroid/graphics/Paint;

.field private BD:Landroid/graphics/RectF;

.field private BE:F

.field private BF:J

.field private BG:Z

.field private BH:F

.field private BI:F

.field private BJ:Z

.field private BK:Lcom/kingcore/uilib/ProgressWhell$a;

.field private BL:Z

.field private final Bn:I

.field private final Bo:I

.field private final Bp:J

.field private Bq:I

.field private Br:I

.field private Bs:I

.field private Bt:Z

.field private Bu:D

.field private Bv:D

.field private Bw:F

.field private Bx:Z

.field private By:J

.field private Bz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bn:I

    .line 29
    const/16 v0, 0x10e

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bo:I

    .line 30
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bp:J

    .line 37
    const/16 v0, 0x38

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    .line 38
    iput v4, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    .line 39
    iput v4, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    .line 40
    iput-boolean v3, p0, Lcom/kingcore/uilib/ProgressWhell;->Bt:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    .line 42
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bv:D

    .line 43
    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bw:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bx:Z

    .line 45
    iput-wide v6, p0, Lcom/kingcore/uilib/ProgressWhell;->By:J

    .line 47
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    .line 48
    const v0, 0xffffff

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    .line 59
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    .line 62
    iput-wide v6, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 66
    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 67
    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    .line 68
    iput-boolean v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 88
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gR()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bn:I

    .line 29
    const/16 v0, 0x10e

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bo:I

    .line 30
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bp:J

    .line 37
    const/16 v0, 0x38

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    .line 38
    iput v4, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    .line 39
    iput v4, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    .line 40
    iput-boolean v3, p0, Lcom/kingcore/uilib/ProgressWhell;->Bt:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    .line 42
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bv:D

    .line 43
    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bw:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bx:Z

    .line 45
    iput-wide v6, p0, Lcom/kingcore/uilib/ProgressWhell;->By:J

    .line 47
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    .line 48
    const v0, 0xffffff

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    .line 59
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    .line 62
    iput-wide v6, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 66
    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 67
    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    .line 68
    iput-boolean v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 80
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gR()V

    .line 81
    return-void
.end method

.method private c(F)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BK:Lcom/kingcore/uilib/ProgressWhell$a;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BK:Lcom/kingcore/uilib/ProgressWhell$a;

    invoke-interface {v0, p1}, Lcom/kingcore/uilib/ProgressWhell$a;->d(F)V

    .line 378
    :cond_0
    return-void
.end method

.method private gR()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BL:Z

    .line 105
    return-void
.end method

.method private gS()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    return-void
.end method

.method private gV()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 381
    iget-object v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BK:Lcom/kingcore/uilib/ProgressWhell$a;

    if-eqz v0, :cond_0

    .line 382
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 383
    iget-object v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BK:Lcom/kingcore/uilib/ProgressWhell$a;

    invoke-interface {v1, v0}, Lcom/kingcore/uilib/ProgressWhell$a;->d(F)V

    .line 385
    :cond_0
    return-void
.end method

.method private o(II)V
    .locals 7

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingTop()I

    move-result v0

    .line 186
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingBottom()I

    move-result v1

    .line 187
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingLeft()I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingRight()I

    move-result v3

    .line 190
    iget-boolean v4, p0, Lcom/kingcore/uilib/ProgressWhell;->Bt:Z

    if-nez v4, :cond_0

    .line 192
    sub-int v4, p1, v2

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 195
    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 198
    sub-int v5, p1, v2

    sub-int v3, v5, v3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 199
    sub-int v3, p2, v0

    sub-int v1, v3, v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 201
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    add-int/2addr v2, v4

    iget v6, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    add-int/2addr v0, v4

    iget v4, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    sub-int v3, p1, v3

    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    sub-int v1, p2, v1

    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v4, v2, v0, v3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private r(J)V
    .locals 5

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->By:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 310
    iget-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    long-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    .line 312
    iget-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    iget-wide v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bv:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 315
    iget-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    iget-wide v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bv:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    .line 317
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->By:J

    .line 319
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bx:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bx:Z

    .line 322
    :cond_0
    iget-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bu:D

    iget-wide v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bv:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 324
    const/high16 v1, 0x437e0000    # 254.0f

    .line 326
    iget-boolean v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bx:Z

    if-eqz v2, :cond_2

    .line 327
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bw:F

    .line 336
    :goto_1
    return-void

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    .line 330
    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    iget v2, p0, Lcom/kingcore/uilib/ProgressWhell;->Bw:F

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 331
    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bw:F

    goto :goto_1

    .line 334
    :cond_3
    iget-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->By:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->By:J

    goto :goto_1
.end method


# virtual methods
.method public gT()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 360
    iput v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 361
    iput v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    .line 362
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 363
    return-void
.end method

.method public gU()V
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 371
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 372
    return-void
.end method

.method public getBarColor()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 605
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingcore/uilib/ProgressWhell;->BC:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 227
    const/4 v0, 0x0

    .line 229
    iget-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BL:Z

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-eqz v1, :cond_4

    .line 235
    const/4 v6, 0x1

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    sub-long/2addr v0, v2

    .line 238
    long-to-float v2, v0

    iget v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 240
    invoke-direct {p0, v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->r(J)V

    .line 242
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 243
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 244
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 249
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/ProgressWhell;->c(F)V

    .line 251
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 253
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float v2, v0, v1

    .line 254
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->Bw:F

    add-float v3, v0, v1

    .line 256
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    const/4 v2, 0x0

    .line 258
    const/high16 v3, 0x43070000    # 135.0f

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 295
    :goto_1
    if-eqz v6, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    goto :goto_0

    .line 263
    :cond_4
    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 265
    iget v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    iget v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 267
    const/4 v0, 0x1

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 270
    iget v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    mul-float/2addr v2, v3

    .line 272
    iget v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    :cond_5
    move v6, v0

    .line 276
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_6

    .line 277
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gV()V

    .line 280
    :cond_6
    const/4 v1, 0x0

    .line 281
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 282
    iget-boolean v2, p0, Lcom/kingcore/uilib/ProgressWhell;->BG:Z

    if-nez v2, :cond_8

    .line 283
    const/high16 v0, 0x40000000    # 2.0f

    .line 284
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-double v8, v1

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    .line 285
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v8, v0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    move v2, v1

    .line 288
    :goto_2
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 289
    const/high16 v3, 0x43b40000    # 360.0f

    .line 292
    :goto_3
    iget-object v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BD:Landroid/graphics/RectF;

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingcore/uilib/ProgressWhell;->BB:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_7
    move v3, v0

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    .line 112
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 114
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingRight()I

    move-result v1

    add-int v3, v0, v1

    .line 115
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 119
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 126
    if-ne v4, v6, :cond_2

    .line 138
    :goto_0
    if-eq v5, v6, :cond_0

    if-ne v4, v6, :cond_4

    :cond_0
    move v0, v1

    .line 149
    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/kingcore/uilib/ProgressWhell;->setMeasuredDimension(II)V

    .line 150
    return-void

    .line 129
    :cond_2
    if-ne v4, v7, :cond_3

    .line 131
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 134
    goto :goto_0

    .line 141
    :cond_4
    if-ne v5, v7, :cond_1

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 438
    instance-of v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;

    if-nez v0, :cond_0

    .line 439
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 459
    :goto_0
    return-void

    .line 443
    :cond_0
    check-cast p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;

    .line 444
    invoke-virtual {p1}, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 446
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BH:F

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 447
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BI:F

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    .line 448
    iget-boolean v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BJ:Z

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 449
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BE:F

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    .line 450
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Br:I

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    .line 451
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bz:I

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    .line 452
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bs:I

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    .line 453
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BA:I

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    .line 454
    iget v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bq:I

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    .line 455
    iget-boolean v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BG:Z

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BG:Z

    .line 456
    iget-boolean v0, p1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bt:Z

    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bt:Z

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 417
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;

    invoke-direct {v1, v0}, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 422
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BH:F

    .line 423
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BI:F

    .line 424
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    iput-boolean v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BJ:Z

    .line 425
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BE:F

    .line 426
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Br:I

    .line 427
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bz:I

    .line 428
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bs:I

    .line 429
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BA:I

    .line 430
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    iput v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bq:I

    .line 431
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BG:Z

    iput-boolean v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BG:Z

    .line 432
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->Bt:Z

    iput-boolean v0, v1, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bt:Z

    .line 434
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/ProgressWhell;->o(II)V

    .line 161
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gS()V

    .line 162
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 163
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 303
    if-nez p2, :cond_0

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 306
    :cond_0
    return-void
.end method

.method public setBarColor(I)V
    .locals 1

    .prologue
    .line 572
    iput p1, p0, Lcom/kingcore/uilib/ProgressWhell;->Bz:I

    .line 573
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gS()V

    .line 574
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 577
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1

    .prologue
    .line 553
    iput p1, p0, Lcom/kingcore/uilib/ProgressWhell;->Br:I

    .line 554
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 557
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/kingcore/uilib/ProgressWhell;->BK:Lcom/kingcore/uilib/ProgressWhell$a;

    .line 213
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gV()V

    .line 216
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1

    .prologue
    .line 534
    iput p1, p0, Lcom/kingcore/uilib/ProgressWhell;->Bq:I

    .line 535
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 538
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 394
    iget-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-eqz v1, :cond_0

    .line 395
    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 396
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 399
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 400
    sub-float/2addr p1, v2

    .line 405
    :cond_1
    :goto_0
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 413
    :goto_1
    return-void

    .line 401
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 402
    goto :goto_0

    .line 409
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    .line 410
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 412
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/kingcore/uilib/ProgressWhell;->BG:Z

    .line 516
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 519
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 480
    iget-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-eqz v1, :cond_0

    .line 481
    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    .line 482
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    .line 484
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gV()V

    .line 487
    :cond_0
    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    .line 488
    sub-float/2addr p1, v2

    .line 493
    :cond_1
    :goto_0
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 507
    :goto_1
    return-void

    .line 489
    :cond_2
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 490
    goto :goto_0

    .line 500
    :cond_3
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BH:F

    iget v1, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BF:J

    .line 504
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BI:F

    .line 506
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1

    .prologue
    .line 592
    iput p1, p0, Lcom/kingcore/uilib/ProgressWhell;->BA:I

    .line 593
    invoke-direct {p0}, Lcom/kingcore/uilib/ProgressWhell;->gS()V

    .line 594
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 597
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1

    .prologue
    .line 632
    iput p1, p0, Lcom/kingcore/uilib/ProgressWhell;->Bs:I

    .line 633
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BJ:Z

    if-nez v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/kingcore/uilib/ProgressWhell;->invalidate()V

    .line 636
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1

    .prologue
    .line 616
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell;->BE:F

    .line 617
    return-void
.end method
