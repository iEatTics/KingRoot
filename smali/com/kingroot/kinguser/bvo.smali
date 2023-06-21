.class public Lcom/kingroot/kinguser/bvo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final kG(I)I
    .locals 1

    .prologue
    .line 34
    rem-int/lit8 v0, p0, 0x64

    return v0
.end method

.method public static final kH(I)I
    .locals 2

    .prologue
    .line 43
    rem-int/lit16 v0, p0, 0x2710

    invoke-static {p0}, Lcom/kingroot/kinguser/bvo;->kG(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final kI(I)I
    .locals 2

    .prologue
    .line 52
    const v0, 0xf4240

    rem-int v0, p0, v0

    invoke-static {p0}, Lcom/kingroot/kinguser/bvo;->kH(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Lcom/kingroot/kinguser/bvo;->kG(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
