.class public final Lcom/kingroot/kinguser/ct;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kb:[B

.field static mB:Lcom/kingroot/kinguser/cs;


# instance fields
.field public data:[B

.field public mA:Lcom/kingroot/kinguser/cs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/kingroot/kinguser/ct;->mA:Lcom/kingroot/kinguser/cs;

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/ct;->data:[B

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 25
    sget-object v0, Lcom/kingroot/kinguser/ct;->mB:Lcom/kingroot/kinguser/cs;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/kingroot/kinguser/cs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cs;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ct;->mB:Lcom/kingroot/kinguser/cs;

    .line 28
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ct;->mB:Lcom/kingroot/kinguser/cs;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cs;

    iput-object v0, p0, Lcom/kingroot/kinguser/ct;->mA:Lcom/kingroot/kinguser/cs;

    .line 29
    sget-object v0, Lcom/kingroot/kinguser/ct;->kb:[B

    if-nez v0, :cond_1

    .line 30
    new-array v0, v1, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/ct;->kb:[B

    .line 32
    sget-object v0, Lcom/kingroot/kinguser/ct;->kb:[B

    check-cast v0, [B

    aput-byte v2, v0, v2

    .line 34
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ct;->kb:[B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/ct;->data:[B

    .line 35
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/ct;->mA:Lcom/kingroot/kinguser/cs;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/ct;->data:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 19
    return-void
.end method
