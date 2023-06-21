.class public Lcom/kingroot/kinguser/amg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fv(I)Z
    .locals 1

    .prologue
    .line 59
    if-eqz p0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
