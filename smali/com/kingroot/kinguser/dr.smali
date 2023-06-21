.class public final Lcom/kingroot/kinguser/dr;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public nD:Ljava/lang/String;

.field public nE:Ljava/lang/String;

.field public nF:I

.field public nG:I

.field public nH:I

.field public nI:I

.field public nJ:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dr;->nD:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dr;->nE:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/dr;->nF:I

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/dr;->nG:I

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/dr;->nH:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/dr;->nI:I

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/dr;->nJ:I

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dr;->nD:Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dr;->nE:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nF:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dr;->nF:I

    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nG:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dr;->nG:I

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nH:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dr;->nH:I

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nI:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dr;->nI:I

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nJ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dr;->nJ:I

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/dr;->nD:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/dr;->nE:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nF:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nG:I

    if-eqz v0, :cond_0

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nG:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nH:I

    if-eqz v0, :cond_1

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nH:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nI:I

    if-eqz v0, :cond_2

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nI:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nJ:I

    if-eqz v0, :cond_3

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/dr;->nJ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 37
    :cond_3
    return-void
.end method
