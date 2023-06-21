.class public Lcom/kingcore/uilib/SlideFlashTextView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private CM:Landroid/widget/TextView;

.field private CN:Landroid/widget/TextView;

.field private CO:Landroid/widget/TextView;

.field private CP:Landroid/widget/TextView;

.field private CQ:Landroid/widget/RelativeLayout;

.field private CR:Landroid/widget/RelativeLayout;

.field private CS:Landroid/widget/RelativeLayout;

.field private CT:Landroid/view/animation/Animation;

.field private CU:Landroid/view/animation/Animation;

.field private CV:Landroid/view/animation/Animation;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/SlideFlashTextView;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/SlideFlashTextView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/kingcore/uilib/SlideFlashTextView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CR:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/kingcore/uilib/SlideFlashTextView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CQ:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    const v1, 0x7f030128

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CQ:Landroid/widget/RelativeLayout;

    .line 51
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0325

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CR:Landroid/widget/RelativeLayout;

    .line 52
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CS:Landroid/widget/RelativeLayout;

    .line 56
    const v0, 0x7f040011

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CT:Landroid/view/animation/Animation;

    .line 58
    const v0, 0x7f04000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CU:Landroid/view/animation/Animation;

    .line 60
    const v0, 0x7f040010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CV:Landroid/view/animation/Animation;

    .line 63
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CM:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0324

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CN:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CO:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->mView:Landroid/view/View;

    const v1, 0x7f0f0328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CP:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/kingcore/uilib/SlideFlashTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/kingcore/uilib/SlideFlashTextView$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/SlideFlashTextView$1;-><init>(Lcom/kingcore/uilib/SlideFlashTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public gY()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CQ:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CT:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CR:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CU:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CS:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CV:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    return-void
.end method

.method public q(II)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CM:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 96
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CN:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CO:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 98
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CP:Landroid/widget/TextView;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 122
    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CR:Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#66"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 124
    iget-object v1, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CS:Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#66"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 126
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#66"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#66"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v2

    .line 127
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 128
    iget-object v1, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CQ:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CM:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CN:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CM:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CN:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CM:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CN:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v0, p0, Lcom/kingcore/uilib/SlideFlashTextView;->CP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    return-void
.end method
