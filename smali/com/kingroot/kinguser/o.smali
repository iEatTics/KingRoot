.class public final Lcom/kingroot/kinguser/o;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public fY:I

.field public fZ:Z

.field public ga:I

.field public gb:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/o;->fY:I

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/o;->fZ:Z

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/o;->ga:I

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/o;->gb:I

    .line 16
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/o;->fY:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/o;->fY:I

    .line 32
    iget-boolean v0, p0, Lcom/kingroot/kinguser/o;->fZ:Z

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/o;->fZ:Z

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/o;->ga:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/o;->ga:I

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/o;->gb:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/o;->gb:I

    .line 35
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/o;->fY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget-boolean v0, p0, Lcom/kingroot/kinguser/o;->fZ:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/o;->ga:I

    if-eqz v0, :cond_0

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/o;->ga:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/o;->gb:I

    if-eqz v0, :cond_1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/o;->gb:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_1
    return-void
.end method
