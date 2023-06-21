.class public final Lcom/kingroot/kinguser/cq;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public iJ:I

.field public mv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/cq;->mv:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/cq;->iJ:I

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/cq;->mv:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cq;->mv:I

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/cq;->iJ:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cq;->iJ:I

    .line 27
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/kingroot/kinguser/cq;->mv:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/cq;->iJ:I

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/cq;->iJ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    :cond_0
    return-void
.end method
