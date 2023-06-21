.class public final Lcom/kingroot/kinguser/bu;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public checksum:Ljava/lang/String;

.field public filename:Ljava/lang/String;

.field public lh:I

.field public li:I

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
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bu;->filename:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bu;->checksum:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/bu;->timestamp:I

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/bu;->lh:I

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/bu;->li:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/bu;->version:I

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bu;->filename:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bu;->checksum:Ljava/lang/String;

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/bu;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bu;->timestamp:I

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/bu;->lh:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bu;->lh:I

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/bu;->li:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bu;->li:I

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/bu;->version:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bu;->version:I

    .line 43
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bu;->filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bu;->checksum:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/bu;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/bu;->lh:I

    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/bu;->lh:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bu;->li:I

    if-eqz v0, :cond_1

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/bu;->li:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/bu;->version:I

    if-eqz v0, :cond_2

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/bu;->version:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_2
    return-void
.end method
