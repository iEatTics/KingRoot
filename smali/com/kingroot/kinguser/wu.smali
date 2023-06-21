.class public Lcom/kingroot/kinguser/wu;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private Ri:Landroid/graphics/Paint;

.field private Rj:Landroid/graphics/RectF;

.field private Rk:I

.field private Rl:I

.field private Rm:Lcom/kingroot/common/uilib/ShadowProperty;

.field private Rn:I

.field private Ro:Landroid/graphics/RectF;

.field private Rp:F

.field private Rq:F

.field private Rr:Z

.field private mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/kingroot/common/uilib/ShadowProperty;IFF)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/wu;->Rr:Z

    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/wu;->Rm:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rm:Lcom/kingroot/common/uilib/ShadowProperty;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/ShadowProperty;->ob()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/wu;->Rn:I

    .line 37
    iput p3, p0, Lcom/kingroot/kinguser/wu;->Rp:F

    .line 38
    iput p4, p0, Lcom/kingroot/kinguser/wu;->Rq:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->og()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->oh()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->og()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iput-boolean v2, p0, Lcom/kingroot/kinguser/wu;->Rr:Z

    .line 51
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->od()I

    move-result v1

    int-to-float v1, v1

    .line 65
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->oe()I

    move-result v2

    int-to-float v2, v2

    .line 66
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->of()I

    move-result v3

    int-to-float v3, v3

    .line 67
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/ShadowProperty;->getShadowColor()I

    move-result v4

    .line 63
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wu;->Ro:Landroid/graphics/RectF;

    .line 71
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ro:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kingroot/kinguser/wu;->Rp:F

    iget v2, p0, Lcom/kingroot/kinguser/wu;->Rq:F

    iget-object v3, p0, Lcom/kingroot/kinguser/wu;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 102
    iget-boolean v0, p0, Lcom/kingroot/kinguser/wu;->Rr:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Ro:Landroid/graphics/RectF;

    iget v1, p0, Lcom/kingroot/kinguser/wu;->Rp:F

    iget v2, p0, Lcom/kingroot/kinguser/wu;->Rq:F

    iget-object v3, p0, Lcom/kingroot/kinguser/wu;->Ri:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 76
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/wu;->Rk:I

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/kingroot/kinguser/wu;->Rj:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/wu;->Rl:I

    .line 84
    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/kingroot/kinguser/wu;->Rm:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 85
    invoke-virtual {v0}, Lcom/kingroot/common/uilib/ShadowProperty;->nX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/wu;->Rn:I

    int-to-float v0, v0

    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/wu;->Rm:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 86
    invoke-virtual {v2}, Lcom/kingroot/common/uilib/ShadowProperty;->nY()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/wu;->Rn:I

    int-to-float v1, v1

    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/wu;->Rm:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 87
    invoke-virtual {v2}, Lcom/kingroot/common/uilib/ShadowProperty;->nZ()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/kingroot/kinguser/wu;->Rk:I

    iget v3, p0, Lcom/kingroot/kinguser/wu;->Rn:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/wu;->Rm:Lcom/kingroot/common/uilib/ShadowProperty;

    .line 88
    invoke-virtual {v3}, Lcom/kingroot/common/uilib/ShadowProperty;->oa()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/kingroot/kinguser/wu;->Rl:I

    iget v5, p0, Lcom/kingroot/kinguser/wu;->Rn:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    :goto_2
    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/kingroot/kinguser/wu;->Ro:Landroid/graphics/RectF;

    .line 90
    invoke-virtual {p0}, Lcom/kingroot/kinguser/wu;->invalidateSelf()V

    .line 92
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    iget v2, p0, Lcom/kingroot/kinguser/wu;->Rk:I

    int-to-float v2, v2

    goto :goto_1

    .line 88
    :cond_4
    iget v3, p0, Lcom/kingroot/kinguser/wu;->Rl:I

    int-to-float v3, v3

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
