.class public Lcom/kingroot/kinguser/qr;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/qr$a;,
        Lcom/kingroot/kinguser/qr$b;
    }
.end annotation


# instance fields
.field private EA:Lcom/kingroot/kinguser/qr$b;

.field private EB:I

.field private EC:F

.field private ED:F

.field private EE:I

.field private EF:I

.field private EG:F

.field private EH:F

.field private EI:Z

.field private EJ:Z

.field private EK:Z

.field private EL:Z

.field private EM:I

.field private EN:I

.field private EO:Landroid/graphics/drawable/Drawable;

.field private EP:Z

.field private EQ:[I

.field private ER:[F

.field private final ES:Ljava/lang/Runnable;

.field private Eh:F

.field private final Ez:Landroid/graphics/Rect;

.field private mBounds:Landroid/graphics/Rect;

.field private mColors:[I

.field private mFinishing:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPaint:Landroid/graphics/Paint;

.field private mRunning:Z

.field private mSpeed:F

.field private mStrokeWidth:F


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/kingroot/kinguser/qr$b;ZLandroid/graphics/drawable/Drawable;Z)V
    .locals 3

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    .line 591
    new-instance v1, Lcom/kingroot/kinguser/qr$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/qr$1;-><init>(Lcom/kingroot/kinguser/qr;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/qr;->ES:Ljava/lang/Runnable;

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/qr;->mRunning:Z

    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/qr;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    iput p2, p0, Lcom/kingroot/kinguser/qr;->EF:I

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lcom/kingroot/kinguser/qr;->EM:I

    .line 91
    iget v1, p0, Lcom/kingroot/kinguser/qr;->EF:I

    iput v1, p0, Lcom/kingroot/kinguser/qr;->EN:I

    .line 92
    iput p3, p0, Lcom/kingroot/kinguser/qr;->EE:I

    .line 93
    iput p6, p0, Lcom/kingroot/kinguser/qr;->mSpeed:F

    .line 94
    iput p7, p0, Lcom/kingroot/kinguser/qr;->EG:F

    .line 95
    iput p8, p0, Lcom/kingroot/kinguser/qr;->EH:F

    .line 96
    iput-boolean p9, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    .line 97
    iput-object p4, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/kingroot/kinguser/qr;->EB:I

    .line 99
    iput-boolean p10, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/qr;->mFinishing:Z

    .line 101
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/kingroot/kinguser/qr;->EO:Landroid/graphics/drawable/Drawable;

    .line 102
    iput p5, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    .line 104
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/kingroot/kinguser/qr;->EF:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/kingroot/kinguser/qr;->Eh:F

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 110
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iput-boolean p12, p0, Lcom/kingroot/kinguser/qr;->EL:Z

    .line 113
    iput-object p11, p0, Lcom/kingroot/kinguser/qr;->EA:Lcom/kingroot/kinguser/qr$b;

    .line 115
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EP:Z

    .line 116
    invoke-direct {p0}, Lcom/kingroot/kinguser/qr;->hv()V

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/kingroot/kinguser/qr$b;ZLandroid/graphics/drawable/Drawable;ZLcom/kingroot/kinguser/qr$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p14}, Lcom/kingroot/kinguser/qr;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLcom/kingroot/kinguser/qr$b;ZLandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/qr;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/qr;->ED:F

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/qr;F)F
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/kinguser/qr;->ED:F

    return p1
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 8
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EO:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 404
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EO:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 409
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v0, :cond_3

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 413
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    goto :goto_1

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->Ez:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v3, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 422
    :cond_4
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->hx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :cond_5
    cmpl-float v0, p2, p3

    if-lez v0, :cond_b

    .line 430
    :goto_2
    cmpl-float v0, p3, v3

    if-lez v0, :cond_6

    .line 431
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v0, :cond_8

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 434
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-eqz v0, :cond_7

    .line 435
    invoke-direct {p0, p1, v3, p3}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 436
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 437
    invoke-direct {p0, p1, v3, p3}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 443
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 448
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 449
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v0, :cond_a

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 452
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-eqz v0, :cond_9

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 454
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 455
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 461
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 439
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 440
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_3

    .line 445
    :cond_8
    invoke-direct {p0, p1, v3, p3}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_4

    .line 457
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-direct {p0, p1, v3, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    .line 458
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-direct {p0, p1, v3, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    goto :goto_5

    .line 463
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/qr;->b(Landroid/graphics/Canvas;FF)V

    goto/16 :goto_0

    :cond_b
    move v7, p3

    move p3, p2

    move p2, v7

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/Canvas;IFFFFI)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 383
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-nez v0, :cond_0

    .line 384
    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-eqz v0, :cond_1

    .line 387
    int-to-float v0, p2

    add-float v1, v0, p3

    int-to-float v0, p2

    add-float v3, v0, p5

    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 388
    int-to-float v0, p2

    sub-float v1, v0, p3

    int-to-float v0, p2

    sub-float v3, v0, p5

    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 391
    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v1, v0, p3

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v3, v0, p5

    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/qr;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr;->EJ:Z

    return p1
.end method

.method private aI(I)I
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 479
    add-int/lit8 v0, p1, 0x1

    .line 480
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 481
    :cond_0
    return v0
.end method

.method private aJ(I)I
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 486
    add-int/lit8 v0, p1, -0x1

    .line 487
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 488
    :cond_0
    return v0
.end method

.method private aK(I)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/qr;->aL(I)V

    .line 515
    iput v1, p0, Lcom/kingroot/kinguser/qr;->EC:F

    .line 516
    iput-boolean v0, p0, Lcom/kingroot/kinguser/qr;->mFinishing:Z

    .line 517
    iput v1, p0, Lcom/kingroot/kinguser/qr;->ED:F

    .line 518
    iput v0, p0, Lcom/kingroot/kinguser/qr;->EM:I

    .line 519
    iput v0, p0, Lcom/kingroot/kinguser/qr;->EN:I

    .line 520
    iput p1, p0, Lcom/kingroot/kinguser/qr;->EB:I

    .line 521
    return-void
.end method

.method private aL(I)V
    .locals 6

    .prologue
    .line 630
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 631
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Index %d not valid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/qr;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EH:F

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/qr;F)F
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/kinguser/qr;->EC:F

    return p1
.end method

.method private b(Landroid/graphics/Canvas;FF)V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 471
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    .line 471
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 473
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->EO:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 475
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/qr;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EC:F

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/qr;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EG:F

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/qr;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/qr;->mSpeed:F

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/qr;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/qr;->Eh:F

    return v0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 20
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-eqz v2, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 318
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 321
    :cond_0
    const/4 v6, 0x0

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 323
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v2, :cond_1

    div-int/lit8 v4, v4, 0x2

    .line 324
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EE:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr;->EF:I

    add-int v15, v2, v3

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 326
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr;->EF:I

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 330
    const/4 v2, 0x0

    .line 331
    const/4 v5, 0x0

    .line 339
    move-object/from16 v0, p0

    iget v9, v0, Lcom/kingroot/kinguser/qr;->EB:I

    .line 341
    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr;->EM:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingroot/kinguser/qr;->EN:I

    if-ne v3, v7, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr;->EN:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/kingroot/kinguser/qr;->EF:I

    if-ne v3, v7, :cond_2

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 345
    :cond_2
    const/4 v3, 0x0

    move v10, v3

    move v11, v5

    move v12, v2

    move v13, v6

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EN:I

    if-gt v10, v2, :cond_5

    .line 346
    int-to-float v2, v10

    mul-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr;->EC:F

    add-float/2addr v2, v3

    .line 347
    const/4 v3, 0x0

    sub-float v5, v2, v17

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/qr;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/qr;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 349
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-interface {v6, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    sub-float v2, v5, v2

    .line 348
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 350
    int-to-float v5, v15

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v18, v0

    .line 352
    add-float v2, v18, v3

    int-to-float v3, v15

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EE:I

    int-to-float v2, v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v14, v2

    .line 357
    :goto_1
    cmpl-float v2, v18, v14

    if-lez v2, :cond_4

    sub-float v2, v18, v14

    .line 358
    :goto_2
    add-float v19, v13, v2

    .line 359
    cmpl-float v2, v19, v13

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EM:I

    if-lt v10, v2, :cond_7

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/qr;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kingroot/kinguser/qr;->ED:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 361
    int-to-float v3, v15

    mul-float/2addr v2, v3

    int-to-float v3, v4

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 362
    int-to-float v2, v4

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 363
    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/kingroot/kinguser/qr;->a(Landroid/graphics/Canvas;IFFFFI)V

    .line 364
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EM:I

    if-ne v10, v2, :cond_7

    .line 365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EE:I

    int-to-float v2, v2

    sub-float v12, v5, v2

    move v5, v12

    .line 368
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/qr;->EN:I

    if-ne v10, v2, :cond_6

    .line 369
    add-float v3, v13, v18

    .line 372
    :goto_4
    add-float v6, v19, v14

    .line 373
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/kingroot/kinguser/qr;->aI(I)I

    move-result v9

    .line 345
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    move v12, v5

    move v13, v6

    goto/16 :goto_0

    .line 355
    :cond_3
    const/4 v2, 0x0

    move v14, v2

    goto :goto_1

    .line 357
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 376
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/kingroot/kinguser/qr;->a(Landroid/graphics/Canvas;FF)V

    .line 377
    return-void

    :cond_6
    move v3, v11

    goto :goto_4

    :cond_7
    move v5, v12

    goto :goto_3
.end method

.method static synthetic g(Lcom/kingroot/kinguser/qr;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->ES:Ljava/lang/Runnable;

    return-object v0
.end method

.method private hv()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EP:Z

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EF:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    .line 240
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EF:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 243
    iput-object v1, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    .line 244
    iput-object v1, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    goto :goto_0
.end method

.method private hw()V
    .locals 8
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 282
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EF:I

    int-to-float v0, v0

    div-float v3, v5, v0

    .line 283
    iget v2, p0, Lcom/kingroot/kinguser/qr;->EB:I

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    const/4 v4, 0x0

    aput v4, v0, v1

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    iget-object v4, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aput v5, v0, v4

    .line 287
    add-int/lit8 v0, v2, -0x1

    .line 288
    if-gez v0, :cond_0

    iget-object v4, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    array-length v4, v4

    add-int/2addr v0, v4

    .line 290
    :cond_0
    iget-object v4, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    aget v0, v5, v0

    aput v0, v4, v1

    move v0, v1

    move v1, v2

    .line 292
    :goto_0
    iget v2, p0, Lcom/kingroot/kinguser/qr;->EF:I

    if-ge v0, v2, :cond_1

    .line 294
    iget-object v2, p0, Lcom/kingroot/kinguser/qr;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v4, v0

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/kingroot/kinguser/qr;->EC:F

    add-float/2addr v4, v5

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 295
    iget-object v4, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    add-int/lit8 v5, v0, 0x1

    aput v2, v4, v5

    .line 296
    iget-object v2, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    aget v5, v5, v1

    aput v5, v2, v4

    .line 298
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    iget-object v2, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    aget v1, v3, v1

    aput v1, v0, v2

    .line 302
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v1, v0

    .line 303
    :goto_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_3
    int-to-float v3, v0

    .line 305
    :goto_4
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    div-float/2addr v2, v6

    sub-float v2, v0, v2

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/kingroot/kinguser/qr;->mStrokeWidth:F

    div-float/2addr v4, v6

    add-float/2addr v4, v0

    .line 307
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lcom/kingroot/kinguser/qr;->EQ:[I

    iget-object v6, p0, Lcom/kingroot/kinguser/qr;->ER:[F

    iget-boolean v7, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-eqz v7, :cond_6

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :goto_5
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 311
    iget-object v1, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 312
    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    goto :goto_2

    .line 303
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    goto :goto_4

    .line 307
    :cond_6
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/qr$b;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/kingroot/kinguser/qr;->EA:Lcom/kingroot/kinguser/qr$b;

    .line 624
    return-void
.end method

.method public aG(I)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 167
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/qr;->EF:I

    .line 169
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/kingroot/kinguser/qr;->EF:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/qr;->Eh:F

    .line 170
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EC:F

    iget v1, p0, Lcom/kingroot/kinguser/qr;->Eh:F

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/qr;->EC:F

    .line 171
    invoke-direct {p0}, Lcom/kingroot/kinguser/qr;->hv()V

    .line 172
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 173
    return-void
.end method

.method public aH(I)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 177
    if-gez p1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/qr;->EE:I

    .line 180
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 181
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 257
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EJ:Z

    if-eqz v0, :cond_1

    .line 258
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EB:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/qr;->aJ(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/qr;->EB:I

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EJ:Z

    .line 261
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/qr;->EM:I

    .line 264
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EM:I

    iget v1, p0, Lcom/kingroot/kinguser/qr;->EF:I

    if-le v0, v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->stop()V

    .line 278
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EN:I

    iget v1, p0, Lcom/kingroot/kinguser/qr;->EF:I

    if-ge v0, v1, :cond_1

    .line 270
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/qr;->EN:I

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EP:Z

    if-eqz v0, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/kingroot/kinguser/qr;->hw()V

    .line 277
    :cond_2
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/qr;->f(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public g(F)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStart must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/qr;->EG:F

    .line 155
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 156
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 544
    const/4 v0, -0x2

    return v0
.end method

.method public h(F)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStop must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/qr;->EH:F

    .line 162
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 163
    return-void
.end method

.method public hx()Z
    .locals 2

    .prologue
    .line 584
    iget v0, p0, Lcom/kingroot/kinguser/qr;->EN:I

    iget v1, p0, Lcom/kingroot/kinguser/qr;->EF:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->mFinishing:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->mRunning:Z

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qr;->mRunning:Z

    .line 575
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 576
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 535
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EO:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/qr;->EO:Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/qr;->setColors([I)V

    .line 142
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 540
    return-void
.end method

.method public setColors([I)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 131
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/qr;->EB:I

    .line 134
    iput-object p1, p0, Lcom/kingroot/kinguser/qr;->mColors:[I

    .line 135
    invoke-direct {p0}, Lcom/kingroot/kinguser/qr;->hv()V

    .line 136
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 137
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/qr;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 127
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr;->EL:Z

    .line 226
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/qr;->mSpeed:F

    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 149
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    .line 188
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EL:Z

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/qr;->aK(I)V

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EA:Lcom/kingroot/kinguser/qr$b;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EA:Lcom/kingroot/kinguser/qr$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qr$b;->onStart()V

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->ES:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/qr;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 559
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EA:Lcom/kingroot/kinguser/qr$b;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->EA:Lcom/kingroot/kinguser/qr$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/qr$b;->onStop()V

    .line 568
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qr;->mRunning:Z

    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/qr;->ES:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/qr;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public x(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    if-ne v0, p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr;->EI:Z

    .line 194
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    goto :goto_0
.end method

.method public y(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    if-ne v0, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr;->EK:Z

    .line 201
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    goto :goto_0
.end method

.method public z(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qr;->EP:Z

    if-ne v0, p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qr;->EP:Z

    .line 233
    invoke-direct {p0}, Lcom/kingroot/kinguser/qr;->hv()V

    .line 234
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qr;->invalidateSelf()V

    goto :goto_0
.end method
