.class public abstract Lcom/kingroot/kinguser/bcf;
.super Lcom/kingroot/kinguser/py;
.source "SourceFile"


# instance fields
.field protected bgh:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/py;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract Xl()Ljava/lang/String;
.end method

.method protected abstract Xm()Landroid/view/View;
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bcf;->bgh:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bcf;->bgh:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected gy()Landroid/view/View;
    .locals 3

    .prologue
    .line 22
    const v0, 0x7f030118

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bcf;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcf;->Xm()Landroid/view/View;

    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    const v0, 0x7f0f02fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    :cond_0
    const v0, 0x7f0f02fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcf;->bgh:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bcf;->bgh:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcf;->Xl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object v1
.end method
