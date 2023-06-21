.class public final Lcom/kingroot/kinguser/az;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kb:[B

.field static kc:Lcom/kingroot/kinguser/ay;


# instance fields
.field public cmd:I

.field public data:[B

.field public flag:I

.field public jX:I

.field public jY:J

.field public jZ:I

.field public ka:Lcom/kingroot/kinguser/ay;

.field public retCode:I

.field public seqNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    .line 60
    sput-object v0, Lcom/kingroot/kinguser/az;->kb:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/ay;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ay;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/az;->kc:Lcom/kingroot/kinguser/ay;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/az;->cmd:I

    .line 11
    iput v2, p0, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 12
    iput v2, p0, Lcom/kingroot/kinguser/az;->jX:I

    .line 13
    iput-object v3, p0, Lcom/kingroot/kinguser/az;->data:[B

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/az;->jY:J

    .line 15
    iput v2, p0, Lcom/kingroot/kinguser/az;->retCode:I

    .line 16
    iput v2, p0, Lcom/kingroot/kinguser/az;->jZ:I

    .line 17
    iput-object v3, p0, Lcom/kingroot/kinguser/az;->ka:Lcom/kingroot/kinguser/ay;

    .line 18
    iput v2, p0, Lcom/kingroot/kinguser/az;->flag:I

    .line 21
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/kingroot/kinguser/az;

    invoke-direct {v0}, Lcom/kingroot/kinguser/az;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/az;->cmd:I

    .line 69
    iget v0, p0, Lcom/kingroot/kinguser/az;->seqNo:I

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 70
    iget v0, p0, Lcom/kingroot/kinguser/az;->jX:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/az;->jX:I

    .line 71
    sget-object v0, Lcom/kingroot/kinguser/az;->kb:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/az;->data:[B

    .line 72
    iget-wide v0, p0, Lcom/kingroot/kinguser/az;->jY:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/az;->jY:J

    .line 73
    iget v0, p0, Lcom/kingroot/kinguser/az;->retCode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/az;->retCode:I

    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/az;->jZ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/az;->jZ:I

    .line 75
    sget-object v0, Lcom/kingroot/kinguser/az;->kc:Lcom/kingroot/kinguser/ay;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ay;

    iput-object v0, p0, Lcom/kingroot/kinguser/az;->ka:Lcom/kingroot/kinguser/ay;

    .line 76
    iget v0, p0, Lcom/kingroot/kinguser/az;->flag:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/az;->flag:I

    .line 77
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/az;->cmd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/az;->seqNo:I

    if-eqz v0, :cond_0

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/az;->seqNo:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/az;->jX:I

    if-eqz v0, :cond_1

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/az;->jX:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/az;->data:[B

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/az;->data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 38
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/az;->jY:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 39
    iget-wide v0, p0, Lcom/kingroot/kinguser/az;->jY:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 41
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/az;->retCode:I

    if-eqz v0, :cond_4

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/az;->retCode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 44
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/az;->jZ:I

    if-eqz v0, :cond_5

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/az;->jZ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/az;->ka:Lcom/kingroot/kinguser/ay;

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/az;->ka:Lcom/kingroot/kinguser/ay;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 50
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/az;->flag:I

    if-eqz v0, :cond_7

    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/az;->flag:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 53
    :cond_7
    return-void
.end method
