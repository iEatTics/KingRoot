.class public final Lcom/kingroot/kinguser/ad;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public content:Ljava/lang/String;

.field public gM:Ljava/lang/String;

.field public gN:I

.field public gO:Ljava/lang/String;

.field public gP:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->gM:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/ad;->type:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->content:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/ad;->gN:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->gP:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->gM:Ljava/lang/String;

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/ad;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad;->type:I

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->content:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/ad;->gN:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ad;->gN:I

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/ad;->gM:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/ad;->gM:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ad;->type:I

    if-eqz v0, :cond_1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/ad;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ad;->content:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/ad;->content:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 30
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ad;->gN:I

    if-eqz v0, :cond_3

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/ad;->gN:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/ad;->gO:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_4
    return-void
.end method
