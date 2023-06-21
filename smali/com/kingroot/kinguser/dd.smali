.class public final Lcom/kingroot/kinguser/dd;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static nd:Lcom/kingroot/kinguser/bp;


# instance fields
.field public clearAction:I

.field public mW:Lcom/kingroot/kinguser/bp;

.field public mZ:I

.field public na:J

.field public nb:J

.field public nc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/dd;->mZ:I

    .line 12
    iput-wide v2, p0, Lcom/kingroot/kinguser/dd;->na:J

    .line 13
    iput-wide v2, p0, Lcom/kingroot/kinguser/dd;->nb:J

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dd;->nc:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/dd;->clearAction:I

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 38
    sget-object v0, Lcom/kingroot/kinguser/dd;->nd:Lcom/kingroot/kinguser/bp;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/bp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bp;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/dd;->nd:Lcom/kingroot/kinguser/bp;

    .line 41
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/dd;->nd:Lcom/kingroot/kinguser/bp;

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bp;

    iput-object v0, p0, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/dd;->mZ:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dd;->mZ:I

    .line 43
    iget-wide v0, p0, Lcom/kingroot/kinguser/dd;->na:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/dd;->na:J

    .line 44
    iget-wide v0, p0, Lcom/kingroot/kinguser/dd;->nb:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/dd;->nb:J

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dd;->nc:Ljava/lang/String;

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/dd;->clearAction:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dd;->clearAction:I

    .line 47
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/dd;->mZ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget-wide v0, p0, Lcom/kingroot/kinguser/dd;->na:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 24
    iget-wide v0, p0, Lcom/kingroot/kinguser/dd;->na:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 26
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/dd;->nb:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 27
    iget-wide v0, p0, Lcom/kingroot/kinguser/dd;->nb:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/dd;->nc:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/dd;->nc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/dd;->clearAction:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    return-void
.end method
