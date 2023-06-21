.class public Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$c;,
        Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;,
        Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;
    }
.end annotation


# static fields
.field private static final Op:I

.field private static final aqE:I

.field private static final aqF:I


# instance fields
.field private Df:F

.field private OC:Landroid/graphics/Paint;

.field private Oy:Landroid/graphics/Paint;

.field private Tc:I

.field private aqA:Landroid/view/animation/AlphaAnimation;

.field private aqB:Lcom/android/animation/ValueAnimator;

.field private aqC:Lcom/android/animation/ValueAnimator;

.field private aqD:Lcom/android/animation/ValueAnimator;

.field private aqG:Z

.field private aqH:Z

.field private aqI:Z

.field private aqi:I

.field private aqj:Landroid/graphics/Bitmap;

.field private aqk:Landroid/graphics/Bitmap;

.field private aql:Landroid/graphics/drawable/BitmapDrawable;

.field private aqm:Landroid/widget/ImageView;

.field private aqn:Landroid/widget/TextView;

.field private aqo:Landroid/widget/TextView;

.field private aqp:I

.field private aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

.field private aqr:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

.field private aqs:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$c;

.field private aqt:F

.field private aqu:F

.field private aqv:Landroid/graphics/Paint;

.field private aqw:Landroid/graphics/Paint;

.field private aqx:Landroid/graphics/Paint;

.field private aqy:Lcom/android/animation/ValueAnimator;

.field private aqz:Lcom/android/animation/ValueAnimator;

.field private mAppName:Ljava/lang/String;

.field private zR:I

