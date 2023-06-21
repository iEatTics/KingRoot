.class public Lcom/kingroot/kinguser/ceh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJI)Z
    .locals 6

    .prologue
    .line 444
    sub-long v0, p0, p2

    const-wide/16 v2, 0x1

    int-to-long v4, p4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
