.class public final Lcom/kingroot/kinguser/bsx;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public bJE:I

.field public bMu:I

.field public bMv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/bsx;->bMu:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/bsx;->bMv:I

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/bsx;->bJE:I

    .line 15
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bsx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsx;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bMu:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsx;->bMu:I

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bMv:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsx;->bMv:I

    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bJE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsx;->bJE:I

    .line 38
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bMu:I

    if-eqz v0, :cond_0

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bMu:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bMv:I

    if-eqz v0, :cond_1

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bMv:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bJE:I

    if-eqz v0, :cond_2

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/bsx;->bJE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    :cond_2
    return-void
.end method
