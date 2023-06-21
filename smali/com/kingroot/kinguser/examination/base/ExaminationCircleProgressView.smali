.class public Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final aJI:Ljava/lang/Object;


# instance fields
.field private BH:F

.field private Df:F

.field private aJJ:F

.field private aJK:Landroid/graphics/Paint;

.field private aJL:Landroid/graphics/Paint;

.field private aJM:F

.field private final aJN:F

.field private aJO:Landroid/graphics/RectF;

.field private aJP:Lcom/android/animation/ValueAnimator;

.field private aJQ:F

.field private aJR:F

.field private aJS:F

.field private aJT:F

.field private aJU:F

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJI:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v2, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJJ:F

    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->Df:F

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->mState:I

    .line 51
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->Df:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    .line 54
    iput v3, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJN:F

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->BH:F

    .line 66
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJQ:F

    .line 69
    iput v2, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJR:F

    .line 72
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJR:F

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJS:F

    .line 75
    iput v3, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    .line 78
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJQ:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJU:F

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0095

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJL:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJL:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJL:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0094

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 96
    return-void
.end method

.method private j(FF)V
    .locals 2

    .prologue
    .line 361
    iput p1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJS:F

    .line 362
    iput p2, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJQ:F

    .line 363
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJS:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    .line 364
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJQ:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJU:F

    .line 365
    return-void
.end method

.method private setState(I)V
    .locals 3

    .prologue
    .line 339
    sget-object v1, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJI:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->mState:I

    if-ne v0, p1, :cond_0

    .line 341
    monitor-exit v1

    .line 354
    :goto_0
    return-void

    .line 344
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->mState:I

    .line 345
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 346
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJR:F

    const v2, 0x3eaaaaab

    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->j(FF)V

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJP:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJP:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 353
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 351
    :cond_2
    const/4 v0, 0x0

    const v2, 0x3e99999a    # 0.3f

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->j(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->mState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 109
    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->BH:F

    rem-float v2, v1, v5

    .line 115
    const/high16 v1, 0x3f000000    # 0.5f

    .line 116
    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 117
    sub-float v3, v2, v1

    div-float v1, v3, v1

    .line 121
    :goto_1
    cmpg-float v3, v1, v0

    if-gez v3, :cond_1

    .line 124
    :goto_2
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 127
    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJU:F

    mul-float v6, v1, v0

    .line 130
    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    div-float v2, v6, v9

    sub-float/2addr v1, v2

    sub-float v7, v1, v10

    .line 133
    sub-float v0, v5, v0

    iget v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJJ:F

    mul-float/2addr v0, v1

    .line 134
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJO:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJO:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJO:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget-object v8, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJO:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v8, v0

    invoke-direct {v1, v2, v3, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJS:F

    div-float/2addr v0, v9

    add-float v2, v0, v10

    iget v3, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    iget-object v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJL:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 143
    iget-object v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 146
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    sub-float v2, v7, v0

    iget-object v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    add-float v2, v7, v0

    iget-object v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 119
    :cond_0
    sub-float v3, v1, v2

    div-float v1, v3, v1

    goto :goto_1

    .line 155
    :pswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJO:Landroid/graphics/RectF;

    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJS:F

    div-float/2addr v0, v9

    add-float v2, v0, v10

    iget v3, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJT:F

    iget-object v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 169
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 173
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_0

    .line 174
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float v3, v1, v5

    .line 175
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v1

    .line 176
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v3

    .line 177
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 186
    :goto_0
    sub-float v4, v1, v3

    div-float/2addr v4, v5

    const v5, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJJ:F

    .line 187
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    add-float/2addr v3, v5

    iget v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    add-float/2addr v2, v5

    mul-float/2addr v1, v6

    iget v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    sub-float/2addr v1, v5

    mul-float/2addr v0, v6

    iget v5, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJM:F

    sub-float/2addr v0, v5

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJO:Landroid/graphics/RectF;

    .line 192
    return-void

    .line 179
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v6

    div-float v2, v1, v5

    .line 181
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 182
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public setCurColor(I)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJK:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->invalidate()V

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->BH:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->BH:F

    goto :goto_0
.end method

.method public setTargetMissingCircleDegree(F)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lcom/kingroot/kinguser/examination/base/ExaminationCircleProgressView;->aJR:F

    .line 358
    return-void
.end method
