.class public final Lcom/kingroot/kinguser/cv;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public fT:I

.field public fU:I

.field public fV:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/cv;->fT:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/cv;->fU:I

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/cv;->fV:I

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/cv;->fT:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cv;->fT:I

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/cv;->fU:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cv;->fU:I

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/cv;->fV:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cv;->fV:I

    .line 28
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/cv;->fT:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/cv;->fU:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/cv;->fV:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    return-void
.end method
