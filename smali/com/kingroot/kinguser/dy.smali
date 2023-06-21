.class public final Lcom/kingroot/kinguser/dy;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public id:I

.field public level:I

.field public pkgName:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/dy;->id:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/dy;->version:I

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/dy;->level:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dy;->pkgName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/dy;->id:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dy;->id:I

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/dy;->version:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dy;->version:I

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/dy;->level:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dy;->level:I

    .line 32
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dy;->pkgName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/dy;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/dy;->version:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/dy;->level:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/dy;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/dy;->pkgName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 25
    :cond_0
    return-void
.end method
