.class public final Lcom/kingroot/kinguser/dh;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static nj:[B


# instance fields
.field public expand:[B

.field public servertime:I

.field public softupdate_tips:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/dh;->status:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/dh;->expand:[B

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/dh;->servertime:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/dh;->softupdate_tips:I

    .line 16
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/dh;->status:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dh;->status:I

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/dh;->nj:[B

    if-nez v0, :cond_0

    .line 36
    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/dh;->nj:[B

    .line 38
    sget-object v0, Lcom/kingroot/kinguser/dh;->nj:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 40
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/dh;->nj:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/dh;->expand:[B

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/dh;->servertime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dh;->servertime:I

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/dh;->softupdate_tips:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dh;->softupdate_tips:I

    .line 43
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/dh;->status:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/dh;->expand:[B

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/dh;->expand:[B

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 23
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/dh;->servertime:I

    if-eqz v0, :cond_1

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/dh;->servertime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/dh;->softupdate_tips:I

    if-eq v0, v2, :cond_2

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/dh;->softupdate_tips:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    :cond_2
    return-void
.end method
