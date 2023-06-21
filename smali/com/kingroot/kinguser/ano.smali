.class public Lcom/kingroot/kinguser/ano;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# instance fields
.field private aCC:Landroid/widget/ImageView;

.field private aCD:Landroid/widget/FrameLayout;

.field private aCE:Landroid/widget/ImageView;

.field private aCF:Lcom/kingroot/kinguser/anx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ano;)Lcom/kingroot/kinguser/anx;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCF:Lcom/kingroot/kinguser/anx;

    return-object v0
.end method


# virtual methods
.method public Jm()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCE:Landroid/widget/ImageView;

    return-object v0
.end method

.method public Jn()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCD:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public Jo()Lcom/kingroot/kinguser/anx;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCF:Lcom/kingroot/kinguser/anx;

    return-object v0
.end method

.method protected oI()V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 32
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ano;->abE:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->abE:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->sg()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ano;->aCC:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->sg()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ano;->aCD:Landroid/widget/FrameLayout;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/anx;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/anx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ano;->aCF:Lcom/kingroot/kinguser/anx;

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCD:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/ano;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anx;->getWholeView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ano;->aCE:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JO()V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCE:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/ano$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ano$1;-><init>(Lcom/kingroot/kinguser/ano;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->aCC:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/ano$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ano$2;-><init>(Lcom/kingroot/kinguser/ano;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e006e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e006d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 59
    return-void
.end method

.method protected oY()Landroid/view/View;
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ano;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030135

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public sg()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/ano;->abE:Landroid/view/View;

    return-object v0
.end method
