.class public final Lcom/kingroot/kinguser/v;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public conchSeqno:I

.field public gh:I

.field public gt:J

.field public gu:J

.field public gv:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/kingroot/kinguser/v;->gt:J

    .line 11
    iput-wide v2, p0, Lcom/kingroot/kinguser/v;->gu:J

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/v;->conchSeqno:I

    .line 13
    iput v0, p0, Lcom/kingroot/kinguser/v;->gh:I

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/v;->gv:I

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-wide v0, p0, Lcom/kingroot/kinguser/v;->gt:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/v;->gt:J

    .line 38
    iget-wide v0, p0, Lcom/kingroot/kinguser/v;->gu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/v;->gu:J

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/v;->conchSeqno:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/v;->conchSeqno:I

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/v;->gh:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/v;->gh:I

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/v;->gv:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/v;->gv:I

    .line 42
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 20
    iget-wide v0, p0, Lcom/kingroot/kinguser/v;->gt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 21
    iget-wide v0, p0, Lcom/kingroot/kinguser/v;->gt:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/v;->gu:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 24
    iget-wide v0, p0, Lcom/kingroot/kinguser/v;->gu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 26
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/v;->conchSeqno:I

    if-eqz v0, :cond_2

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/v;->conchSeqno:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/v;->gh:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/v;->gv:I

    if-eqz v0, :cond_3

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/v;->gv:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_3
    return-void
.end method
