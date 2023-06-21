.class public Lcom/kingroot/kinguser/bau;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static VL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://tool.m.qq.com/j/agreement?id=28"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://tool.m.qq.com/j/agreement?id=29"

    goto :goto_0
.end method
