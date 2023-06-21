.class public Lcom/kingroot/kinguser/bif;
.super Lcom/kingroot/kinguser/bid;
.source "SourceFile"


# instance fields
.field private btp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bif;->btp:Z

    .line 18
    return-void
.end method


# virtual methods
.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bif;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030056

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bif;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ef(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bif;->btp:Z

    .line 70
    return-void
.end method

.method public iZ(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bif;->btm:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bif;->btp:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-super {p0}, Lcom/kingroot/kinguser/bid;->onBackPressed()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bid;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bif;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e001d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 32
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 34
    new-instance v1, Lcom/kingroot/kinguser/bif$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bif$1;-><init>(Lcom/kingroot/kinguser/bif;Lcom/kingcore/uilib/ProgressWhell;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 45
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bif;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bif;->brb:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/bif;->brb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bif;->brb:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :cond_0
    return-void
.end method
