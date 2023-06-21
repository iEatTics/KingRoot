.class public Lcom/kingroot/kinguser/bfg;
.super Lcom/kingroot/kinguser/bfa;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfa;-><init>()V

    return-void
.end method


# virtual methods
.method protected ZD()I
    .locals 1

    .prologue
    .line 15
    const v0, 0x7f030139

    return v0
.end method

.method protected ZE()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 20
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->ZE()V

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg;->mView:Landroid/view/View;

    const v1, 0x7f0f0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg;->mView:Landroid/view/View;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg;->blR:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg;->blQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg;->blR:Landroid/widget/TextView;

    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bfg;->blR:Landroid/widget/TextView;

    new-instance v1, Lcom/kingroot/kinguser/bfg$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfg$1;-><init>(Lcom/kingroot/kinguser/bfg;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->s(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bfg;->r(Ljava/lang/Object;)V

    .line 41
    return-void
.end method
