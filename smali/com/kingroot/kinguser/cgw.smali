.class public Lcom/kingroot/kinguser/cgw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static nY(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 19
    if-nez p0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :cond_3
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_4
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v0, 0x2

    goto :goto_0
.end method
