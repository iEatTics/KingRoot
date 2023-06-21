.class public final Lcom/kingroot/kinguser/u;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static gq:[B

.field static gr:Lcom/kingroot/kinguser/ai;

.field static gs:Lcom/kingroot/kinguser/aj;


# instance fields
.field public conchSeqno:I

.field public gh:I

.field public gn:[B

.field public go:Lcom/kingroot/kinguser/ai;

.field public gp:Lcom/kingroot/kinguser/aj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/u;->gh:I

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/u;->gn:[B

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    .line 13
    iput-object v0, p0, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    .line 14
    iput-object v0, p0, Lcom/kingroot/kinguser/u;->gp:Lcom/kingroot/kinguser/aj;

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/u;->gh:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/u;->gh:I

    .line 41
    sget-object v0, Lcom/kingroot/kinguser/u;->gq:[B

    if-nez v0, :cond_0

    .line 42
    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/u;->gq:[B

    .line 44
    sget-object v0, Lcom/kingroot/kinguser/u;->gq:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 46
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/u;->gq:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/u;->gn:[B

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    .line 48
    sget-object v0, Lcom/kingroot/kinguser/u;->gr:Lcom/kingroot/kinguser/ai;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/ai;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ai;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/u;->gr:Lcom/kingroot/kinguser/ai;

    .line 51
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/u;->gr:Lcom/kingroot/kinguser/ai;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai;

    iput-object v0, p0, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    .line 52
    sget-object v0, Lcom/kingroot/kinguser/u;->gs:Lcom/kingroot/kinguser/aj;

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Lcom/kingroot/kinguser/aj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aj;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/u;->gs:Lcom/kingroot/kinguser/aj;

    .line 55
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/u;->gs:Lcom/kingroot/kinguser/aj;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aj;

    iput-object v0, p0, Lcom/kingroot/kinguser/u;->gp:Lcom/kingroot/kinguser/aj;

    .line 56
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->gn:[B

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->gn:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    if-eqz v0, :cond_1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->gp:Lcom/kingroot/kinguser/aj;

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->gp:Lcom/kingroot/kinguser/aj;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 33
    :cond_3
    return-void
.end method
