.class public final Lcom/kingroot/kinguser/ax;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public jP:Ljava/lang/String;

.field public jU:I

.field public jV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ax;->jU:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ax;->jV:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ax;->jP:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/ax;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ax;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/ax;->jU:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ax;->jU:I

    .line 34
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ax;->jV:Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ax;->jP:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/ax;->jU:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/ax;->jV:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ax;->jV:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ax;->jP:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/ax;->jP:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_1
    return-void
.end method
