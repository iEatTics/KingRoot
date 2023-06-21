.class public Lcom/kingroot/kinguser/bfl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/os/Handler;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bfl$2;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/kingroot/kinguser/bfl$2;-><init>(Landroid/os/Handler;Landroid/content/Context;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 58
    return-void
.end method

.method public static a(Landroid/os/Handler;ILandroid/view/View;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bfl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/bfl$1;-><init>(Landroid/os/Handler;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 36
    return-void
.end method
