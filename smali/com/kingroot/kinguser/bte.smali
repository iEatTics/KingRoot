.class public Lcom/kingroot/kinguser/bte;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brj;J)V
    .locals 6

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Lcom/kingroot/kinguser/bsr;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bsr;-><init>()V

    .line 62
    iget v2, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    iput v2, v1, Lcom/kingroot/kinguser/bsr;->bJL:I

    .line 63
    iget v2, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    iput v2, v1, Lcom/kingroot/kinguser/bsr;->bJp:I

    .line 64
    iget-object v2, p0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    iput-object v2, v1, Lcom/kingroot/kinguser/bsr;->bMb:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/kingroot/kinguser/bsu;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bsu;-><init>()V

    .line 67
    iput-object v0, v1, Lcom/kingroot/kinguser/bsu;->bMn:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/kingroot/kinguser/bsu;->bMo:Z

    .line 69
    new-instance v2, Lcom/kingroot/kinguser/bta;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bta;-><init>()V

    .line 70
    const/16 v0, 0xfa4

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bte;->b(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/brj;J)V

    .line 71
    return-void
.end method

.method public static a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/brj;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsq;",
            ">;",
            "Lcom/kingroot/kinguser/brj;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Lcom/kingroot/kinguser/bst;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bst;-><init>()V

    .line 89
    iput-object p0, v1, Lcom/kingroot/kinguser/bst;->bMl:Ljava/util/ArrayList;

    .line 90
    new-instance v2, Lcom/kingroot/kinguser/bsz;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bsz;-><init>()V

    .line 91
    const/16 v0, 0xfa3

    const-wide/16 v4, -0x1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bte;->b(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/brj;J)V

    .line 92
    return-void
.end method

.method public static b(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/brj;J)V
    .locals 8

    .prologue
    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bre;->ahz()Lcom/kingroot/kinguser/bri;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 29
    invoke-interface/range {v1 .. v7}, Lcom/kingroot/kinguser/bri;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/brj;J)V

    .line 30
    return-void
.end method
