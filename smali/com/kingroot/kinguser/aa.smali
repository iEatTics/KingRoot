.class public final Lcom/kingroot/kinguser/aa;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static gG:Lcom/kingroot/kinguser/n;


# instance fields
.field public certMd5:Ljava/lang/String;

.field public gD:I

.field public gE:Lcom/kingroot/kinguser/n;

.field public gF:I

.field public pkgName:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/aa;->gD:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->url:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->gE:Lcom/kingroot/kinguser/n;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->pkgName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->certMd5:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/aa;->gF:I

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/aa;->gD:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aa;->gD:I

    .line 41
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->url:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/aa;->gG:Lcom/kingroot/kinguser/n;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/n;

    invoke-direct {v0}, Lcom/kingroot/kinguser/n;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aa;->gG:Lcom/kingroot/kinguser/n;

    .line 45
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aa;->gG:Lcom/kingroot/kinguser/n;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/n;

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->gE:Lcom/kingroot/kinguser/n;

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->pkgName:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aa;->certMd5:Ljava/lang/String;

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/aa;->gF:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aa;->gF:I

    .line 49
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/aa;->gD:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->url:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->gE:Lcom/kingroot/kinguser/n;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->gE:Lcom/kingroot/kinguser/n;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->pkgName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->certMd5:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/aa;->certMd5:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/aa;->gF:I

    if-eqz v0, :cond_3

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/aa;->gF:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 35
    :cond_3
    return-void
.end method
