.class public Lcom/kingroot/kinguser/big;
.super Lcom/kingroot/kinguser/bid;
.source "SourceFile"


# instance fields
.field private mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bid$a;I)V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    .line 49
    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bth:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/kingroot/kinguser/big;->aci:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/kingroot/kinguser/big;->acj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected acQ()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030059

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/big;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/big;->btf:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->btf:Landroid/view/View;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/big;->brb:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->btf:Landroid/view/View;

    const v1, 0x7f0f00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/big;->mIconView:Landroid/widget/ImageView;

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->btf:Landroid/view/View;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->brb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->brb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->brb:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->brb:Landroid/widget/TextView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/big;->brb:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
