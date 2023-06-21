.class public final Lcom/kingroot/kinguser/ab;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public gH:I

.field public gI:I

.field public gJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 8
    iput v0, p0, Lcom/kingroot/kinguser/ab;->gH:I

    .line 9
    iput v0, p0, Lcom/kingroot/kinguser/ab;->gI:I

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ab;->gJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/ab;->gH:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ab;->gH:I

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/ab;->gI:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ab;->gI:I

    .line 28
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ab;->gJ:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 14
    iget v0, p0, Lcom/kingroot/kinguser/ab;->gH:I

    if-eqz v0, :cond_0

    .line 15
    iget v0, p0, Lcom/kingroot/kinguser/ab;->gH:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 17
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ab;->gI:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/ab;->gJ:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/ab;->gJ:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 22
    :cond_1
    return-void
.end method
