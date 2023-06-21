.class public Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static bhW:F


# instance fields
.field private bhF:Landroid/graphics/Paint;

.field private bhG:Landroid/graphics/Paint;

.field private bhH:F

.field private bhI:F

.field private bhJ:F

.field private bhK:I

.field private bhL:F

.field private bhM:F

.field private bhN:F

.field private bhO:I

.field private bhP:I

.field private bhQ:I

.field private bhR:I

.field private bhS:I

.field private bhT:I

.field private bhU:I

.field private bhV:F

.field private bhX:Landroid/graphics/Bitmap;

.field private bhY:Landroid/graphics/Bitmap;

.field private bhZ:Landroid/graphics/Canvas;

.field private bia:Landroid/graphics/Canvas;

.field private bib:Landroid/graphics/PorterDuffXfermode;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhW:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhV:F

    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->init()V

    .line 61
    return-void
.end method

.method static synthetic B(F)F
    .locals 0

    .prologue
    .line 19
    sput p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhW:F

    return p0
.end method

.method static synthetic XG()F
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhW:F

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhV:F

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhV:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhT:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhL:F

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;F)F
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhN:F

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhS:I

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)F
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhM:F

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhQ:I

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhR:I

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhO:I

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhP:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhF:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhF:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhK:I

    .line 75
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhK:I

    if-ge v0, v2, :cond_0

    .line 76
    iput v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhK:I

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhK:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhK:I

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    .line 84
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhQ:I

    .line 86
    const v0, -0x111754

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhR:I

    .line 87
    invoke-virtual {p0}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhO:I

    .line 88
    const v0, -0x153400

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhP:I

    .line 89
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhO:I

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhS:I

    .line 91
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    const v1, 0x3fb33333    # 1.4f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhL:F

    .line 93
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhM:F

    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhL:F

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhN:F

    .line 96
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhZ:Landroid/graphics/Canvas;

    .line 97
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bia:Landroid/graphics/Canvas;

    .line 98
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bib:Landroid/graphics/PorterDuffXfermode;

    .line 100
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight$1;-><init>(Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->mHandler:Landroid/os/Handler;

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->mHandler:Landroid/os/Handler;

    .line 243
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const-wide v10, 0x4076800000000000L    # 360.0

    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhF:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhT:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhU:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhU:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhJ:F

    iget-object v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhF:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 109
    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhU:I

    int-to-double v2, v2

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhV:F

    float-to-double v6, v4

    div-double/2addr v6, v10

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhJ:F

    float-to-double v8, v4

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    double-to-float v7, v2

    .line 112
    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhU:I

    int-to-double v2, v2

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhV:F

    float-to-double v8, v4

    div-double/2addr v8, v10

    mul-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhJ:F

    float-to-double v8, v4

    mul-double/2addr v0, v8

    sub-double v0, v2, v0

    double-to-float v8, v0

    .line 117
    const v0, 0x3f5db3d7

    .line 118
    const/high16 v1, 0x3f000000    # 0.5f

    .line 119
    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhN:F

    mul-float/2addr v0, v2

    add-float v9, v7, v0

    .line 120
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhN:F

    mul-float/2addr v0, v1

    sub-float v10, v8, v0

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhS:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    iput-object v5, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    mul-float/2addr v0, v12

    float-to-int v0, v0

    .line 130
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhZ:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhZ:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v5, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    .line 140
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    mul-float/2addr v0, v12

    float-to-int v0, v0

    .line 141
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bia:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bia:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    sub-float v1, v7, v0

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    sub-float v2, v10, v0

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    add-float v3, v9, v0

    iget v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    add-float v4, v8, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhX:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    sub-float v2, v7, v2

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    sub-float v3, v8, v3

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bib:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 155
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhY:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    sub-float v2, v9, v2

    iget v3, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhI:F

    sub-float v3, v10, v3

    iget-object v4, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhG:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 158
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 159
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 165
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhH:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhJ:F

    .line 166
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/root/views/others/CirclePlayDayAndNight;->bhU:I

    .line 167
    return-void
.end method
