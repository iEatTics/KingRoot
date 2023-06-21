.class public Lcom/kingcore/uilib/RootStatusView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private BM:Landroid/graphics/RectF;

.field private BN:I

.field private BO:I

.field private BP:I

.field private BQ:I

.field private BR:Landroid/graphics/Bitmap;

.field private BS:Landroid/graphics/Bitmap;

.field private BT:Landroid/graphics/Bitmap;

.field private BU:Landroid/graphics/Bitmap;

.field private BV:Landroid/graphics/RectF;

.field private BW:Landroid/graphics/Paint;

.field private BX:I

.field private BY:Ljava/lang/String;

.field private BZ:Z

.field private Bh:Landroid/graphics/Paint;

.field private Ca:Z

.field private Cb:I

.field private Cc:I

.field private Cd:Z

.field private Ce:Landroid/graphics/Paint;

.field private mLayoutHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    .line 64
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    .line 69
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    .line 74
    invoke-direct {p0}, Lcom/kingcore/uilib/RootStatusView;->init()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    .line 64
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    .line 69
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    .line 79
    invoke-direct {p0}, Lcom/kingcore/uilib/RootStatusView;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    .line 64
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    .line 69
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    .line 84
    invoke-direct {p0}, Lcom/kingcore/uilib/RootStatusView;->init()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    .line 64
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    .line 69
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    .line 89
    invoke-direct {p0}, Lcom/kingcore/uilib/RootStatusView;->init()V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/RootStatusView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->BQ:I

    return v0
.end method

