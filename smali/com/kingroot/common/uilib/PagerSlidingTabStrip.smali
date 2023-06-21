.class public Lcom/kingroot/common/uilib/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;,
        Lcom/kingroot/common/uilib/PagerSlidingTabStrip$b;,
        Lcom/kingroot/common/uilib/PagerSlidingTabStrip$a;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private PC:Landroid/widget/LinearLayout$LayoutParams;

.field private PD:Landroid/widget/LinearLayout$LayoutParams;

.field private final PE:Lcom/kingroot/common/uilib/PagerSlidingTabStrip$b;

.field public PF:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private PG:Landroid/widget/LinearLayout;

.field private PH:Landroid/support/v4/view/ViewPager;

.field private PI:I

.field private PJ:I

.field private PK:F

.field private PL:Landroid/graphics/Paint;

.field private PM:Landroid/graphics/Paint;

.field private PN:I

.field private PO:I

.field private PP:I

.field private PQ:I

.field private PR:Z

.field private PS:Z

.field private PT:I

.field private PU:I

.field private PV:I

.field private PW:I

.field private PY:I

.field private PZ:I

.field private Qa:I

.field private Qb:I

.field private Qc:Landroid/graphics/Typeface;

.field private Qd:I

.field private Qe:I

.field private Qf:I

.field private Qg:Landroid/graphics/Typeface;

.field private Qh:I

.field private dividerPadding:I

