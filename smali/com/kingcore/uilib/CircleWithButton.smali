.class public Lcom/kingcore/uilib/CircleWithButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private Aa:Landroid/widget/TextView;

.field private Ab:Landroid/widget/TextView;

.field private final Ac:I

.field private final Ad:I

.field private Ae:Ljava/lang/String;

.field private Af:Ljava/lang/String;

.field private Ag:Z

.field private Ah:Lcom/android/animation/AnimatorSet;

.field private Ai:Lcom/android/animation/AnimatorSet;

.field private final Aj:I

.field private final Ak:I

.field private Al:F

.field private Am:Z

.field private mContext:Landroid/content/Context;

.field private zE:I

.field private zI:Landroid/graphics/RectF;

.field private zL:F

.field private zM:I

.field private zN:F

.field private zO:F

.field private zP:F

.field private zQ:F

.field private zR:I

.field private zS:I

.field private zT:Landroid/graphics/Paint;

.field private zU:Landroid/graphics/Paint;

.field private zV:Landroid/graphics/Paint;

.field private zW:I

.field private zX:I

.field private zY:Ljava/lang/String;

.field private zZ:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zL:F

    .line 65
    iput v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zW:I

    .line 66
    iput v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zX:I

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zY:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/kingcore/uilib/CircleWithButton;->Ac:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ad:I

    .line 82
    iput-boolean v1, p0, Lcom/kingcore/uilib/CircleWithButton;->Ag:Z

    .line 86
    const/16 v0, 0x168

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aj:I

    .line 87
    const/16 v0, 0x5a

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ak:I

    .line 342
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Al:F

    .line 468
    iput-boolean v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Am:Z

    .line 91
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton;->mContext:Landroid/content/Context;

    .line 92
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->CircleWithButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zY:Ljava/lang/String;

    .line 94
    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zM:I

    .line 95
    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zM:I

    invoke-virtual {p0, v1}, Lcom/kingcore/uilib/CircleWithButton;->aB(I)V

    .line 96
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/CircleWithButton;->init(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v10, 0x0

    const/16 v7, 0xe

    const-wide v8, 0x3fa999999999999aL    # 0.05

    const/4 v6, 0x1

    .line 121
    const v0, 0x3ecccccd    # 0.4f

    .line 122
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/kingcore/uilib/CircleWithButton;->zS:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    const/4 v0, -0x1

    invoke-virtual {v1, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 124
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zS:I

    int-to-double v2, v0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 125
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 126
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 127
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 128
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 129
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const v0, 0x3f59999a    # 0.85f

    .line 132
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v1, v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0a00ce

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 136
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e008b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Ae:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 139
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 140
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 141
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 142
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const v0, 0x3f333333    # 0.7f

    .line 148
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v1, v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0a00d1

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e008b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Af:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 155
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 156
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-double v2, v0

    mul-double/2addr v2, v8

    double-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 157
    const/4 v0, 0x3

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    .line 163
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    .line 169
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 171
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zT:Landroid/graphics/Paint;

    .line 175
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 177
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zT:Landroid/graphics/Paint;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zX:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 184
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, v10, v0

    iget v3, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float v3, v10, v0

    iget v4, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/kingcore/uilib/CircleWithButton;->zS:I

    int-to-float v5, v5

    sub-float v0, v5, v0

    iget v5, p0, Lcom/kingcore/uilib/CircleWithButton;->zE:I

    mul-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    sub-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zI:Landroid/graphics/RectF;

    .line 189
    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->invalidate()V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/CircleWithButton;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zX:I

    return v0
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/kingcore/uilib/CircleWithButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->invalidate()V

    .line 199
    return-void

    .line 196
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 517
    if-nez p0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v0, "scaleX"

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 521
    const-string v1, "scaleY"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 522
    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 524
    new-instance v3, Lcom/android/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 525
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 526
    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 527
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {v3, p1}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 531
    :cond_1
    invoke-virtual {v3}, Lcom/android/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 520
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 521
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 522
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/kingcore/uilib/CircleWithButton;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/kingcore/uilib/CircleWithButton;->Am:Z

    return p1
.end method

.method static synthetic b(Lcom/kingcore/uilib/CircleWithButton;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    return-object v0
.end method

.method public static b(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 536
    if-nez p0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string v0, "scaleX"

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    .line 540
    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 541
    const-string v1, "scaleY"

    new-array v2, v6, [F

    fill-array-data v2, :array_1

    .line 542
    invoke-static {p0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 543
    const-string v2, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v2

    .line 545
    new-instance v3, Lcom/android/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 546
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 547
    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 548
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 549
    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {v3, p1}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 552
    :cond_1
    invoke-virtual {v3}, Lcom/android/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 539
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 541
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 543
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Lcom/kingcore/uilib/CircleWithButton;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zW:I

    return v0
.end method

.method static synthetic d(Lcom/kingcore/uilib/CircleWithButton;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic e(Lcom/kingcore/uilib/CircleWithButton;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/kingcore/uilib/CircleWithButton;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Am:Z

    return v0
.end method

.method static synthetic g(Lcom/kingcore/uilib/CircleWithButton;)Lcom/android/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    return-object v0
.end method

.method private gA()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Am:Z

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private gB()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const v6, 0x3f733333    # 0.95f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 483
    const-string v0, "scaleX"

    new-array v1, v5, [F

    aput v3, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 484
    const-string v1, "scaleY"

    new-array v2, v5, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 485
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    .line 486
    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    new-array v3, v7, [Lcom/android/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 487
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 488
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 489
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$4;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$4;-><init>(Lcom/kingcore/uilib/CircleWithButton;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 498
    const-string v0, "scaleX"

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 499
    const-string v1, "scaleY"

    new-array v2, v5, [F

    aput v6, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v1

    .line 500
    new-instance v2, Lcom/android/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/android/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    .line 501
    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    new-array v3, v7, [Lcom/android/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 502
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 503
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 504
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$5;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$5;-><init>(Lcom/kingcore/uilib/CircleWithButton;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 513
    return-void
.end method

.method private gz()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 472
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    .line 111
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Aa:Landroid/widget/TextView;

    .line 112
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ab:Landroid/widget/TextView;

    .line 113
    new-instance v0, Lcom/android/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ah:Lcom/android/animation/AnimatorSet;

    .line 114
    new-instance v0, Lcom/android/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->Ai:Lcom/android/animation/AnimatorSet;

    .line 115
    return-void
.end method


# virtual methods
.method public aB(I)V
    .locals 2

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v0, 0x42b40000    # 90.0f

    .line 103
    iput v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zN:F

    .line 104
    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zO:F

    .line 105
    iput v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zP:F

    .line 106
    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zQ:F

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 428
    iget-object v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zI:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zO:F

    iget v3, p0, Lcom/kingcore/uilib/CircleWithButton;->zN:F

    iget-object v5, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 429
    iget-object v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zI:Landroid/graphics/RectF;

    iget v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zQ:F

    iget v3, p0, Lcom/kingcore/uilib/CircleWithButton;->zP:F

    iget-object v5, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 430
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    invoke-static {v1, p1}, Lcom/kingcore/uilib/CircleWithButton;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/kingcore/uilib/CircleWithButton;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kingcore/uilib/CircleWithButton;->setMeasuredDimension(II)V

    .line 444
    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->getMeasuredHeight()I

    move-result v0

    .line 445
    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->getMeasuredWidth()I

    move-result v1

    .line 447
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 448
    invoke-super {p0, v0, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 449
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 435
    iput p1, p0, Lcom/kingcore/uilib/CircleWithButton;->zR:I

    .line 436
    iput p2, p0, Lcom/kingcore/uilib/CircleWithButton;->zS:I

    .line 437
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kingcore/uilib/CircleWithButton;->G(Landroid/content/Context;)V

    .line 438
    invoke-direct {p0}, Lcom/kingcore/uilib/CircleWithButton;->gB()V

    .line 439
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 454
    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->invalidate()V

    .line 465
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 456
    :pswitch_0
    invoke-direct {p0}, Lcom/kingcore/uilib/CircleWithButton;->gz()V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-direct {p0}, Lcom/kingcore/uilib/CircleWithButton;->gA()V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCentreViewDrawable(I)V
    .locals 1

    .prologue
    .line 392
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/CircleWithButton;->setCentreViewDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    return-void
.end method

.method public setCentreViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 345
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/kingcore/uilib/CircleWithButton;->zS:I

    int-to-float v1, v1

    iget v2, p0, Lcom/kingcore/uilib/CircleWithButton;->Al:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 346
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 347
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 349
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 351
    new-instance v2, Lcom/kingcore/uilib/CircleWithButton$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/kingcore/uilib/CircleWithButton$2;-><init>(Lcom/kingcore/uilib/CircleWithButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout$LayoutParams;)V

    const-wide/16 v0, 0xc8

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 390
    return-void
.end method

.method public setCentreViewText(I)V
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/CircleWithButton;->setCentreViewText(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method

.method public setCentreViewText(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 395
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 396
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 397
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingcore/uilib/CircleWithButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 398
    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 399
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 400
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 404
    iget-object v2, p0, Lcom/kingcore/uilib/CircleWithButton;->zZ:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v0, Lcom/kingcore/uilib/CircleWithButton$3;

    invoke-direct {v0, p0, v1}, Lcom/kingcore/uilib/CircleWithButton$3;-><init>(Lcom/kingcore/uilib/CircleWithButton;Landroid/widget/TextView;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 419
    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zV:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zU:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/CircleWithButton;->zX:I

    .line 316
    iput p1, p0, Lcom/kingcore/uilib/CircleWithButton;->zW:I

    .line 317
    new-instance v0, Lcom/kingcore/uilib/CircleWithButton$1;

    invoke-direct {v0, p0}, Lcom/kingcore/uilib/CircleWithButton$1;-><init>(Lcom/kingcore/uilib/CircleWithButton;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 340
    :cond_0
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/CircleWithButton;->setClickable(Z)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/kingcore/uilib/CircleWithButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method
