.class public Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private aQA:I

.field private aQB:I

.field private aQx:Landroid/graphics/Rect;

.field private aQy:I

.field private aQz:I

.field private mAlpha:I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private zR:I

.field private zS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0xff

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mAlpha:I

    .line 43
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v0, 0xff

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mAlpha:I

    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/16 v0, 0xff

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mAlpha:I

    .line 32
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mAlpha:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQx:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQy:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQA:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->zR:I

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQz:I

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQB:I

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->zS:I

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->zR:I

    iget v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->zS:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQx:Landroid/graphics/Rect;

    .line 52
    return-void
.end method


# virtual methods
.method public a(IIIIJ)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQx:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQx:Landroid/graphics/Rect;

    .line 97
    :goto_0
    return-void

    .line 66
    :cond_0
    iput p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQy:I

    .line 67
    iput p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQz:I

    .line 68
    add-int v0, p1, p3

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQA:I

    .line 69
    add-int v0, p2, p4

    iput v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQB:I

    .line 70
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v1

    .line 84
    new-instance v2, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView$2;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;)V

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 92
    invoke-virtual {v2, p5, p6}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 93
    new-array v3, v3, [Lcom/android/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 94
    invoke-virtual {v2}, Lcom/android/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 70
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->aQx:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 104
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 57
    iput p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->zR:I

    .line 58
    iput p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->zS:I

    .line 59
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->init()V

    .line 60
    return-void
.end method
