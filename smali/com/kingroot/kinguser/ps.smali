.class public Lcom/kingroot/kinguser/ps;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ah;Lcom/kingroot/kinguser/cbe;)Lcom/kingroot/kinguser/w;
    .locals 10

    .prologue
    .line 23
    move-object/from16 v1, p6

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/kingroot/kinguser/cbe;->a(JJLcom/kingroot/kinguser/u;)I

    move-result v9

    .line 24
    const/4 v4, 0x0

    iget v5, p4, Lcom/kingroot/kinguser/u;->conchSeqno:I

    iget v6, p4, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v9}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v0

    return-object v0
.end method
