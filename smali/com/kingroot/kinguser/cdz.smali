.class public Lcom/kingroot/kinguser/cdz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static akP()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public static akQ()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static akR()I
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/cdz;->akP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/cdz;->akQ()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
