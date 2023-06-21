.class public final Lcom/kingroot/kinguser/f;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static ea:[B


# instance fields
.field public dX:[B

.field public dY:I

.field public dZ:I

.field public fileId:I

.field public timestamp:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/f;->fileId:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/f;->dX:[B

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/f;->timestamp:I

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/f;->dY:I

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/f;->dZ:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/f;->version:I

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/f;->fileId:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/f;->fileId:I

    .line 39
    sget-object v0, Lcom/kingroot/kinguser/f;->ea:[B

    if-nez v0, :cond_0

    .line 40
    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/f;->ea:[B

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/f;->ea:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 44
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/f;->ea:[B

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/f;->dX:[B

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/f;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/f;->timestamp:I

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/f;->dY:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/f;->dY:I

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/f;->dZ:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/f;->dZ:I

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/f;->version:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/f;->version:I

    .line 49
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/f;->fileId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/f;->dX:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/f;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/f;->dY:I

    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/f;->dY:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/f;->dZ:I

    if-eqz v0, :cond_1

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/f;->dZ:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/f;->version:I

    if-eqz v0, :cond_2

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/f;->version:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_2
    return-void
.end method
