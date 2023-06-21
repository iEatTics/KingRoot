.class public final Lcom/kingroot/kinguser/as;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static iD:[B


# instance fields
.field public iC:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [B

    check-cast v0, [B

    .line 29
    sput-object v0, Lcom/kingroot/kinguser/as;->iD:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/as;->iC:[B

    .line 13
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/as;

    invoke-direct {v0}, Lcom/kingroot/kinguser/as;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/as;->iD:[B

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/as;->iC:[B

    .line 36
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/as;->iC:[B

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/as;->iC:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 23
    :cond_0
    return-void
.end method
