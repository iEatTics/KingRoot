.class public final Lcom/kingroot/kinguser/byk;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bUw:Lcom/kingroot/kinguser/byn;


# instance fields
.field public bUt:Ljava/lang/String;

.field public bUu:Ljava/lang/String;

.field public bUv:Lcom/kingroot/kinguser/byn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byk;->bUt:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byk;->bUu:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/byk;->bUv:Lcom/kingroot/kinguser/byn;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byk;->bUt:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byk;->bUu:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/kingroot/kinguser/byk;->bUw:Lcom/kingroot/kinguser/byn;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/kingroot/kinguser/byn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byn;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byk;->bUw:Lcom/kingroot/kinguser/byn;

    .line 35
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/byk;->bUw:Lcom/kingroot/kinguser/byn;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byn;

    iput-object v0, p0, Lcom/kingroot/kinguser/byk;->bUv:Lcom/kingroot/kinguser/byn;

    .line 36
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/byk;->bUt:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/byk;->bUu:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/byk;->bUu:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/byk;->bUv:Lcom/kingroot/kinguser/byn;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/byk;->bUv:Lcom/kingroot/kinguser/byn;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 25
    :cond_1
    return-void
.end method
