.class public final Lcom/kingroot/kinguser/adk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(JJJ)Z
    .locals 2

    .prologue
    .line 316
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-lez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(JJ)Z
    .locals 6

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    return v0
.end method
