.class public Lcom/kingroot/kinguser/bid;
.super Lcom/kingroot/kinguser/bie;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bid$b;,
        Lcom/kingroot/kinguser/bid$a;
    }
.end annotation


# instance fields
.field protected aci:Landroid/widget/Button;

.field protected acj:Landroid/widget/Button;

.field protected alC:Landroid/widget/TextView;

.field protected baP:Landroid/view/View;

.field protected brb:Landroid/widget/TextView;

.field private btd:Lcom/kingroot/kinguser/bid$b;

.field private bte:Lcom/kingroot/kinguser/bid$b;

.field protected btf:Landroid/view/View;

.field protected mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bie;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bid;)Lcom/kingroot/kinguser/bid$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->btd:Lcom/kingroot/kinguser/bid$b;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bid;)Lcom/kingroot/kinguser/bid$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->bte:Lcom/kingroot/kinguser/bid$b;

    return-object v0
.end method


# virtual methods
.method public C(F)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 121
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bid$a;)V
    .locals 3

    .prologue
    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e0053

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0055

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    .line 152
    sget-object v2, Lcom/kingroot/kinguser/bid$a;->bth:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v2, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 157
    iget-object v1, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/bid$b;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/bid;->btd:Lcom/kingroot/kinguser/bid$b;

    .line 84
    return-void
.end method

.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bid;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->mContentView:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030058

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bid;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->btf:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->btf:Landroid/view/View;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->brb:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->brb:Landroid/widget/TextView;

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->btf:Landroid/view/View;

    return-object v0
.end method

.method protected acU()Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004f

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bid;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->baP:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->baP:Landroid/view/View;

    const v1, 0x7f0f0096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->baP:Landroid/view/View;

    const v1, 0x7f0f0097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bid$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bid$1;-><init>(Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/bid$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bid$2;-><init>(Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->baP:Landroid/view/View;

    return-object v0
.end method

.method public acV()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    return-object v0
.end method

.method public b(Lcom/kingroot/kinguser/bid$b;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/kingroot/kinguser/bid;->bte:Lcom/kingroot/kinguser/bid$b;

    .line 88
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public iW(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->alC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public iX(I)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    return-void
.end method

.method public iY(I)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 175
    return-void
.end method

.method public lK(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->aci:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public lL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->acj:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->brb:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/bid;->brb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    return-void
.end method
