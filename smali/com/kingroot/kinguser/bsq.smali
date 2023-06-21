.class public final Lcom/kingroot/kinguser/bsq;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bMa:[B


# instance fields
.field public bJp:I

.field public bLZ:I

.field public bLn:[B

.field public bLo:J

.field public gw:I

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/kingroot/kinguser/bsq;->bMa:[B

    .line 50
    sget-object v0, Lcom/kingroot/kinguser/bsq;->bMa:[B

    aput-byte v1, v0, v1

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/bsq;->gw:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsq;->bLn:[B

    .line 12
    iput v2, p0, Lcom/kingroot/kinguser/bsq;->bJp:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bsq;->bLo:J

    .line 14
    iput v2, p0, Lcom/kingroot/kinguser/bsq;->status:I

    .line 15
    iput v2, p0, Lcom/kingroot/kinguser/bsq;->bLZ:I

    .line 18
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/bsq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsq;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->gw:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsq;->gw:I

    .line 56
    sget-object v0, Lcom/kingroot/kinguser/bsq;->bMa:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsq;->bLn:[B

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->bJp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsq;->bJp:I

    .line 58
    iget-wide v0, p0, Lcom/kingroot/kinguser/bsq;->bLo:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bsq;->bLo:J

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->status:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsq;->status:I

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->bLZ:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsq;->bLZ:I

    .line 61
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->gw:I

    if-eqz v0, :cond_0

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->gw:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bsq;->bLn:[B

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bsq;->bLn:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 31
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->bJp:I

    if-eqz v0, :cond_2

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->bJp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/bsq;->bLo:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 35
    iget-wide v0, p0, Lcom/kingroot/kinguser/bsq;->bLo:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 37
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->status:I

    if-eqz v0, :cond_4

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->status:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->bLZ:I

    if-eqz v0, :cond_5

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/bsq;->bLZ:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    :cond_5
    return-void
.end method
