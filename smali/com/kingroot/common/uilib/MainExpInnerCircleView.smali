.class public Lcom/kingroot/common/uilib/MainExpInnerCircleView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;
    }
.end annotation


# static fields
.field private static final Ol:I

.field private static final Om:I

.field private static final On:I

.field private static final Oo:I

.field private static final Op:I


# instance fields
.field private NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

.field private NV:Ljava/lang/String;

.field private volatile NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

.field private OA:Landroid/graphics/Paint;

.field private OB:Landroid/graphics/Paint;

.field private OC:Landroid/graphics/Paint;

.field private OD:Ljava/lang/String;

.field private OE:Lcom/android/animation/ValueAnimator;

.field private OF:Landroid/graphics/Bitmap;

.field private OG:I

.field private OH:F

.field private OI:F

.field private OJ:F

.field private Oq:I

.field private Or:I

.field private Os:I

.field private Ot:I

.field private Ou:I

.field private Ov:I

.field private Ow:I

.field private Ox:I

.field private Oy:Landroid/graphics/Paint;

.field private Oz:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f0e00a4

    .line 55
    invoke-static {v0}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ol:I

    .line 56
    const/16 v0, 0x21

    const v1, 0x7f0e00a5

    .line 57
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Om:I

    .line 58
    const v0, 0x7f0e00a9

    .line 59
    invoke-static {v0}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->On:I

    .line 60
    const v0, 0x7f0e00f8

    .line 61
    invoke-static {v0}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oo:I

    .line 63
    const v0, 0x7f0e0124

    invoke-static {v0}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Op:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    .line 97
    const-string v0, "100"

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NV:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 116
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->init()V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    .line 97
    const-string v0, "100"

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NV:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 121
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->init()V

    .line 122
    return-void
.end method

.method private bJ(I)I
    .locals 2

    .prologue
    .line 202
    const v0, 0x3ff62762

    .line 203
    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OF:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->nN()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OF:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OF:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OF:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method private getScoreIndex()I
    .locals 1
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x34L
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->bJ(I)I

    move-result v0

    return v0
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 170
    .line 171
    const v7, 0x3db2b8c2

    .line 172
    const v8, 0x401c61aa

    .line 173
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x35

    if-ge v6, v0, :cond_2

    .line 174
    int-to-float v0, v6

    mul-float/2addr v0, v7

    add-float/2addr v0, v8

    .line 175
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 176
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 179
    if-eqz v6, :cond_0

    const/16 v0, 0x1a

    if-eq v6, v0, :cond_0

    const/16 v0, 0x34

    if-ne v6, v0, :cond_1

    .line 180
    :cond_0
    double-to-float v0, v4

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OI:F

    mul-float/2addr v1, v0

    .line 181
    double-to-float v0, v10

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OI:F

    mul-float/2addr v2, v0

    .line 187
    :goto_1
    double-to-float v0, v4

    iget v3, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OJ:F

    mul-float/2addr v3, v0

    .line 188
    double-to-float v0, v10

    iget v4, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OJ:F

    mul-float/2addr v4, v0

    .line 190
    iget-object v5, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 183
    :cond_1
    double-to-float v0, v4

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OH:F

    mul-float/2addr v1, v0

    .line 184
    double-to-float v0, v10

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OH:F

    mul-float/2addr v2, v0

    goto :goto_1

    .line 193
    :cond_2
    return-void
.end method

.method private init()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 222
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    .line 223
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ol:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 226
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 227
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    .line 228
    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    int-to-float v1, v1

    .line 229
    invoke-static {v3}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    int-to-float v2, v2

    .line 230
    invoke-static {v3}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Om:I

    .line 227
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->On:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 237
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/kingroot/kinguser/blg;->jH(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    .line 240
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oo:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 244
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OB:Landroid/graphics/Paint;

    .line 245
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OB:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    .line 248
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Op:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 250
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OC:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 252
    return-void
.end method

.method private nN()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0201d1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OG:I

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OG:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OF:Landroid/graphics/Bitmap;

    .line 164
    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 165
    return-void
.end method

.method private nO()V
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 256
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Or:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ot:I

    .line 257
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oq:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ou:I

    .line 259
    const v0, 0x3ee66666    # 0.45f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Os:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OG:I

    .line 260
    const v0, 0x3f5645a2    # 0.837f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Os:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ov:I

    .line 261
    const v0, 0x3f3f3b64    # 0.747f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Os:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ow:I

    .line 262
    const v0, 0x3db851eb    # 0.089999996f

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Os:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ox:I

    .line 263
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ow:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ox:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    const-wide v0, 0x3fed47ae147ae148L    # 0.915

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ov:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OH:F

    .line 267
    const-wide v0, 0x3feb0a3d70a3d70aL    # 0.845

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ov:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OI:F

    .line 268
    const-wide v0, 0x3feeb851eb851eb8L    # 0.96

    iget v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ov:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OJ:F

    .line 269
    return-void
.end method


# virtual methods
.method public a(IILcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 294
    new-array v0, v1, [I

    aput p1, v0, v2

    aput p2, v0, v3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    .line 295
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;

    invoke-direct {v1, p0, p3}, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;-><init>(Lcom/kingroot/common/uilib/MainExpInnerCircleView;Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/kingroot/common/uilib/MainExpInnerCircleView$2;-><init>(Lcom/kingroot/common/uilib/MainExpInnerCircleView;Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;II)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 315
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    mul-int/lit8 v1, p2, 0x14

    mul-int/lit8 v4, p1, 0xa

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 322
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 324
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->bK(I)F

    move-result v1

    invoke-virtual {p0, p2}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->bK(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->b(FF)V

    .line 327
    :cond_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 318
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OE:Lcom/android/animation/ValueAnimator;

    new-array v1, v1, [I

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public bK(I)F
    .locals 2

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->bJ(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3db2b8c2

    mul-float/2addr v0, v1

    const v1, 0x401c61aa

    add-float/2addr v0, v1

    return v0
.end method

.method public getPresentAngle()F
    .locals 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->getScoreIndex()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3db2b8c2

    mul-float/2addr v0, v1

    const v1, 0x401c61aa

    add-float/2addr v0, v1

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 330
    const v0, 0x401c61aa

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ot:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ou:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ov:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oy:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 137
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oj:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->g(Landroid/graphics/Canvas;)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 151
    return-void

    .line 141
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 143
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float v2, v4, v2

    iget-object v3, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oz:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NV:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NV:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NV:Ljava/lang/String;

    iget v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Ov:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OA:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->h(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 210
    iput p1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Or:I

    .line 211
    iput p2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Oq:I

    .line 212
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->Os:I

    .line 213
    invoke-direct {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->nO()V

    .line 214
    return-void
.end method

.method public setExp(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 277
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->OD:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->invalidate()V

    .line 279
    return-void
.end method

.method public setOutPointerView(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NS:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    .line 343
    return-void
.end method

.method public setState(Lcom/kingroot/common/uilib/MainExpCircleView$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NW:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->invalidate()V

    .line 127
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 287
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->NV:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->invalidate()V

    .line 289
    return-void
.end method
