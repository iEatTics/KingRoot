.class public Lcom/kingroot/kinguser/bep;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bep;->abA:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bep;->abw:Landroid/widget/ImageView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bep;->abw:Landroid/widget/ImageView;

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bep;->abz:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0121

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bep;->sg()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    return-void
.end method
