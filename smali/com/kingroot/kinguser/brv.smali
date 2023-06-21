.class public Lcom/kingroot/kinguser/brv;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private bLd:Lcom/kingroot/kinguser/bru;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/bru;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/kingroot/kinguser/brv;->bLd:Lcom/kingroot/kinguser/bru;

    .line 13
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/brv;->bLd:Lcom/kingroot/kinguser/bru;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/bru;->N(Landroid/view/View;)V

    .line 28
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 29
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 18
    if-nez p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/brv;->bLd:Lcom/kingroot/kinguser/bru;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/bru;->M(Landroid/view/View;)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brv;->bLd:Lcom/kingroot/kinguser/bru;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/bru;->N(Landroid/view/View;)V

    goto :goto_0
.end method
