.class public Lcom/kingroot/kinguser/bgw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bpi:Landroid/app/Service;


# virtual methods
.method public abZ()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bgw;->bpi:Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 43
    return-void
.end method
