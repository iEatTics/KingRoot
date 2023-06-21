.class public final Lcom/kingroot/kinguser/lk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kingroot/kinguser/ha;)S
    .locals 4

    .prologue
    const/16 v0, 0x7fff

    .line 38
    invoke-interface {p0}, Lcom/kingroot/kinguser/ha;->aM()I

    move-result v1

    .line 39
    invoke-interface {p0}, Lcom/kingroot/kinguser/ha;->aN()I

    move-result v2

    .line 42
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 43
    invoke-static {v2}, Lcom/kingroot/kinguser/lk;->ah(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    int-to-short v0, v2

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/lk;->ag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/kingroot/kinguser/lk;->ag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    shl-int/lit8 v0, v1, 0x8

    add-int/2addr v0, v2

    int-to-short v0, v0

    goto :goto_0
.end method

.method private static ag(I)Z
    .locals 1

    .prologue
    .line 59
    if-ltz p0, :cond_0

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ah(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {p0}, Lcom/kingroot/kinguser/lk;->ag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    int-to-short v1, p0

    .line 66
    if-ltz v1, :cond_0

    const/16 v2, 0xbb8

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method public static c(II)I
    .locals 2

    .prologue
    .line 24
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    const v1, 0xffff

    and-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method
