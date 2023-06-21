.class public Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$a;
    }
.end annotation


# instance fields
.field private aHW:Landroid/support/v4/view/ViewPager;

.field private aHX:Landroid/graphics/drawable/GradientDrawable;

.field private aHY:Lcom/android/animation/Animator;

.field private aHZ:Lcom/android/animation/Animator;

.field private aIa:Lcom/android/animation/Animator;

.field private aIb:Lcom/android/animation/Animator;

.field private aIc:I

.field private aId:I

.field private aIe:I

.field private aIf:Landroid/database/DataSetObserver;

.field private mIndicatorHeight:I

.field private final mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    .line 37
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aId:I

    .line 38
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mIndicatorHeight:I

    .line 40
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIe:I

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 84
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIf:Landroid/database/DataSetObserver;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->d(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    return-void
.end method

.method private Lr()Lcom/android/animation/Animator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 175
    const-string v0, "alpha"

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v4, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 176
    const-string v1, "scaleX"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v4, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 177
    const-string v2, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v4, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 179
    new-instance v3, Lcom/android/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 180
    invoke-virtual {v3, v0}, Lcom/android/animation/AnimatorSet;->play(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet$Builder;->with(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/animation/AnimatorSet$Builder;->with(Lcom/android/animation/Animator;)Lcom/android/animation/AnimatorSet$Builder;

    .line 181
    return-object v3

    .line 175
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 176
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe66666    # 1.8f
    .end array-data

    .line 177
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe66666    # 1.8f
    .end array-data
.end method

.method private Ls()V
    .locals 5

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->removeAllViews()V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    .line 220
    if-gtz v1, :cond_1

    .line 233
    :cond_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 224
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getOrientation()I

    move-result v3

    .line 226
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    if-ne v2, v0, :cond_2

    .line 228
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIa:Lcom/android/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(ILcom/android/animation/Animator;)V

    .line 226
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIb:Lcom/android/animation/Animator;

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(ILcom/android/animation/Animator;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIe:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(ILcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 236
    invoke-virtual {p2}, Lcom/android/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p2}, Lcom/android/animation/Animator;->end()V

    .line 238
    invoke-virtual {p2}, Lcom/android/animation/Animator;->cancel()V

    .line 241
    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHX:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aId:I

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mIndicatorHeight:I

    invoke-virtual {p0, v1, v0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 244
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 246
    if-nez p1, :cond_1

    .line 247
    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 248
    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 254
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    invoke-virtual {p2, v1}, Lcom/android/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p2}, Lcom/android/animation/Animator;->start()V

    .line 258
    return-void

    .line 250
    :cond_1
    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 251
    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private aZ(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 159
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aId:I

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->r(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aId:I

    .line 160
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mIndicatorHeight:I

    if-gez v0, :cond_1

    .line 161
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->r(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mIndicatorHeight:I

    .line 162
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    if-gez v0, :cond_2

    .line 163
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->r(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    .line 165
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->Lr()Lcom/android/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHY:Lcom/android/animation/Animator;

    .line 166
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->Lr()Lcom/android/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIa:Lcom/android/animation/Animator;

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIa:Lcom/android/animation/Animator;

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/Animator;->setDuration(J)Lcom/android/animation/Animator;

    .line 169
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->ba(Landroid/content/Context;)Lcom/android/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHZ:Lcom/android/animation/Animator;

    .line 170
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->ba(Landroid/content/Context;)Lcom/android/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIb:Lcom/android/animation/Animator;

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIb:Lcom/android/animation/Animator;

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/Animator;->setDuration(J)Lcom/android/animation/Animator;

    .line 172
    return-void

    .line 159
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aId:I

    goto :goto_0

    .line 161
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mIndicatorHeight:I

    goto :goto_1

    .line 163
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    goto :goto_2
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHZ:Lcom/android/animation/Animator;

    return-object v0
.end method

.method private ba(Landroid/content/Context;)Lcom/android/animation/Animator;
    .locals 3

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->Lr()Lcom/android/animation/Animator;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$a;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 187
    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHY:Lcom/android/animation/Animator;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIe:I

    return v0
.end method

.method private d(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHX:Landroid/graphics/drawable/GradientDrawable;

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHX:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHX:Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aZ(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHX:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->Ls()V

    return-void
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 126
    if-nez p2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 130
    :cond_0
    sget-object v2, Lcom/kingroot/kinguser/afs$a;->CircleIndicator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aId:I

    .line 134
    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mIndicatorHeight:I

    .line 135
    const/4 v3, 0x2

    .line 136
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIc:I

    .line 138
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 139
    if-ne v3, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->setOrientation(I)V

    .line 141
    const/4 v0, 0x4

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 142
    if-ltz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->setGravity(I)V

    .line 144
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 139
    goto :goto_1

    .line 142
    :cond_2
    const/16 v0, 0x11

    goto :goto_2
.end method


# virtual methods
.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIf:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public r(F)I
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 262
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can not find Viewpager , setViewPager first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 215
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aIe:I

    .line 194
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->Ls()V

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->aHW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 199
    :cond_0
    return-void
.end method
