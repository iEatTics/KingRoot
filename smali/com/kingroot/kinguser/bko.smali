.class public Lcom/kingroot/kinguser/bko;
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
