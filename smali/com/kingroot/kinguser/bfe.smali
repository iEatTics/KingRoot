.class public Lcom/kingroot/kinguser/bfe;
.super Lcom/kingroot/kinguser/bfa;
.source "SourceFile"


# instance fields
.field protected blU:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfa;-><init>()V

    return-void
.end method


# virtual methods
.method protected ZD()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f030139

    return v0
.end method

.method protected ZE()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 37
    invoke-super {p0}, Lcom/kingroot/kinguser/bfa;->ZE()V

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bfe;->mView:Landroid/view/View;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfe;->blU:Landroid/widget/ImageView;

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bfe;->blR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bfe;->blQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bfe;->blU:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/bfe;->mView:Landroid/view/View;

    new-instance v1, Lcom/kingroot/kinguser/bfe$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfe$1;-><init>(Lcom/kingroot/kinguser/bfe;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected r(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bfa;->r(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bfe;->ahP:Landroid/widget/ImageView;

    const v1, 0x7f02017e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void
.end method
