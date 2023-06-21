.class public Lcom/kingroot/kinguser/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/gq;->aE()Lcom/kingroot/kinguser/gq;

    move-result-object v0

    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, v1, p0}, Lcom/kingroot/kinguser/gq;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
