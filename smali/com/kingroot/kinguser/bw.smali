.class public final Lcom/kingroot/kinguser/bw;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kb:[B


# instance fields
.field public checksum:Ljava/lang/String;

.field public data:[B

.field public filename:Ljava/lang/String;

.field public ll:I

.field public lm:Ljava/lang/String;

.field public ln:I

.field public size:I

.field public timestamp:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->filename:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->checksum:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/bw;->timestamp:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->url:Ljava/lang/String;

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/bw;->ll:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->lm:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->data:[B

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/bw;->ln:I

    .line 18
    iput v1, p0, Lcom/kingroot/kinguser/bw;->size:I

    .line 21
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->filename:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->checksum:Ljava/lang/String;

    .line 50
    iget v0, p0, Lcom/kingroot/kinguser/bw;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bw;->timestamp:I

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->url:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/bw;->ll:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bw;->ll:I

    .line 53
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->lm:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/bw;->kb:[B

    if-nez v0, :cond_0

    .line 55
    new-array v0, v3, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/bw;->kb:[B

    .line 57
    sget-object v0, Lcom/kingroot/kinguser/bw;->kb:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 59
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bw;->kb:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bw;->data:[B

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/bw;->ln:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bw;->ln:I

    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/bw;->size:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bw;->size:I

    .line 62
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->checksum:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/bw;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->url:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/bw;->ll:I

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/bw;->ll:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->lm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->lm:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->data:[B

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bw;->data:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 37
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/bw;->ln:I

    if-eqz v0, :cond_3

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/bw;->ln:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/bw;->size:I

    if-eqz v0, :cond_4

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/bw;->size:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    :cond_4
    return-void
.end method
