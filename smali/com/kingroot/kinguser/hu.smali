.class public Lcom/kingroot/kinguser/hu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;IIIII)Lcom/king/uranus/j;
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/king/uranus/h;

    invoke-direct {v0}, Lcom/king/uranus/h;-><init>()V

    .line 66
    iput p1, v0, Lcom/king/uranus/h;->av:I

    .line 67
    iput p5, v0, Lcom/king/uranus/h;->ax:I

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/king/uranus/j;

    invoke-direct {v0}, Lcom/king/uranus/j;-><init>()V

    .line 75
    iput-object p0, v0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    .line 76
    iput p2, v0, Lcom/king/uranus/j;->action:I

    .line 77
    iput p3, v0, Lcom/king/uranus/j;->aH:I

    .line 78
    iput p4, v0, Lcom/king/uranus/j;->aI:I

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lcom/king/uranus/j;->aJ:I

    .line 80
    iput-object v1, v0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    .line 81
    iput p5, v0, Lcom/king/uranus/j;->ax:I

    .line 82
    return-object v0
.end method

.method public static a(Ljava/lang/String;IIILjava/util/ArrayList;I)Lcom/king/uranus/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/h;",
            ">;I)",
            "Lcom/king/uranus/j;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/king/uranus/j;

    invoke-direct {v0}, Lcom/king/uranus/j;-><init>()V

    .line 37
    iput-object p0, v0, Lcom/king/uranus/j;->f:Ljava/lang/String;

    .line 38
    iput p1, v0, Lcom/king/uranus/j;->action:I

    .line 39
    iput p2, v0, Lcom/king/uranus/j;->aH:I

    .line 40
    iput p3, v0, Lcom/king/uranus/j;->aI:I

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/king/uranus/j;->aJ:I

    .line 42
    iput-object p4, v0, Lcom/king/uranus/j;->aG:Ljava/util/ArrayList;

    .line 43
    iput p5, v0, Lcom/king/uranus/j;->ax:I

    .line 44
    return-object v0
.end method

.method public static e(Lcom/king/uranus/i;)Z
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/king/uranus/i;->az:Lcom/king/uranus/D;

    iget v0, v0, Lcom/king/uranus/D;->ch:I

    .line 95
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
