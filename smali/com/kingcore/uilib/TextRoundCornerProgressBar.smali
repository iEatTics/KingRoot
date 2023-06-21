.class public Lcom/kingcore/uilib/TextRoundCornerProgressBar;
.super Lcom/kingcore/uilib/BaseRoundCornerProgressBar;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private Dg:Landroid/widget/TextView;

.field private Dh:I

.field private Di:I

.field private Dj:I

.field private Dk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private gZ()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method private ha()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    iget v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    return-void
.end method

.method private hb()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Di:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    return-void
.end method

.method private hc()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 107
    iget v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dj:I

    iget v2, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dj:I

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    iget-object v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    return-void
.end method

.method private hd()V
    .locals 4

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->he()V

    .line 126
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getTextProgressMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 127
    invoke-virtual {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getMax()F

    move-result v1

    invoke-virtual {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getProgress()F

    move-result v2

    div-float/2addr v1, v2

    .line 128
    invoke-virtual {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->getPadding()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 129
    iget v2, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dj:I

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hf()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hg()V

    goto :goto_0
.end method

.method private he()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v3, 0x11

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    invoke-virtual {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 165
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 166
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 167
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 168
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method private hf()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method private hg()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/kingroot/kinguser/afs$a;->TextRoundCornerProgress:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dh:I

    .line 49
    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->b(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Di:I

    .line 50
    const/4 v1, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->b(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dj:I

    .line 52
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dk:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method protected a(Landroid/widget/LinearLayout;FFFIIIZ)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0, p7}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->az(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 69
    div-int/lit8 v1, p6, 0x2

    sub-int v1, p5, v1

    .line 70
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

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_0
    div-float v0, p2, p3

    .line 78
    mul-int/lit8 v1, p6, 0x2

    int-to-float v1, v1

    sub-float v1, p4, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 79
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 80
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void

    .line 74
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getProgressText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dk:Ljava/lang/String;

    return-object v0
.end method

.method public getTextProgressColor()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dh:I

    return v0
.end method

.method public getTextProgressMargin()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dj:I

    return v0
.end method

.method public getTextProgressSize()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Di:I

    return v0
.end method

.method protected gp()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f03009c

    return v0
.end method

.method protected gq()V
    .locals 2

    .prologue
    .line 59
    const v0, 0x7f0f0202

    invoke-virtual {p0, v0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 62
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    return-void
.end method

.method protected gr()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->gZ()V

    .line 87
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hb()V

    .line 88
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hc()V

    .line 89
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hd()V

    .line 90
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->ha()V

    .line 91
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hd()V

    .line 253
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dg:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public setProgress(F)V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/kingcore/uilib/BaseRoundCornerProgressBar;->setProgress(F)V

    .line 214
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hd()V

    .line 215
    return-void
.end method

.method public setProgressText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dk:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->gZ()V

    .line 208
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hd()V

    .line 209
    return-void
.end method

.method public setTextProgressColor(I)V
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dh:I

    .line 223
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->ha()V

    .line 224
    return-void
.end method

.method public setTextProgressMargin(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Dj:I

    .line 242
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hc()V

    .line 243
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hd()V

    .line 244
    return-void
.end method

.method public setTextProgressSize(I)V
    .locals 0

    .prologue
    .line 231
    iput p1, p0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->Di:I

    .line 232
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hb()V

    .line 233
    invoke-direct {p0}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->hd()V

    .line 234
    return-void
.end method
