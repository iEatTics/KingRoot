.class public final Lcom/kingroot/kinguser/c;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public dR:I

.field public dS:I

.field public dT:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/c;->dR:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/c;->lc:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/c;->dS:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/c;->dT:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/c;->version:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/c;->dR:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/c;->dR:I

    .line 41
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/c;->lc:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/c;->dS:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/c;->dS:I

    .line 43
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/c;->dT:Ljava/lang/String;

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/c;->version:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/c;->dR:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/c;->lc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/c;->lc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/c;->dS:I

    if-eqz v0, :cond_1

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/c;->dS:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/c;->dT:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/c;->dT:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/c;->version:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/c;->version:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_3
    return-void
.end method
