.class public final Lcom/kingroot/kinguser/bhy;
.super Lcom/kingroot/kinguser/bhx;
.source "SourceFile"


# instance fields
.field private bsd:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bhx;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected acQ()Landroid/view/View;
    .locals 2

    .prologue
    .line 19
    const v0, 0x7f030143

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bhy;->aA(I)Landroid/view/View;

    move-result-object v1

    .line 20
    const v0, 0x7f0f0355

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bhy;->bsd:Landroid/widget/Button;

    .line 21
    return-object v1
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bhy;->bsd:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/bhy;->bsd:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_0
    return-void
.end method
