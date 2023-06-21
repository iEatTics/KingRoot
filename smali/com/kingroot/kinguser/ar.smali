.class public final Lcom/kingroot/kinguser/ar;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static iB:[B


# instance fields
.field public cmd:I

.field public iA:[B

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    .line 35
    sput-object v0, Lcom/kingroot/kinguser/ar;->iB:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/ar;->cmd:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ar;->iA:[B

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/ar;->status:I

    .line 15
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/ar;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ar;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/ar;->cmd:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ar;->cmd:I

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/ar;->iB:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/ar;->iA:[B

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/ar;->status:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ar;->status:I

    .line 44
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/ar;->cmd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/ar;->iA:[B

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ar;->iA:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 26
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ar;->status:I

    if-eqz v0, :cond_1

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/ar;->status:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    :cond_1
    return-void
.end method
