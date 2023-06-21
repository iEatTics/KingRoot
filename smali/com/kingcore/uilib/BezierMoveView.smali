.class public Lcom/kingcore/uilib/BezierMoveView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected radius:I

.field protected zw:Landroid/graphics/Paint;

.field protected zx:Landroid/graphics/Point;

.field protected zy:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingcore/uilib/BezierMoveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object p1, p0, Lcom/kingcore/uilib/BezierMoveView;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/BezierMoveView;->zw:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/kingcore/uilib/BezierMoveView;->zw:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/kingcore/uilib/BezierMoveView;->zw:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BezierMoveView;->setGravity(I)V

    .line 50
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BezierMoveView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BezierMoveView;->setTextColor(I)V

    .line 52
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BezierMoveView;->setTextSize(F)V

    .line 53
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 104
    invoke-static {p0}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bhi;->setTranslationX(F)V

    .line 105
    invoke-static {p0}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bhi;->setTranslationY(F)V

    .line 106
    invoke-virtual {p0}, Lcom/kingcore/uilib/BezierMoveView;->invalidate()V

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/kingcore/uilib/BezierMoveView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/kingcore/uilib/BezierMoveView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/kingcore/uilib/BezierMoveView;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingcore/uilib/BezierMoveView;->zw:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingcore/uilib/BezierMoveView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bgk;->c(Landroid/content/Context;F)I

    move-result v0

    .line 69
    invoke-virtual {p0, v0, v0}, Lcom/kingcore/uilib/BezierMoveView;->setMeasuredDimension(II)V

    .line 70
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/BezierMoveView;->radius:I

    .line 71
    return-void
.end method

.method public setEndPosition(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingcore/uilib/BezierMoveView;->zy:Landroid/graphics/Point;

    .line 63
    return-void
.end method

.method public setStartPosition(Landroid/graphics/Point;)V
    .locals 1

    .prologue
    .line 57
    iget v0, p1, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 58
    iput-object p1, p0, Lcom/kingcore/uilib/BezierMoveView;->zx:Landroid/graphics/Point;

    .line 59
    return-void
.end method
