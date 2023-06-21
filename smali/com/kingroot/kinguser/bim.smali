.class public Lcom/kingroot/kinguser/bim;
.super Lcom/kingroot/kinguser/bic;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bic;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bid$a;I)V
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    .line 26
    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bth:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/kingroot/kinguser/bim;->aci:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/kingroot/kinguser/bim;->acj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bim;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004e

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bim;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bim;->btf:Landroid/view/View;

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bim;->btf:Landroid/view/View;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bim;->brb:Landroid/widget/TextView;

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bim;->btf:Landroid/view/View;

    return-object v0
.end method
