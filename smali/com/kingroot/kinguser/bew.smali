.class public Lcom/kingroot/kinguser/bew;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected oI()V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bew;->at(Z)V

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bew;->abA:Landroid/view/View;

    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bew;->abF:Landroid/widget/TextView;

    const v1, 0x7f070203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bew;->abF:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0014

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/bew$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bew$1;-><init>(Lcom/kingroot/kinguser/bew;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bew;->b(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
