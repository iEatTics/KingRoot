.class public final Lcom/kingroot/kinguser/dl;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


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

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/dl;->fY:I

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/dl;->fZ:Z

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/dl;->ga:I

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/dl;->gb:I

    .line 20
    return-void
.end method


# virtual methods
.method public display(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/dl;->fY:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dl;->fY:I

    .line 37
    iget-boolean v0, p0, Lcom/kingroot/kinguser/dl;->fZ:Z

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/dl;->fZ:Z

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/dl;->ga:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dl;->ga:I

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/dl;->gb:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dl;->gb:I

    .line 40
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/dl;->fY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    iget-boolean v0, p0, Lcom/kingroot/kinguser/dl;->fZ:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/dl;->ga:I

    if-eqz v0, :cond_0

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/dl;->ga:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/dl;->gb:I

    if-eqz v0, :cond_1

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/dl;->gb:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    :cond_1
    return-void
.end method
