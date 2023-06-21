.class public final Lcom/kingroot/kinguser/bym;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public bUA:J

.field public bUB:J

.field public bUz:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bym;->bUz:I

    .line 11
    iput-wide v2, p0, Lcom/kingroot/kinguser/bym;->bUA:J

    .line 12
    iput-wide v2, p0, Lcom/kingroot/kinguser/bym;->bUB:J

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/bym;->bUz:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bym;->bUz:I

    .line 30
    iget-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUA:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUA:J

    .line 31
    iget-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUB:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUB:J

    .line 32
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/bym;->bUz:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 19
    iget-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUA:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 20
    iget-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUA:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUB:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 23
    iget-wide v0, p0, Lcom/kingroot/kinguser/bym;->bUB:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 25
    :cond_1
    return-void
.end method