.field private locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const v6, -0xdededf

    const/4 v2, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$b;-><init>(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PE:Lcom/kingroot/common/uilib/PagerSlidingTabStrip$b;

    .line 73
    iput v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    .line 79
    const v0, -0xff8016

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    .line 80
    iput v6, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PO:I

    .line 81
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    .line 82
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    .line 84
    iput-boolean v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PR:Z

    .line 85
    iput-boolean v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PS:Z

    .line 87
    const/16 v0, 0x34

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    .line 88
    const/16 v0, 0x8

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    .line 89
    iput v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    .line 90
    const/16 v0, 0xc

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    .line 91
    const/16 v0, 0x18

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    .line 92
    iput v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PY:I

    .line 94
    const/16 v0, 0x10

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    .line 95
    iput v6, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    .line 96
    const v0, -0xff6e16

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qb:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qc:Landroid/graphics/Typeface;

    .line 98
    iput v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qd:I

    .line 100
    iput v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qe:I

    .line 102
    const v0, 0x7f020097

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qf:I

    .line 106
    invoke-static {v3}, Lcom/kingroot/kinguser/blg;->jH(I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qg:Landroid/graphics/Typeface;

    .line 108
    iput v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qh:I

    .line 120
    invoke-virtual {p0, v4}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 123
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    .line 131
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    .line 132
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    .line 133
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    .line 134
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    int-to-float v1, v1

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    .line 135
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PY:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PY:I

    .line 136
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    .line 140
    sget-object v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    .line 143
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    .line 152
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qb:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qb:I

    .line 153
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qb:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    .line 154
    const/4 v1, 0x3

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    .line 155
    const/4 v1, 0x4

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    .line 156
    const/4 v1, 0x5

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    .line 157
    const/4 v1, 0x6

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    .line 158
    const/4 v1, 0x7

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    .line 159
    const/16 v1, 0x8

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    .line 160
    const/16 v1, 0xa

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qf:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qf:I

    .line 161
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PR:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PR:Z

    .line 162
    const/16 v1, 0x9

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    .line 163
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PS:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PS:Z

    .line 165
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    .line 168
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PM:Landroid/graphics/Paint;

    .line 172
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PM:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PM:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PC:Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PD:Landroid/widget/LinearLayout$LayoutParams;

    .line 178
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 181
    :cond_0
    return-void
.end method

.method private A(II)V
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 326
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 327
    :cond_2
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    sub-int/2addr v0, v1

    .line 330
    :cond_3
    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qe:I

    if-eq v0, v1, :cond_0

    .line 331
    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qe:I

    .line 332
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;F)F
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    return p1
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PH:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    const/4 v1, 0x0

    .line 245
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/TextView;

    if-nez v2, :cond_2

    .line 246
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 247
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 249
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qg:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 250
    const/4 v0, 0x1

    .line 255
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0, p1, v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->b(ILandroid/view/View;)V

    .line 261
    :cond_1
    return-void

    .line 252
    :cond_2
    check-cast v0, Landroid/widget/TextView;

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->A(II)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qh:I

    return p1
.end method

.method private b(ILandroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 274
    new-instance v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$2;-><init>(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    iget-object v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PD:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 283
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PC:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private nU()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 287
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    if-ge v1, v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 291
    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qf:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 295
    check-cast v0, Landroid/widget/TextView;

    .line 296
    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 297
    iget-object v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qc:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qd:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 298
    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qh:I

    if-ne v3, v1, :cond_1

    .line 299
    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qb:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    :goto_1
    iget-boolean v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PS:Z

    if-eqz v3, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 301
    :cond_1
    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 316
    :cond_2
    return-void
.end method

.method private z(II)V
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->b(ILandroid/view/View;)V

    .line 270
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PR:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qf:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    return v0
.end method

.method public getmCurrentTab()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qh:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    .line 209
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    if-ge v1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$a;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$a;

    invoke-interface {v0, v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$a;->bM(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->z(II)V

    .line 209
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PH:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->a(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->nU()V

    .line 221
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;-><init>(Lcom/kingroot/common/uilib/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 239
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 339
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 341
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    if-nez v0, :cond_1

    .line 381
    :cond_0
    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getHeight()I

    move-result v8

    .line 350
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 352
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 355
    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_2

    iget v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    iget v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 357
    iget-object v3, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 359
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    .line 361
    iget v5, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    sub-float v5, v6, v5

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    .line 362
    iget v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PK:F

    sub-float v4, v6, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    move v6, v0

    move v7, v2

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    sub-int v0, v8, v0

    int-to-float v2, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PL:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 376
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PM:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PI:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PG:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v0, v8, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 377
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v0

    move v7, v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 569
    check-cast p1, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;

    .line 570
    invoke-virtual {p1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 571
    iget v0, p1, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;->PJ:I

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    .line 572
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->requestLayout()V

    .line 573
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 577
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 578
    new-instance v1, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 579
    iget v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PJ:I

    iput v0, v1, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;->PJ:I

    .line 580
    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PS:Z

    .line 515
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .prologue
    .line 460
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    .line 461
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 462
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PQ:I

    .line 466
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 467
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 483
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->dividerPadding:I

    .line 484
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 485
    return-void
.end method

.method public setIndicateTabTextColor(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qb:I

    .line 186
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .prologue
    .line 423
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    .line 424
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 425
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PN:I

    .line 429
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 430
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .prologue
    .line 437
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PU:I

    .line 438
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 439
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PF:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 201
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .prologue
    .line 492
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PT:I

    .line 493
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 494
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PR:Z

    .line 502
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->requestLayout()V

    .line 503
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .prologue
    .line 547
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qf:I

    .line 548
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .prologue
    .line 555
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PW:I

    .line 556
    invoke-direct {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->nU()V

    .line 557
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 527
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    .line 528
    invoke-direct {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->nU()V

    .line 529
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->Qa:I

    .line 533
    invoke-direct {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->nU()V

    .line 534
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 518
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PZ:I

    .line 519
    invoke-direct {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->nU()V

    .line 520
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .prologue
    .line 446
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    .line 447
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 448
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PP:I

    .line 452
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 453
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .prologue
    .line 474
    iput p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PV:I

    .line 475
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->invalidate()V

    .line 476
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PH:Landroid/support/v4/view/ViewPager;

    .line 190
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->PE:Lcom/kingroot/common/uilib/PagerSlidingTabStrip$b;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 197
    return-void
.end method
