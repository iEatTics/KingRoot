.class public abstract Lcom/kingcore/uilib/BaseRoundCornerProgressBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;
    }
.end annotation


# instance fields
.field private colorBackground:I

.field private padding:I

.field private radius:I

.field private zi:Landroid/widget/LinearLayout;

.field private zj:Landroid/widget/LinearLayout;

.field private zk:Landroid/widget/LinearLayout;

.field private zl:I

.field private zm:F

.field private zn:F

.field private zo:F

.field private zp:I

.field private zq:I

.field private zr:Z

.field private zs:Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;

.field private zt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zt:Z

    .line 55
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->F(Landroid/content/Context;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zt:Z

    .line 65
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->F(Landroid/content/Context;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method private F(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/4 v2, -0x1

    .line 73
    invoke-virtual {p0, v3}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->setGravity(I)V

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->addView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 246
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 247
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 248
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 249
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 252
    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingcore/uilib/BaseRoundCornerProgressBar;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->removeAllViews()V

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gp()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    const v0, 0x7f0f01ff

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zi:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f0f0201

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zj:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f0f0200

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zk:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gq()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zt:Z

    .line 113
    return-void
.end method

.method static synthetic b(Lcom/kingcore/uilib/BaseRoundCornerProgressBar;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    return-void
.end method

.method private gt()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->colorBackground:I

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->az(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 181
    iget v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->radius:I

    iget v2, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 182
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x2

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x3

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x4

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x5

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x6

    int-to-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x7

    int-to-float v1, v1

    aput v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 186
    iget-object v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zi:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 187
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 188
    iget-object v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zi:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private gu()V
    .locals 9

    .prologue
    .line 204
    iget-object v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zj:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    iget v3, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zl:I

    int-to-float v4, v0

    iget v5, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->radius:I

    iget v6, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    iget v7, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zp:I

    iget-boolean v8, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zr:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->a(Landroid/widget/LinearLayout;FFFIIIZ)V

    .line 205
    return-void
.end method

.method private gv()V
    .locals 9

    .prologue
    .line 208
    iget-object v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zk:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    iget v3, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zl:I

    int-to-float v4, v0

    iget v5, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->radius:I

    iget v6, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    iget v7, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zq:I

    iget-boolean v8, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zr:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->a(Landroid/widget/LinearLayout;FFFIIIZ)V

    .line 209
    return-void
.end method

.method private gw()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zj:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->setupReverse(Landroid/widget/LinearLayout;)V

    .line 213
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zk:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->setupReverse(Landroid/widget/LinearLayout;)V

    .line 214
    return-void
.end method

.method private gx()V
    .locals 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zi:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    iget v2, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    iget v3, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    iget v4, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    :cond_0
    return-void
.end method

.method private setupReverse(Landroid/widget/LinearLayout;)V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 218
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    invoke-direct {p0, v0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->a(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 220
    iget-boolean v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zr:Z

    if-eqz v1, :cond_1

    .line 221
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 224
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void

    .line 226
    :cond_1
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 229
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method protected abstract a(Landroid/widget/LinearLayout;FFFIIIZ)V
.end method

.method protected az(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 200
    return-object v0
.end method

.method protected b(F)F
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 259
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->RoundCornerProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 121
    const/4 v0, 0x5

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->b(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->radius:I

    .line 122
    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->b(F)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    .line 124
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zr:Z

    .line 126
    const/4 v0, 0x2

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    .line 127
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    .line 128
    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 131
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->colorBackground:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 133
    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zp:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e00e4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 135
    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v1, :cond_0

    .line 140
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 140
    :try_start_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :cond_1
    :goto_1
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getLayoutWidth()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zl:I

    int-to-float v0, v0

    return v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    return v0
.end method

.method public getProgressBackgroundColor()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->colorBackground:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zp:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->radius:I

    return v0
.end method

.method public getSecondaryProgress()F
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    return v0
.end method

.method public getSecondaryProgressColor()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zq:I

    return v0
.end method

.method public getSecondaryProgressWidth()F
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zk:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zk:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract gp()I
.end method

.method protected abstract gq()V
.end method

.method protected abstract gr()V
.end method

.method protected gs()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zt:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gt()V

    .line 170
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gx()V

    .line 171
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gw()V

    .line 172
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 173
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 174
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gr()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 385
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 386
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gs()V

    .line 387
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 151
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zl:I

    .line 153
    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gs()V

    .line 154
    new-instance v0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$1;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$1;-><init>(Lcom/kingcore/uilib/BaseRoundCornerProgressBar;)V

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_0
    return-void
.end method

.method public setMax(F)V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 303
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    .line 304
    :cond_0
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 305
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 307
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 308
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zs:Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;

    .line 381
    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .prologue
    .line 290
    if-ltz p1, :cond_0

    .line 291
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->padding:I

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gx()V

    .line 293
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 294
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 295
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 319
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 320
    iput v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    .line 325
    :goto_0
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 326
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zs:Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zs:Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;

    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->getId()I

    move-result v1

    iget v2, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;->a(IFZZ)V

    .line 328
    :cond_0
    return-void

    .line 321
    :cond_1
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 322
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    goto :goto_0

    .line 324
    :cond_2
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zn:F

    goto :goto_0
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->colorBackground:I

    .line 358
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gt()V

    .line 359
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .prologue
    .line 366
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zp:I

    .line 367
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 368
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 278
    if-ltz p1, :cond_0

    .line 279
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->radius:I

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gt()V

    .line 281
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 282
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 283
    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zr:Z

    .line 268
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gw()V

    .line 269
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gu()V

    .line 270
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 271
    return-void
.end method

.method public setSecondaryProgress(F)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 341
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 342
    iput v1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    .line 347
    :goto_0
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 348
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zs:Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zs:Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;

    invoke-virtual {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->getId()I

    move-result v1

    iget v2, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar$a;->a(IFZZ)V

    .line 350
    :cond_0
    return-void

    .line 343
    :cond_1
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 344
    iget v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zm:F

    iput v0, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    goto :goto_0

    .line 346
    :cond_2
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zo:F

    goto :goto_0
.end method

.method public setSecondaryProgressColor(I)V
    .locals 0

    .prologue
    .line 375
    iput p1, p0, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->zq:I

    .line 376
    invoke-direct {p0}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->gv()V

    .line 377
    return-void
.end method
