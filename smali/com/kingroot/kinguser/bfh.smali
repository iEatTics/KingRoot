.class public Lcom/kingroot/kinguser/bfh;
.super Lcom/kingroot/kinguser/bez;
.source "SourceFile"


# instance fields
.field private aFj:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/bez;-><init>()V

    return-void
.end method


# virtual methods
.method protected ZD()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f0300e3

    return v0
.end method

.method protected ZE()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bfh;->mView:Landroid/view/View;

    const v1, 0x7f0f000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfh;->aFj:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected r(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iput-object p1, p0, Lcom/kingroot/kinguser/bfh;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bfh;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bfh;->aFj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfh;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfh;->aFj:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e010a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
