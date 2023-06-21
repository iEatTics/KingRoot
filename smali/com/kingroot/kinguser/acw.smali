.class public Lcom/kingroot/kinguser/acw;
.super Lcom/kingroot/kinguser/yp;
.source "SourceFile"


# instance fields
.field protected abA:Landroid/view/View;

.field protected abB:Landroid/view/View;

.field protected abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

.field protected abD:Lcom/kingroot/common/utils/ui/ImageViewDot;

.field protected abE:Landroid/view/View;

.field protected abF:Landroid/widget/TextView;

.field protected abG:Landroid/widget/TextView;

.field private abv:I

.field protected abw:Landroid/widget/ImageView;

.field protected abx:Landroid/view/ViewGroup;

.field protected aby:Landroid/widget/TextView;

.field protected abz:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/yp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/acw;->abv:I

    .line 45
    return-void
.end method

.method private sf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/acw;->abv:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abx:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->aby:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/acw;->ez(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abx:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->aby:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/acw;->ey(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abx:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abB:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->aby:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/acw;->ez(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public aq(Z)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-virtual {v0, p1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setShowDot(Z)V

    .line 226
    return-void
.end method

.method public ar(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abF:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    const v1, 0x7f020235

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public as(Z)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 254
    return-void
.end method

.method public at(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 260
    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abF:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-virtual {v0, p1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abF:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setVisibility(I)V

    .line 182
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void
.end method

.method public ck(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/kingroot/kinguser/acw;->abv:I

    .line 92
    invoke-direct {p0}, Lcom/kingroot/kinguser/acw;->sf()V

    .line 93
    return-void
.end method

.method public ey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abz:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public ez(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->aby:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method protected oY()Landroid/view/View;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 106
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected oZ()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected pa()V
    .locals 3

    .prologue
    const v2, 0x7f0202ab

    .line 122
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abx:Landroid/view/ViewGroup;

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abw:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->aby:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abA:Landroid/view/View;

    .line 127
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abB:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/ui/ImageViewDot;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setDotDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/ui/ImageViewDot;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abD:Lcom/kingroot/common/utils/ui/ImageViewDot;

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abD:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setDotDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abF:Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abG:Landroid/widget/TextView;

    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abz:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acw;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/acw;->abE:Landroid/view/View;

    .line 144
    invoke-direct {p0}, Lcom/kingroot/kinguser/acw;->sf()V

    .line 145
    return-void
.end method

.method public sg()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/acw;->abE:Landroid/view/View;

    return-object v0
.end method
