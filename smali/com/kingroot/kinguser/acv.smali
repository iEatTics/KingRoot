.class public Lcom/kingroot/kinguser/acv;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public cj(I)V
    .locals 4

    .prologue
    const v3, 0x7f0e0122

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 36
    packed-switch p1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abz:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->aby:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->aby:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->aby:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/acv;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->aby:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abz:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abz:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abz:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/acv;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abE:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abE:Landroid/view/View;

    const v1, 0x7f0e0042

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abw:Landroid/widget/ImageView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/acv;->abw:Landroid/widget/ImageView;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ada;->onClick(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acv;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acv;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f040012

    const v2, 0x7f04001a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 60
    :cond_0
    return-void
.end method
