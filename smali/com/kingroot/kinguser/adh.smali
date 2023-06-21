.class public Lcom/kingroot/kinguser/adh;
.super Lcom/kingroot/kinguser/adi;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/adi;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/adi;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/adh$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/adh$1;-><init>(Lcom/kingroot/kinguser/adh;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adh;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 25
    return-void
.end method
