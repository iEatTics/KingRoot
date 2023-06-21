.class public Lcom/kingroot/kinguser/view/InkView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private Ov:I

.field private aqC:Lcom/android/animation/ValueAnimator;

.field private brc:I

.field private brd:I

.field private bre:I

.field private brf:I

.field private brg:Lcom/android/animation/ValueAnimator;

.field private brh:Z

.field private bri:I

.field private brj:Z

.field private brk:I

.field private brl:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v2, p0, Lcom/kingroot/kinguser/view/InkView;->brg:Lcom/android/animation/ValueAnimator;

    .line 32
    iput-boolean v1, p0, Lcom/kingroot/kinguser/view/InkView;->brh:Z

    .line 34
    const/16 v0, 0x3c

    iput v0, p0, Lcom/kingroot/kinguser/view/InkView;->bri:I

    .line 35
    iput-boolean v1, p0, Lcom/kingroot/kinguser/view/InkView;->brj:Z

    .line 36
    iput-object v2, p0, Lcom/kingroot/kinguser/view/InkView;->aqC:Lcom/android/animation/ValueAnimator;

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/InkView;->brh:Z

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/InkView;->bri:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 139
    iget v0, p0, Lcom/kingroot/kinguser/view/InkView;->brc:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/InkView;->brd:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/InkView;->bre:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 143
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/view/InkView;->bre:I

    iget v1, p0, Lcom/kingroot/kinguser/view/InkView;->Ov:I

    sub-int/2addr v0, v1

    .line 144
    if-ltz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v0, v0, 0xff

    iget v2, p0, Lcom/kingroot/kinguser/view/InkView;->brf:I

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/view/InkView;->brc:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/InkView;->brd:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/InkView;->Ov:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/view/InkView;->bre:I

    iget v2, p0, Lcom/kingroot/kinguser/view/InkView;->Ov:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget v0, p0, Lcom/kingroot/kinguser/view/InkView;->brc:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/kinguser/view/InkView;->brd:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/kinguser/view/InkView;->bre:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/kingroot/kinguser/view/InkView;->Ov:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/kingroot/kinguser/view/InkView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/kingroot/kinguser/view/InkView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/InkView;->brh:Z

    if-nez v0, :cond_1

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/view/InkView;->brg:Lcom/android/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kingroot/kinguser/view/InkView;->brj:Z

    if-nez v0, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/view/InkView;->brk:I

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/view/InkView;->brl:I

    .line 230
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