.method static synthetic a(Lcom/kingcore/uilib/RootStatusView;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingcore/uilib/RootStatusView;->BQ:I

    return p1
.end method

.method static synthetic a(Lcom/kingcore/uilib/RootStatusView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView;->BM:Landroid/graphics/RectF;

    return-object p1
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;I)V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 175
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v1, v0

    .line 178
    int-to-float v1, p4

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/RootStatusView;ZLcom/android/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/RootStatusView;->a(ZLcom/android/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private a(ZLcom/android/animation/Animator$AnimatorListener;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/RootStatusView;->v(Z)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 253
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/RootStatusView;->w(Z)Lcom/android/animation/ValueAnimator;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 256
    if-eqz p1, :cond_1

    .line 257
    new-array v3, v3, [Lcom/android/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playSequentially([Lcom/android/animation/Animator;)V

    .line 262
    :goto_0
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {v2, p2}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 266
    :cond_0
    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 267
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 268
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingcore/uilib/RootStatusView$3;

    invoke-direct {v1, p0, v2}, Lcom/kingcore/uilib/RootStatusView$3;-><init>(Lcom/kingcore/uilib/RootStatusView;Lcom/android/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 277
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->postInvalidate()V

    .line 278
    return-void

    .line 259
    :cond_1
    new-array v3, v3, [Lcom/android/animation/Animator;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playSequentially([Lcom/android/animation/Animator;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingcore/uilib/RootStatusView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    return v0
.end method

.method static synthetic b(Lcom/kingcore/uilib/RootStatusView;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingcore/uilib/RootStatusView;->BP:I

    return p1
.end method

.method private static b(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ce:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ce:Landroid/graphics/Paint;

    .line 139
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ce:Landroid/graphics/Paint;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0071

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ce:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    :cond_1
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    int-to-float v3, v0

    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/kingcore/uilib/RootStatusView;->Ce:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingcore/uilib/RootStatusView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->BP:I

    return v0
.end method

.method static synthetic c(Lcom/kingcore/uilib/RootStatusView;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingcore/uilib/RootStatusView;->BN:I

    return p1
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 147
    iget-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BM:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->BN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->BO:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BM:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/kingcore/uilib/RootStatusView;->BM:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/kingcore/uilib/RootStatusView;->BM:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/kingcore/uilib/RootStatusView;->Bh:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingcore/uilib/RootStatusView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->BN:I

    return v0
.end method

.method static synthetic d(Lcom/kingcore/uilib/RootStatusView;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingcore/uilib/RootStatusView;->BO:I

    return p1
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BV:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BR:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingcore/uilib/RootStatusView;->BV:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BY:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingcore/uilib/RootStatusView;->BW:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/kingcore/uilib/RootStatusView;->BV:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/kingcore/uilib/RootStatusView;->BV:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kingcore/uilib/RootStatusView;->a(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->Bh:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->Bh:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/xy;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BT:Landroid/graphics/Bitmap;

    .line 98
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BT:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BR:Landroid/graphics/Bitmap;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BW:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BW:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BW:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cb:I

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cc:I

    .line 106
    return-void
.end method

.method private u(Z)V
    .locals 2

    .prologue
    .line 227
    const/4 v0, 0x1

    new-instance v1, Lcom/kingcore/uilib/RootStatusView$2;

    invoke-direct {v1, p0, p1}, Lcom/kingcore/uilib/RootStatusView$2;-><init>(Lcom/kingcore/uilib/RootStatusView;Z)V

    invoke-direct {p0, v0, v1}, Lcom/kingcore/uilib/RootStatusView;->a(ZLcom/android/animation/Animator$AnimatorListener;)V

    .line 249
    return-void
.end method

.method private v(Z)Lcom/android/animation/ValueAnimator;
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    if-eqz p1, :cond_0

    .line 283
    new-array v0, v0, [I

    aput v2, v0, v2

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 287
    :goto_0
    new-instance v1, Lcom/kingcore/uilib/RootStatusView$4;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RootStatusView$4;-><init>(Lcom/kingcore/uilib/RootStatusView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    return-object v0

    .line 285
    :cond_0
    new-array v0, v0, [I

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    aput v1, v0, v2

    aput v2, v0, v3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private w(Z)Lcom/android/animation/ValueAnimator;
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 308
    new-array v0, v0, [I

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    aput v1, v0, v2

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->BX:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 312
    :goto_0
    new-instance v1, Lcom/kingcore/uilib/RootStatusView$5;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RootStatusView$5;-><init>(Lcom/kingcore/uilib/RootStatusView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    return-object v0

    .line 310
    :cond_0
    new-array v0, v0, [I

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->BX:I

    aput v1, v0, v2

    iget v1, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public j(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    .line 208
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView;->BY:Ljava/lang/String;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BS:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ce

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BS:Landroid/graphics/Bitmap;

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BS:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BR:Landroid/graphics/Bitmap;

    .line 221
    iget-object v1, p0, Lcom/kingcore/uilib/RootStatusView;->Bh:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cc:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    invoke-direct {p0, p2}, Lcom/kingcore/uilib/RootStatusView;->u(Z)V

    .line 224
    return-void

    .line 221
    :cond_2
    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->Cb:I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 112
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BT:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingcore/uilib/RootStatusView;->b(Landroid/graphics/Bitmap;)V

    .line 113
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BS:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingcore/uilib/RootStatusView;->b(Landroid/graphics/Bitmap;)V

    .line 114
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BU:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingcore/uilib/RootStatusView;->b(Landroid/graphics/Bitmap;)V

    .line 115
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/RootStatusView;->c(Landroid/graphics/Canvas;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/RootStatusView;->b(Landroid/graphics/Canvas;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/RootStatusView;->d(Landroid/graphics/Canvas;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/RootStatusView;->e(Landroid/graphics/Canvas;)V

    .line 130
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 328
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 330
    iput p2, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    .line 331
    iput p1, p0, Lcom/kingcore/uilib/RootStatusView;->BX:I

    .line 334
    div-int/lit8 v0, p2, 0x6

    .line 335
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p2, v0

    int-to-float v4, v4

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/RootStatusView;->BV:Landroid/graphics/RectF;

    .line 338
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BW:Landroid/graphics/Paint;

    div-int/lit8 v1, p2, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 344
    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->postInvalidate()V

    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 347
    :pswitch_0
    iput-boolean v4, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    goto :goto_0

    .line 352
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 355
    iget v2, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/kingcore/uilib/RootStatusView;->mLayoutHeight:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 356
    iput-boolean v4, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    goto :goto_0

    .line 358
    :cond_0
    iput-boolean v3, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    goto :goto_0

    .line 366
    :pswitch_2
    iput-boolean v3, p0, Lcom/kingcore/uilib/RootStatusView;->Cd:Z

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setIcon(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->Ca:Z

    .line 183
    iput-boolean v0, p0, Lcom/kingcore/uilib/RootStatusView;->BZ:Z

    .line 186
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BU:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201cd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BU:Landroid/graphics/Bitmap;

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BT:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BR:Landroid/graphics/Bitmap;

    .line 192
    invoke-virtual {p0}, Lcom/kingcore/uilib/RootStatusView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 194
    if-nez v0, :cond_2

    .line 204
    :goto_1
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView;->BU:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 198
    :cond_2
    new-instance v1, Lcom/kingcore/uilib/RootStatusView$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/RootStatusView$1;-><init>(Lcom/kingcore/uilib/RootStatusView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