.field private zS:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xfa

    .line 90
    const/16 v0, 0x9f

    const/16 v1, 0xe9

    const/16 v2, 0xf7

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Op:I

    .line 91
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqE:I

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zS:I

    .line 34
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    .line 35
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zR:I

    .line 37
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqj:Landroid/graphics/Bitmap;

    .line 38
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    .line 40
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aql:Landroid/graphics/drawable/BitmapDrawable;

    .line 47
    const/16 v0, 0x11

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Tc:I

    .line 48
    const/16 v0, 0xe

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqp:I

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqr:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

    .line 66
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    .line 68
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqv:Landroid/graphics/Paint;

    .line 70
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    .line 72
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    .line 73
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqx:Landroid/graphics/Paint;

    .line 95
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqG:Z

    .line 96
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqH:Z

    .line 97
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqI:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->mAppName:Ljava/lang/String;

    .line 117
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->init(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zS:I

    .line 34
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    .line 35
    iput v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zR:I

    .line 37
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqj:Landroid/graphics/Bitmap;

    .line 38
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    .line 40
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aql:Landroid/graphics/drawable/BitmapDrawable;

    .line 47
    const/16 v0, 0x11

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Tc:I

    .line 48
    const/16 v0, 0xe

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqp:I

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqr:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

    .line 66
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    .line 68
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqv:Landroid/graphics/Paint;

    .line 70
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    .line 72
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    .line 73
    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqx:Landroid/graphics/Paint;

    .line 95
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqG:Z

    .line 96
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqH:Z

    .line 97
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqI:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->mAppName:Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqD:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqH:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqI:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zR:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqA:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqs:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$c;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqB:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqr:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$b;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/android/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqC:Lcom/android/animation/ValueAnimator;

    return-object v0
.end method

.method private h(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const v10, 0x3f851eb8    # 1.04f

    .line 236
    .line 237
    const/16 v7, 0x64

    .line 238
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, v7

    div-double/2addr v0, v2

    double-to-float v8, v0

    .line 240
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    int-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v0, v2

    double-to-float v9, v0

    .line 241
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 242
    int-to-float v0, v6

    mul-float/2addr v0, v8

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v1, v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqM:F

    add-float/2addr v0, v1

    .line 243
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v9

    .line 244
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v9

    .line 245
    mul-float v3, v1, v10

    .line 246
    mul-float v4, v0, v10

    .line 247
    iget v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    add-float/2addr v2, v0

    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v5, 0xe

    const/4 v2, -0x1

    const/4 v4, 0x2

    const/4 v3, -0x2

    const/4 v6, 0x1

    .line 274
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->setVisibility(I)V

    .line 276
    new-instance v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    .line 278
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqm:Landroid/widget/ImageView;

    .line 280
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 287
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqo:Landroid/widget/TextView;

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqo:Landroid/widget/TextView;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqo:Landroid/widget/TextView;

    iget v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqp:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqo:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0121

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    const/16 v0, 0x270f

    .line 292
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 294
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    iget-object v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqo:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    .line 298
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 299
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 300
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 301
    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 302
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    iget v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Tc:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 304
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070079

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->mAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0121

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Df:F

    .line 311
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Op:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->OC:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Df:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqv:Landroid/graphics/Paint;

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Df:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 327
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    sget v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqE:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 330
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqx:Landroid/graphics/Paint;

    .line 331
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqx:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0202b2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqj:Landroid/graphics/Bitmap;

    .line 335
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02007b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    .line 336
    invoke-direct {p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->xp()V

    .line 337
    return-void
.end method

.method private l(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 163
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    div-int/lit8 v0, v0, 0xb

    int-to-float v2, v0

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-float v0, v0

    iget-object v4, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_1

    :goto_1
    int-to-float v1, v1

    div-float v4, v0, v1

    .line 166
    cmpl-float v0, v4, v5

    if-ltz v0, :cond_2

    move v1, v2

    .line 167
    :goto_2
    cmpl-float v0, v4, v5

    if-ltz v0, :cond_3

    div-float v0, v2, v4

    .line 168
    :goto_3
    iget v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    sub-float/2addr v2, v1

    iput v2, v3, Landroid/graphics/RectF;->left:F

    .line 169
    iget v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    sub-float/2addr v2, v0

    iput v2, v3, Landroid/graphics/RectF;->top:F

    .line 170
    iget v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    add-float/2addr v1, v2

    iput v1, v3, Landroid/graphics/RectF;->right:F

    .line 171
    iget v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqx:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v1, v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqO:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqx:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqk:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1

    .line 166
    :cond_2
    mul-float v0, v2, v4

    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 167
    goto :goto_3
.end method

.method private m(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 178
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    const/4 v9, 0x4

    .line 181
    const/16 v2, 0xa

    .line 182
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 183
    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    int-to-double v4, v4

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 184
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    sub-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 185
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    sub-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 186
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 187
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 188
    const/16 v5, 0x5a

    int-to-float v10, v5

    .line 189
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v12, v4

    mul-double/2addr v6, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    float-to-double v12, v5

    add-double/2addr v6, v12

    double-to-float v11, v6

    .line 190
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    float-to-double v6, v5

    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    float-to-double v14, v4

    mul-double/2addr v12, v14

    sub-double/2addr v6, v12

    double-to-float v12, v6

    .line 191
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    float-to-double v6, v5

    int-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    float-to-double v0, v4

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    double-to-float v13, v6

    .line 192
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    float-to-double v6, v5

    int-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v4, v4

    mul-double/2addr v4, v14

    sub-double v4, v6, v4

    double-to-float v14, v4

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v2, v2, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqN:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 196
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v9, :cond_0

    .line 197
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 198
    const/16 v2, 0x118

    int-to-float v4, v2

    const/16 v2, 0x46

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Oy:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 199
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Df:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Df:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 203
    return-void
.end method

.method private n(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 266
    iput p2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zS:I

    .line 267
    iput p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zR:I

    .line 268
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zR:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v1, v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    .line 269
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    .line 270
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->zS:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    .line 271
    return-void
.end method

.method private n(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 208
    const/4 v1, 0x4

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqj:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqj:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 214
    const/16 v0, 0x5a

    int-to-float v4, v0

    .line 215
    iget v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqi:I

    int-to-double v6, v0

    const-wide v8, 0x3fcd70a3d70a3d71L    # 0.23

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqv:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v6, v6, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqO:I

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 218
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v0, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqN:F

    iget v7, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    iget v8, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    invoke-virtual {p1, v0, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 221
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 222
    iget v7, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    .line 223
    iget v8, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    sub-float/2addr v8, v5

    .line 224
    int-to-float v9, v3

    sub-float v9, v7, v9

    iput v9, v6, Landroid/graphics/RectF;->left:F

    .line 225
    int-to-float v9, v2

    sub-float v9, v8, v9

    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 226
    int-to-float v9, v3

    add-float/2addr v7, v9

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 227
    int-to-float v7, v2

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 228
    iget v7, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqt:F

    iget v8, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqu:F

    invoke-virtual {p1, v4, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 229
    iget-object v7, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqj:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqv:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 232
    return-void
.end method

.method private xp()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 343
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqy:Lcom/android/animation/ValueAnimator;

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqy:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqy:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqy:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqy:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$1;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqy:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$3;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 370
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqz:Lcom/android/animation/ValueAnimator;

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqz:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqz:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqz:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$4;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqB:Lcom/android/animation/ValueAnimator;

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqB:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 385
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$5;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 393
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqB:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 420
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqA:Landroid/view/animation/AlphaAnimation;

    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqA:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqA:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqA:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$7;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$7;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 448
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofInt([I)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqC:Lcom/android/animation/ValueAnimator;

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqC:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Lcom/android/animation/ValueAnimator;->setRepeatCount(I)V

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$8;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqC:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$9;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 477
    new-array v0, v6, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqD:Lcom/android/animation/ValueAnimator;

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqD:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqD:Lcom/android/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqD:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$10;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$10;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 488
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqD:Lcom/android/animation/ValueAnimator;

    new-instance v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$2;-><init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 500
    return-void

    .line 343
    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x42340000    # 45.0f
    .end array-data

    .line 370
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    .line 383
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 448
    :array_3
    .array-data 4
        0xff
        0x5a
        0xff
    .end array-data

    .line 477
    :array_4
    .array-data 4
        0x42340000    # 45.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 121
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqH:Z

    if-eqz v0, :cond_1

    .line 123
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqI:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqo:Landroid/widget/TextView;

    iget v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqp:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v2, v2, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqQ:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    iget v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->Tc:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqq:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    iget v2, v2, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqQ:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->h(Landroid/graphics/Canvas;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->n(Landroid/graphics/Canvas;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->m(Landroid/graphics/Canvas;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->l(Landroid/graphics/Canvas;)V

    .line 132
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 142
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 143
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 137
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->n(II)V

    .line 149
    return-void
.end method

.method public setAnimationListener(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$c;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqs:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$c;

    .line 158
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 152
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->mAppName:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->aqn:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->mAppName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method
