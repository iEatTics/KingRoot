.class public Lcom/kingroot/kinguser/axp;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    const v0, 0x7f0f0317

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0701c3

    .line 33
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axp;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lcom/kingroot/kinguser/ada;

    iget-object v1, p0, Lcom/kingroot/kinguser/axp;->mContext:Landroid/content/Context;

    const-wide/32 v2, 0x7f07029a

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axp;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
