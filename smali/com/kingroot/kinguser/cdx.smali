.class public Lcom/kingroot/kinguser/cdx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static p(IJ)J
    .locals 3

    .prologue
    .line 23
    if-gez p0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "thread pool sub-ident is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "thread pool parent-ident is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    int-to-long v0, p0

    add-long/2addr v0, p1

    .line 33
    return-wide v0
.end method
