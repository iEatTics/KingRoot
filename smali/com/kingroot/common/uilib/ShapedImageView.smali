.class public Lcom/kingroot/common/uilib/ShapedImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private RA:I

.field private RB:Landroid/graphics/drawable/shapes/Shape;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RA:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mRadius:F

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/ShapedImageView;->a(Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RA:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mRadius:F

    .line 37
    invoke-direct {p0, p2}, Lcom/kingroot/common/uilib/ShapedImageView;->a(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RA:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mRadius:F

    .line 42
    invoke-direct {p0, p2}, Lcom/kingroot/common/uilib/ShapedImageView;->a(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 47
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/ShapedImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/ShapedImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/afs$a;->ShapedImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RA:I

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mRadius:F

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 60
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    iget v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RA:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 97
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RB:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RB:Landroid/graphics/drawable/shapes/Shape;

    iget-object v2, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 65
    if-eqz p1, :cond_1

    .line 66
    iget v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RA:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RB:Landroid/graphics/drawable/shapes/Shape;

    if-nez v0, :cond_0

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 76
    iget v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mRadius:F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 77
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v1, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RB:Landroid/graphics/drawable/shapes/Shape;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->RB:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/ShapedImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/ShapedImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 81
    :cond_1
    return-void

    .line 70
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/ShapedImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/ShapedImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 71
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/kingroot/common/uilib/ShapedImageView;->mRadius:F

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
