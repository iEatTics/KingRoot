.class public Lcom/kingroot/common/uilib/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;,
        Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;,
        Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;,
        Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;,
        Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    }
.end annotation


# static fields
.field private static RC:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field private static final RD:[I


# instance fields
.field private final RE:Landroid/graphics/Paint;

.field private final RF:Landroid/graphics/drawable/Drawable;

.field private RG:I

.field private RH:I

.field private RI:F

.field private RJ:Z

.field private RK:Z

.field private RL:Z

.field private RM:Landroid/view/View;

.field private RN:I

.field private RO:Landroid/view/View;

.field private RP:I

.field private RQ:Lcom/kingroot/kinguser/wt;

.field private RR:Landroid/view/View;

.field private RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field private RT:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field private RU:F

.field private RV:Z

.field private RW:F

.field private RX:Z

.field private RY:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private RZ:Landroid/view/View$OnClickListener;

.field private final Sa:Lcom/kingroot/kinguser/ww;

.field private Sb:Z

.field private mCoveredFadeColor:I

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsUnableToDrag:Z

.field private mMinFlingVelocity:I

.field private mSlideOffset:F

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RC:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100af

    aput v2, v0, v1

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RD:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 281
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    const/16 v0, 0x190

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 96
    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RE:Landroid/graphics/Paint;

    .line 116
    iput v5, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    .line 121
    iput v5, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    .line 126
    iput v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RI:F

    .line 136
    iput-boolean v6, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    .line 141
    iput-boolean v7, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RL:Z

    .line 153
    iput v5, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RN:I

    .line 160
    new-instance v0, Lcom/kingroot/kinguser/wt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/wt;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RQ:Lcom/kingroot/kinguser/wt;

    .line 183
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RC:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 188
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RC:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RT:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 204
    iput v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    .line 220
    iput-boolean v6, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RY:Ljava/util/Set;

    .line 232
    iput-boolean v7, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 236
    iput-boolean v7, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sb:Z

    .line 283
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iput-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    .line 285
    iput-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    .line 357
    :goto_0
    return-void

    .line 290
    :cond_0
    if-eqz p2, :cond_8

    .line 291
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RD:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 295
    invoke-virtual {p0, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setGravity(I)V

    .line 298
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->SlidingUpPanelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_7

    .line 303
    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    .line 304
    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    .line 305
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RI:F

    .line 307
    const/4 v0, 0x4

    const/16 v3, 0x190

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 308
    const/4 v0, 0x3

    const/high16 v3, -0x67000000

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 310
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RN:I

    .line 311
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RP:I

    .line 313
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    .line 314
    const/16 v0, 0x8

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RL:Z

    .line 316
    const/16 v0, 0xa

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    .line 318
    invoke-static {}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->values()[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    const/16 v3, 0xb

    sget-object v4, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RC:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v4}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->ordinal()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 319
    const/16 v0, 0x9

    invoke-virtual {v2, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sb:Z

    .line 321
    const/16 v0, 0xc

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 322
    if-eq v0, v5, :cond_7

    .line 323
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 327
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 331
    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    if-ne v3, v5, :cond_2

    .line 332
    const/high16 v3, 0x42880000    # 68.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    .line 334
    :cond_2
    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    if-ne v3, v5, :cond_3

    .line 335
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    .line 337
    :cond_3
    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RI:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 338
    const/4 v3, 0x0

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RI:F

    .line 341
    :cond_4
    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    if-lez v3, :cond_6

    .line 342
    iget-boolean v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v3, :cond_5

    .line 343
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    .line 351
    :goto_3
    invoke-virtual {p0, v6}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setWillNotDraw(Z)V

    .line 353
    const/high16 v3, 0x40000000    # 2.0f

    new-instance v4, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;

    invoke-direct {v4, p0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;-><init>(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;)V

    invoke-static {p0, v3, v0, v4}, Lcom/kingroot/kinguser/ww;->a(Landroid/view/ViewGroup;FLandroid/view/animation/Interpolator;Lcom/kingroot/kinguser/ww$a;)Lcom/kingroot/kinguser/ww;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    .line 354
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mMinFlingVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ww;->setMinVelocity(F)V

    .line 356
    iput-boolean v7, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RV:Z

    goto/16 :goto_0

    .line 345
    :cond_5
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 348
    :cond_6
    iput-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)F
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;I)F
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->bQ(I)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    return v0
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->onPanelDragged(I)V

    return-void
.end method

.method private bQ(I)F
    .locals 2

    .prologue
    .line 1069
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v0

    .line 1073
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v1, :cond_0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic d(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Lcom/kingroot/kinguser/ww;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->ok()V

    return-void
.end method

.method static synthetic g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic h(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    return v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideRange:I

    return v0
.end method

.method private isViewUnder(Landroid/view/View;II)Z
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1041
    if-nez p1, :cond_0

    .line 1048
    :goto_0
    return v1

    .line 1042
    :cond_0
    new-array v2, v3, [I

    .line 1043
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1044
    new-array v3, v3, [I

    .line 1045
    invoke-virtual {p0, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getLocationOnScreen([I)V

    .line 1046
    aget v4, v3, v1

    add-int/2addr v4, p2

    .line 1047
    aget v3, v3, v0

    add-int/2addr v3, p3

    .line 1048
    aget v5, v2, v1

    if-lt v4, v5, :cond_1

    aget v5, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    aget v4, v2, v0

    if-lt v3, v4, :cond_1

    aget v2, v2, v0

    .line 1049
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    if-ge v3, v2, :cond_1

    :goto_1
    move v1, v0

    .line 1048
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1049
    goto :goto_1
.end method

.method private n(F)I
    .locals 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1057
    :goto_0
    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 1059
    iget-boolean v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v2, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 1059
    :goto_1
    return v0

    .line 1056
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int v0, v2, v0

    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private ok()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1147
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RI:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1148
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getCurrentParallaxOffset()I

    move-result v0

    int-to-float v0, v0

    .line 1149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 1150
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    invoke-static {v1}, Lcom/kingroot/kinguser/bhi;->J(Landroid/view/View;)Lcom/kingroot/kinguser/bhi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bhi;->setTranslationY(F)V

    goto :goto_0
.end method

.method private onPanelDragged(I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1158
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RT:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 1159
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    .line 1161
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->bQ(I)F

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    .line 1162
    invoke-direct {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->ok()V

    .line 1164
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 1167
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    .line 1168
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    sub-int v2, v1, v2

    .line 1170
    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    if-nez v1, :cond_3

    .line 1172
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int v1, p1, v1

    :goto_0
    iput v1, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1173
    iget v1, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    if-ne v1, v2, :cond_0

    .line 1174
    iput v4, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1181
    :cond_1
    :goto_1
    return-void

    .line 1172
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v1, p1

    goto :goto_0

    .line 1177
    :cond_3
    iget v1, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    if-eq v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    if-nez v1, :cond_1

    .line 1178
    iput v4, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    .line 1179
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method

.method private setPanelStateInternal(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, p1, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 1138
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 1139
    invoke-virtual {p0, p0, v0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Landroid/view/View;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    .line 662
    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;->b(Landroid/view/View;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0

    .line 664
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->sendAccessibilityEvent(I)V

    .line 665
    return-void
.end method

.method public a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;)V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RY:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    return-void
.end method

.method public a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1102
    if-eqz p1, :cond_0

    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p1, v0, :cond_1

    .line 1103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Panel state cannot be null or DRAGGING."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_5

    .line 1133
    :cond_4
    :goto_0
    return-void

    .line 1110
    :cond_5
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v0, :cond_6

    .line 1111
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0

    .line 1113
    :cond_6
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_7

    .line 1114
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->requestLayout()V

    .line 1117
    :cond_7
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$2;->Sd:[I

    invoke-virtual {p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1125
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2, p2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(FIZ)Z

    goto :goto_0

    .line 1119
    :pswitch_1
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    invoke-virtual {p0, v0, v2, p2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(FIZ)Z

    goto :goto_0

    .line 1122
    :pswitch_2
    invoke-virtual {p0, v3, v2, p2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(FIZ)Z

    goto :goto_0

    .line 1128
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v1

    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    :goto_1
    add-int/2addr v0, v1

    .line 1129
    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->bQ(I)F

    move-result v0

    invoke-virtual {p0, v0, v2, p2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(FIZ)Z

    goto :goto_0

    .line 1128
    :cond_8
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    neg-int v0, v0

    goto :goto_1

    .line 1117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method b(FIZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1232
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return v0

    .line 1237
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v1

    .line 1239
    if-eqz p3, :cond_2

    .line 1240
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/kingroot/kinguser/ww;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1242
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1243
    const/4 v0, 0x1

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 1247
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1333
    instance-of v0, p1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ww;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ww;->abort()V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RY:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    .line 656
    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;->onPanelSlide(Landroid/view/View;F)V

    goto :goto_0

    .line 658
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v0, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 958
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 960
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oi()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ww;->cancel()V

    .line 965
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1037
    :goto_0
    return v0

    .line 968
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 970
    if-nez v2, :cond_3

    .line 971
    iput-boolean v6, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    .line 972
    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RW:F

    .line 1037
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 973
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 974
    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RW:F

    sub-float v4, v3, v2

    .line 975
    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RW:F

    .line 979
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RO:Landroid/view/View;

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v3, v3

    iget v5, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v5, v5

    invoke-direct {p0, v2, v3, v5}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 980
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 984
    :cond_4
    iget-boolean v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v2, :cond_5

    move v2, v1

    :goto_2
    int-to-float v2, v2

    mul-float/2addr v2, v4

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 987
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RQ:Lcom/kingroot/kinguser/wt;

    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RO:Landroid/view/View;

    iget-boolean v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/wt;->a(Landroid/view/View;Z)I

    move-result v0

    if-lez v0, :cond_6

    .line 988
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    .line 989
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v2, v0

    .line 984
    goto :goto_2

    .line 995
    :cond_6
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    if-eqz v0, :cond_7

    .line 997
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 998
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 999
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1000
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1004
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1007
    :cond_7
    iput-boolean v6, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    .line 1008
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1009
    :cond_8
    iget-boolean v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v2, :cond_9

    move v0, v1

    :cond_9
    int-to-float v0, v0

    mul-float/2addr v0, v4

    cmpg-float v0, v0, v7

    if-gez v0, :cond_2

    .line 1012
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    .line 1013
    iput-boolean v6, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    .line 1014
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1020
    :cond_a
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ww;->om()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1021
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ww;->cancel()V

    .line 1022
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1025
    :cond_b
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    .line 1026
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1028
    :cond_c
    if-ne v2, v1, :cond_2

    .line 1031
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/ww;->setDragState(I)V

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 1267
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1270
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1274
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    sub-int v1, v0, v1

    .line 1276
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1281
    :goto_0
    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1282
    iget-object v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1283
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1285
    :cond_0
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1279
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    .line 1186
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 1188
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eq v0, p2, :cond_4

    .line 1191
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1192
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    if-nez v0, :cond_0

    .line 1193
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v0, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1199
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RL:Z

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1203
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 1205
    iget-boolean v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sb:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1206
    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1207
    int-to-float v2, v2

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1208
    shl-int/lit8 v2, v2, 0x18

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1209
    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RE:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1210
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RE:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1216
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1218
    return v0

    .line 1196
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1213
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1321
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1338
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1326
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getAnchorPoint()F
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    return v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getCurrentParallaxOffset()I
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 479
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mMinFlingVelocity:I

    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    return v0
.end method

.method public getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    return v0
.end method

.method public l(IZ)V
    .locals 2

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelHeight()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    .line 429
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->requestLayout()V

    .line 433
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 434
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 438
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method public oi()Z
    .locals 2

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method oj()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 700
    :goto_0
    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v5

    .line 672
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v2

    sub-int v6, v0, v2

    .line 673
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v7

    .line 674
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 679
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 681
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 682
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 683
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 687
    :goto_1
    invoke-virtual {p0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 688
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 689
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 690
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 691
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 693
    if-lt v5, v4, :cond_1

    if-lt v7, v2, :cond_1

    if-gt v6, v3, :cond_1

    if-gt v8, v0, :cond_1

    .line 695
    const/4 v1, 0x4

    .line 699
    :cond_1
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 685
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 718
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 720
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 726
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 364
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 365
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RN:I

    if-eq v0, v1, :cond_0

    .line 366
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RN:I

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 368
    :cond_0
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RP:I

    if-eq v0, v1, :cond_1

    .line 369
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RP:I

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    .line 371
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 891
    iget-boolean v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RX:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oi()Z

    move-result v2

    if-nez v2, :cond_1

    .line 892
    :cond_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ww;->abort()V

    .line 939
    :goto_0
    return v0

    .line 896
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 897
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 899
    iget v5, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 900
    iget v6, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 901
    iget-object v7, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/ww;->getTouchSlop()I

    move-result v7

    .line 903
    packed-switch v2, :pswitch_data_0

    .line 939
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ww;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 905
    :pswitch_0
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    .line 906
    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionX:F

    .line 907
    iput v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionY:F

    goto :goto_1

    .line 912
    :pswitch_1
    int-to-float v2, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_3

    cmpl-float v2, v5, v6

    if-gtz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 913
    :cond_4
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ww;->cancel()V

    .line 914
    iput-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mIsUnableToDrag:Z

    goto :goto_0

    .line 925
    :pswitch_2
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ww;->om()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 926
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ww;->processTouchEvent(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 927
    goto :goto_0

    .line 930
    :cond_5
    int-to-float v2, v7

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_2

    int-to-float v2, v7

    cmpg-float v2, v5, v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mInitialMotionY:F

    float-to-int v4, v4

    .line 932
    invoke-direct {p0, v2, v3, v4}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isViewUnder(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RZ:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    .line 933
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->playSoundEffect(I)V

    .line 934
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RZ:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v1

    .line 935
    goto/16 :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 821
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v5

    .line 822
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v2

    .line 823
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildCount()I

    move-result v6

    .line 825
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v0, :cond_0

    .line 826
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$2;->Sd:[I

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 838
    iput v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    :cond_0
    :goto_0
    move v3, v4

    .line 843
    :goto_1
    if-ge v3, v6, :cond_5

    .line 844
    invoke-virtual {p0, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 845
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    .line 848
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v8, :cond_3

    if-eqz v3, :cond_1

    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v1, :cond_3

    .line 843
    :cond_1
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 828
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 831
    :pswitch_1
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 834
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v1

    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    :goto_3
    add-int/2addr v0, v1

    .line 835
    invoke-direct {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->bQ(I)F

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    goto :goto_0

    .line 834
    :cond_2
    iget v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    neg-int v0, v0

    goto :goto_3

    .line 852
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 855
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v7, v1, :cond_7

    .line 856
    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v1

    .line 859
    :goto_4
    iget-boolean v9, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-nez v9, :cond_4

    .line 860
    iget-object v9, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    if-ne v7, v9, :cond_4

    iget-boolean v9, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    if-nez v9, :cond_4

    .line 861
    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideOffset:F

    invoke-direct {p0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->n(F)I

    move-result v1

    iget-object v9, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v1, v9

    .line 864
    :cond_4
    add-int/2addr v8, v1

    .line 865
    iget v0, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v5

    .line 866
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v0

    .line 868
    invoke-virtual {v7, v0, v1, v9, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 871
    :cond_5
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-eqz v0, :cond_6

    .line 872
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oj()V

    .line 874
    :cond_6
    invoke-direct {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->ok()V

    .line 876
    iput-boolean v4, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 877
    return-void

    :cond_7
    move v1, v2

    goto :goto_4

    .line 826
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 730
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 731
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 732
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 733
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 735
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_0

    .line 736
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v1, v0, :cond_1

    .line 738
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildCount()I

    move-result v8

    .line 743
    const/4 v0, 0x2

    if-eq v8, v0, :cond_2

    .line 744
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sliding up panel layout must have exactly 2 children!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    .line 748
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    .line 749
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    if-nez v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 754
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 755
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 758
    :cond_4
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingBottom()I

    move-result v1

    sub-int v2, v0, v1

    .line 759
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 762
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v8, :cond_e

    .line 763
    invoke-virtual {p0, v5}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 764
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    .line 767
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    if-nez v5, :cond_6

    .line 762
    :cond_5
    :goto_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 773
    :cond_6
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RR:Landroid/view/View;

    if-ne v9, v1, :cond_7

    .line 774
    iget-boolean v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v3, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eq v1, v3, :cond_10

    .line 775
    iget v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    sub-int v1, v2, v1

    .line 778
    :goto_2
    iget v3, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v10

    sub-int v3, v4, v3

    move v12, v3

    move v3, v1

    move v1, v12

    .line 787
    :goto_3
    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_8

    .line 788
    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 796
    :goto_4
    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_a

    .line 797
    const/high16 v0, -0x80000000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 808
    :goto_5
    invoke-virtual {v9, v1, v0}, Landroid/view/View;->measure(II)V

    .line 810
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v9, v0, :cond_5

    .line 811
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;

    .line 812
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RG:I

    sub-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    if-eqz v3, :cond_d

    iget v0, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->bottomMargin:I

    :goto_6
    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideRange:I

    goto :goto_1

    .line 779
    :cond_7
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mSlideableView:Landroid/view/View;

    if-ne v9, v1, :cond_f

    .line 782
    iget v1, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    iget v3, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    sub-int v3, v2, v1

    .line 783
    iget v1, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->leftMargin:I

    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v10

    sub-int v1, v4, v1

    goto :goto_3

    .line 789
    :cond_8
    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_9

    .line 790
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 792
    :cond_9
    iget v1, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->width:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 800
    :cond_a
    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_c

    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    .line 801
    int-to-float v3, v3

    iget v0, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->weight:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    .line 805
    :cond_b
    :goto_7
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_5

    .line 802
    :cond_c
    iget v10, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 803
    iget v3, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->height:I

    goto :goto_7

    .line 812
    :cond_d
    iget v0, v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 816
    :cond_e
    invoke-virtual {p0, v6, v7}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setMeasuredDimension(II)V

    .line 817
    return-void

    :cond_f
    move v1, v4

    move v3, v2

    goto/16 :goto_3

    :cond_10
    move v1, v2

    goto/16 :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1356
    check-cast p1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;

    .line 1357
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1358
    iget-object v0, p1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    :goto_0
    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 1359
    return-void

    .line 1358
    :cond_0
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RC:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1343
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1345
    new-instance v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1346
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v2, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-eq v0, v2, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 1351
    :goto_0
    return-object v1

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RT:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 881
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 883
    if-eq p2, p4, :cond_0

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 886
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 952
    :goto_0
    return v0

    .line 948
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sa:Lcom/kingroot/kinguser/ww;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ww;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    const/4 v0, 0x1

    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 952
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    .line 704
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 705
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 706
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    return-void
.end method

.method public setAnchorPoint(F)V
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 607
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RU:F

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    .line 609
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->requestLayout()V

    .line 611
    :cond_0
    return-void
.end method

.method public setClipPanel(Z)V
    .locals 0

    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RL:Z

    .line 645
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .prologue
    .line 390
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mCoveredFadeColor:I

    .line 391
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->requestLayout()V

    .line 392
    return-void
.end method

.method public setDragView(I)V
    .locals 1

    .prologue
    .line 577
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RN:I

    .line 578
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 579
    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    :cond_0
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    .line 548
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 550
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 551
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 552
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RM:Landroid/view/View;

    new-instance v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;-><init>(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    :cond_1
    return-void
.end method

.method public setEnableCover(Z)V
    .locals 0

    .prologue
    .line 1546
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->Sb:Z

    .line 1547
    return-void
.end method

.method public setFadeOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RZ:Landroid/view/View$OnClickListener;

    .line 536
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 374
    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gravity must be set to either top or bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RJ:Z

    .line 378
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->requestLayout()V

    .line 381
    :cond_1
    return-void

    .line 377
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMinFlingVelocity(I)V
    .locals 0

    .prologue
    .line 507
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mMinFlingVelocity:I

    .line 508
    return-void
.end method

.method public setOverlayed(Z)V
    .locals 0

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RK:Z

    .line 629
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->l(IZ)V

    .line 421
    return-void
.end method

.method public setPanelState(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V
    .locals 1

    .prologue
    .line 1093
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;Z)V

    .line 1094
    return-void
.end method

.method public setParallaxOffset(I)V
    .locals 1

    .prologue
    .line 488
    int-to-float v0, p1

    iput v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RI:F

    .line 489
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->requestLayout()V

    .line 492
    :cond_0
    return-void
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RO:Landroid/view/View;

    .line 589
    return-void
.end method

.method public setScrollableViewHelper(Lcom/kingroot/kinguser/wt;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RQ:Lcom/kingroot/kinguser/wt;

    .line 597
    return-void
.end method

.method public setShadowHeight(I)V
    .locals 1

    .prologue
    .line 460
    iput p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RH:I

    .line 461
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->invalidate()V

    .line 464
    :cond_0
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->RV:Z

    .line 408
    return-void
.end method
