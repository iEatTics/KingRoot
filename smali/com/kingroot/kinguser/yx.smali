.class public Lcom/kingroot/kinguser/yx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static B(II)Z
    .locals 1

    .prologue
    .line 11
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static C(II)I
    .locals 1

    .prologue
    .line 21
    or-int v0, p0, p1

    return v0
.end method

.method public static e(JJ)Z
    .locals 4

    .prologue
    .line 40
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(JJ)J
    .locals 2

    .prologue
    .line 51
    or-long v0, p0, p2

    return-wide v0
.end method
