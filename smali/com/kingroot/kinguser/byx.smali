.class public Lcom/kingroot/kinguser/byx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static d(IZI)I
    .locals 1

    .prologue
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    .line 14
    :goto_0
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    shl-int/2addr v0, p2

    or-int/2addr v0, p0

    goto :goto_0
.end method
