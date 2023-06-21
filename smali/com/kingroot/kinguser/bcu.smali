.class public Lcom/kingroot/kinguser/bcu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static Yk()J
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/kingroot/kinguser/bcu;->Yl()V

    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/bcu;->Ym()J

    move-result-wide v0

    return-wide v0
.end method

.method private static Yl()V
    .locals 6

    .prologue
    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fg()J

    move-result-wide v2

    .line 26
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28
    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bv(J)V

    .line 30
    :cond_0
    return-void
.end method

.method private static Ym()J
    .locals 8

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->Fg()J

    move-result-wide v2

    .line 37
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->Fh()J

    move-result-wide v6

    .line 39
    add-long/2addr v6, v2

    cmp-long v5, v0, v6

    if-ltz v5, :cond_0

    .line 40
    invoke-virtual {v4, v0, v1}, Lcom/kingroot/kinguser/aks;->bv(J)V

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/bcu;->Yn()J

    move-result-wide v2

    .line 42
    invoke-virtual {v4, v2, v3}, Lcom/kingroot/kinguser/aks;->bw(J)V

    .line 45
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private static Yn()J
    .locals 4

    .prologue
    .line 50
    const/16 v0, 0x78

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bcu;->ag(II)I

    move-result v0

    int-to-long v0, v0

    .line 51
    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    .line 52
    return-wide v0
.end method

.method private static ag(II)I
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 57
    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 58
    return v0
.end method
