.class public Lcom/kingroot/kinguser/cba;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJIII)Lcom/kingroot/kinguser/v;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/kingroot/kinguser/v;

    invoke-direct {v0}, Lcom/kingroot/kinguser/v;-><init>()V

    .line 54
    iput-wide p0, v0, Lcom/kingroot/kinguser/v;->gt:J

    .line 55
    iput-wide p2, v0, Lcom/kingroot/kinguser/v;->gu:J

    .line 56
    iput p4, v0, Lcom/kingroot/kinguser/v;->conchSeqno:I

    .line 57
    iput p5, v0, Lcom/kingroot/kinguser/v;->gh:I

    .line 58
    iput p6, v0, Lcom/kingroot/kinguser/v;->gv:I

    .line 59
    return-object v0
.end method

.method public static a(JJIIIIII)Lcom/kingroot/kinguser/w;
    .locals 6

    .prologue
    .line 29
    new-instance v0, Lcom/kingroot/kinguser/w;

    invoke-direct {v0}, Lcom/kingroot/kinguser/w;-><init>()V

    .line 30
    iput-wide p0, v0, Lcom/kingroot/kinguser/w;->gt:J

    .line 31
    iput-wide p2, v0, Lcom/kingroot/kinguser/w;->gu:J

    .line 32
    iput p4, v0, Lcom/kingroot/kinguser/w;->action:I

    .line 33
    iput p5, v0, Lcom/kingroot/kinguser/w;->conchSeqno:I

    .line 34
    iput p6, v0, Lcom/kingroot/kinguser/w;->gh:I

    .line 35
    iput p7, v0, Lcom/kingroot/kinguser/w;->gw:I

    .line 36
    iput p8, v0, Lcom/kingroot/kinguser/w;->gx:I

    .line 37
    iput p9, v0, Lcom/kingroot/kinguser/w;->gv:I

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lcom/kingroot/kinguser/w;->fY:I

    .line 39
    return-object v0
.end method
