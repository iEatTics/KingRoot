.class public final Lcom/kingroot/kinguser/w;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public action:I

.field public conchSeqno:I

.field public fY:I

.field public gh:I

.field public gt:J

.field public gu:J

.field public gv:I

.field public gw:I

.field public gx:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/kingroot/kinguser/w;->gt:J

    .line 11
    iput-wide v2, p0, Lcom/kingroot/kinguser/w;->gu:J

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/w;->action:I

    .line 13
    iput v0, p0, Lcom/kingroot/kinguser/w;->conchSeqno:I

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/w;->gh:I

    .line 15
    iput v0, p0, Lcom/kingroot/kinguser/w;->gw:I

    .line 16
    iput v0, p0, Lcom/kingroot/kinguser/w;->gv:I

    .line 17
    iput v0, p0, Lcom/kingroot/kinguser/w;->gx:I

    .line 18
    iput v0, p0, Lcom/kingroot/kinguser/w;->fY:I

    .line 21
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-wide v0, p0, Lcom/kingroot/kinguser/w;->gt:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/w;->gt:J

    .line 46
    iget-wide v0, p0, Lcom/kingroot/kinguser/w;->gu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/w;->gu:J

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/w;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->action:I

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/w;->conchSeqno:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->conchSeqno:I

    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/w;->gh:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->gh:I

    .line 50
    iget v0, p0, Lcom/kingroot/kinguser/w;->gw:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->gw:I

    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/w;->gv:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->gv:I

    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/w;->gx:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->gx:I

    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/w;->fY:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/w;->fY:I

    .line 54
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 24
    iget-wide v0, p0, Lcom/kingroot/kinguser/w;->gt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 25
    iget-wide v0, p0, Lcom/kingroot/kinguser/w;->gt:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 27
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/w;->gu:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 28
    iget-wide v0, p0, Lcom/kingroot/kinguser/w;->gu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/w;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/w;->conchSeqno:I

    if-eqz v0, :cond_2

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/w;->conchSeqno:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/w;->gh:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/w;->gw:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/w;->gv:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/w;->gx:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/w;->fY:I

    if-eqz v0, :cond_3

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/w;->fY:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 41
    :cond_3
    return-void
.end method
