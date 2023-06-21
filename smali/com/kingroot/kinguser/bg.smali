.class public final Lcom/kingroot/kinguser/bg;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kb:[B

.field static kl:Lcom/kingroot/kinguser/bf;


# instance fields
.field public cmd:I

.field public data:[B

.field public flag:I

.field public jX:I

.field public jZ:I

.field public kk:Lcom/kingroot/kinguser/bf;

.field public retCode:I

.field public seqNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    .line 54
    sput-object v0, Lcom/kingroot/kinguser/bg;->kb:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 57
    new-instance v0, Lcom/kingroot/kinguser/bf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bf;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bg;->kl:Lcom/kingroot/kinguser/bf;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/bg;->cmd:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/bg;->seqNo:I

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/bg;->jX:I

    .line 13
    iput v0, p0, Lcom/kingroot/kinguser/bg;->retCode:I

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/bg;->jZ:I

    .line 15
    iput-object v1, p0, Lcom/kingroot/kinguser/bg;->data:[B

    .line 16
    iput-object v1, p0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    .line 17
    iput v0, p0, Lcom/kingroot/kinguser/bg;->flag:I

    .line 20
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/bg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bg;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bg;->cmd:I

    .line 63
    iget v0, p0, Lcom/kingroot/kinguser/bg;->seqNo:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bg;->seqNo:I

    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/bg;->jX:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bg;->jX:I

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/bg;->retCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bg;->retCode:I

    .line 66
    iget v0, p0, Lcom/kingroot/kinguser/bg;->jZ:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bg;->jZ:I

    .line 67
    sget-object v0, Lcom/kingroot/kinguser/bg;->kb:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bg;->data:[B

    .line 68
    sget-object v0, Lcom/kingroot/kinguser/bg;->kl:Lcom/kingroot/kinguser/bf;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bf;

    iput-object v0, p0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/bg;->flag:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bg;->flag:I

    .line 70
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/bg;->cmd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/bg;->seqNo:I

    if-eqz v0, :cond_0

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/bg;->seqNo:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bg;->jX:I

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/bg;->jX:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/bg;->retCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/bg;->jZ:I

    if-eqz v0, :cond_2

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/bg;->jZ:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bg;->data:[B

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bg;->data:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    if-eqz v0, :cond_4

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 44
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/bg;->flag:I

    if-eqz v0, :cond_5

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/bg;->flag:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    :cond_5
    return-void
.end method
