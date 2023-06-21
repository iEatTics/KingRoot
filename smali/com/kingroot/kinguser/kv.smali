.class public Lcom/kingroot/kinguser/kv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v1

    const-string v2, "uranus_enabled"

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/kk;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 18
    :cond_1
    if-ne v1, v0, :cond_0

    .line 19
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Z)V
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v1

    const-string v2, "uranus_enabled"

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/kk;->a(Ljava/lang/String;I)V

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
