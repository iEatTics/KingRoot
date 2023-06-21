.class public Lcom/kingroot/kinguser/bcj;
.super Lcom/kingroot/kinguser/py;
.source "SourceFile"


# instance fields
.field private bgk:Landroid/widget/Button;

.field private bgl:Landroid/widget/Button;

.field private bgx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/py;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public Xp()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/bcj;->bgk:Landroid/widget/Button;

    return-object v0
.end method

.method public Xq()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bcj;->bgl:Landroid/widget/Button;

    return-object v0
.end method

.method public Xr()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bcj;->bgx:Landroid/widget/TextView;

    return-object v0
.end method

.method protected gy()Landroid/view/View;
    .locals 2

    .prologue
    .line 27
    const v0, 0x7f030121

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcj;->aA(I)Landroid/view/View;

    move-result-object v1

    .line 28
    const v0, 0x7f0f0177

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcj;->bgk:Landroid/widget/Button;

    .line 29
    const v0, 0x7f0f0178

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcj;->bgx:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0f020f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bcj;->bgl:Landroid/widget/Button;

    .line 32
    return-object v1
.end method
