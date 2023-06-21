.class public abstract Lcom/kingroot/kinguser/bfa;
.super Lcom/kingroot/kinguser/bez;
.source "SourceFile"


# instance fields
.field protected aFj:Landroid/widget/TextView;

.field protected ahP:Landroid/widget/ImageView;

.field protected bgq:Landroid/widget/TextView;

.field protected blQ:Landroid/widget/ImageView;

.field protected blR:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/bez;-><init>()V

    return-void
.end method


# virtual methods
.method protected ZE()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->mView:Landroid/view/View;

    const v1, 0x7f0f0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfa;->ahP:Landroid/widget/ImageView;

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->mView:Landroid/view/View;

    const v1, 0x7f0f00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfa;->aFj:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->mView:Landroid/view/View;

    const v1, 0x7f0f0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfa;->bgq:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->mView:Landroid/view/View;

    const v1, 0x7f0f0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfa;->blQ:Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->mView:Landroid/view/View;

    const v1, 0x7f0f0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfa;->blR:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method protected b(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->iconUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->iconUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/bfa$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bfa$1;-><init>(Lcom/kingroot/kinguser/bfa;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected c(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->aFj:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->mainTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    return-void
.end method

.method protected d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->bgq:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->softTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected e(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmJ:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->blQ:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->blQ:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected r(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iput-object p1, p0, Lcom/kingroot/kinguser/bfa;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfa;->b(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfa;->c(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfa;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    goto :goto_0
.end method

.method protected s(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iput-object p1, p0, Lcom/kingroot/kinguser/bfa;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bfa;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfa;->e(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;)V

    goto :goto_0
.end method
