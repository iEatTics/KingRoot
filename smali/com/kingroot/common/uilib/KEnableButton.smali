.class public Lcom/kingroot/common/uilib/KEnableButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/KEnableButton$a;
    }
.end annotation


# instance fields
.field private NA:Ljava/lang/String;

.field private NB:I

.field private NC:I

.field private ND:Z

.field private NE:Landroid/widget/ImageView;

.field private NF:Lcom/kingroot/common/uilib/KEnableButton$a;

.field private NG:Landroid/view/View$OnClickListener;

.field private Nz:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p2}, Lcom/kingroot/common/uilib/KEnableButton;->a(Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 70
    invoke-direct {p0}, Lcom/kingroot/common/uilib/KEnableButton;->gq()V

    .line 73
    const-string v0, "com.kinguser"

    const-string v1, "text_color"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 75
    if-gez v0, :cond_1

    .line 76
    const-string v0, "com.kinguser"

    const-string v1, "text_color"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 78
    if-lez v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :cond_0
    :goto_0
    const-string v0, "com.kinguser"

    const-string v1, "enable_text"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 88
    if-gez v0, :cond_2

    .line 89
    const-string v1, "com.kinguser"

    const-string v2, "enable_text"

    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->Nz:Ljava/lang/String;

    .line 96
    :goto_1
    const-string v1, "com.kinguser"

    const-string v2, "disable_text"

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 98
    if-gez v0, :cond_3

    .line 99
    const-string v0, "com.kinguser"

    const-string v1, "disable_text"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NA:Ljava/lang/String;

    .line 106
    :goto_2
    const-string v0, "com.kinguser"

    const-string v1, "enable_bg"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NB:I

    .line 110
    const-string v0, "com.kinguser"

    const-string v1, "disable_bg"

    invoke-interface {p1, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NC:I

    .line 114
    const-string v0, "com.kinguser"

    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/KEnableButton;->setEnable(Z)V

    .line 120
    new-instance v0, Lcom/kingroot/common/uilib/KEnableButton$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/KEnableButton$1;-><init>(Lcom/kingroot/common/uilib/KEnableButton;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NG:Landroid/view/View$OnClickListener;

    .line 132
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NG:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/kingroot/common/uilib/KEnableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->Nz:Ljava/lang/String;

    goto :goto_1

    .line 102
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NA:Ljava/lang/String;

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/common/uilib/KEnableButton;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    return v0
.end method

.method static synthetic b(Lcom/kingroot/common/uilib/KEnableButton;)Lcom/kingroot/common/uilib/KEnableButton$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NF:Lcom/kingroot/common/uilib/KEnableButton$a;

    return-object v0
.end method

.method private gq()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 52
    invoke-virtual {p0}, Lcom/kingroot/common/uilib/KEnableButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    .line 54
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NE:Landroid/widget/ImageView;

    .line 56
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/common/uilib/KEnableButton;->setOrientation(I)V

    .line 62
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/kingroot/common/uilib/KEnableButton;->setGravity(I)V

    .line 63
    iget-object v2, p0, Lcom/kingroot/common/uilib/KEnableButton;->NE:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/kingroot/common/uilib/KEnableButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/common/uilib/KEnableButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 67
    return-void
.end method


# virtual methods
.method public getDisableBgRes()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NC:I

    return v0
.end method

.method public getDisableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NA:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableBgRes()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NB:I

    return v0
.end method

.method public getEnableText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->Nz:Ljava/lang/String;

    return-object v0
.end method

.method public setDisableBgRes(I)V
    .locals 1

    .prologue
    .line 224
    iput p1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NC:I

    .line 226
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 229
    :cond_0
    return-void
.end method

.method public setDisableText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NA:Ljava/lang/String;

    .line 201
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    if-ne v0, p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput-boolean p1, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    .line 151
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->Nz:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->Nz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :goto_1
    iget v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NB:I

    if-lez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NE:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NB:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NA:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    iget v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NC:I

    if-lez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NE:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NC:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setEnableBgRes(I)V
    .locals 1

    .prologue
    .line 212
    iput p1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NB:I

    .line 214
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NE:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public setEnableText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/kingroot/common/uilib/KEnableButton;->Nz:Ljava/lang/String;

    .line 188
    iget-boolean v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->ND:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/common/uilib/KEnableButton;->NG:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setOnStateChangeListener(Lcom/kingroot/common/uilib/KEnableButton$a;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/kingroot/common/uilib/KEnableButton;->NF:Lcom/kingroot/common/uilib/KEnableButton$a;

    .line 233
    return-void
.end method
