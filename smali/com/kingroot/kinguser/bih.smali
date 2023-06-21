.class public Lcom/kingroot/kinguser/bih;
.super Lcom/kingroot/kinguser/bid;
.source "SourceFile"


# instance fields
.field private ahP:Landroid/widget/ImageView;

.field private btr:Landroid/widget/TextView;

.field private bts:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bid$a;I)V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    .line 52
    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bth:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/kingroot/kinguser/bih;->aci:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    if-ne p1, v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/kingroot/kinguser/bih;->acj:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005a

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bih;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->mContentView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->mContentView:Landroid/view/View;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->alC:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005b

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bih;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    const v1, 0x7f0f00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    const v1, 0x7f0f0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->brb:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    const v1, 0x7f0f0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->btr:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    const v1, 0x7f0f0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bih;->bts:Landroid/widget/ImageView;

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    return-object v0
.end method

.method public h(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public ja(I)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btf:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public jb(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btr:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public jc(I)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->bts:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->bts:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    return-void
.end method

.method public lM(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->btr:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bih;->ahP:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    return-void
.end method
