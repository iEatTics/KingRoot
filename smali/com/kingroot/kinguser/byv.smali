.class public final Lcom/kingroot/kinguser/byv;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public bUW:I

.field public bUX:F

.field public bUY:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/byv;->bUW:I

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/byv;->x:F

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/byv;->y:F

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/byv;->bUX:F

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/byv;->bUY:F

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUW:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byv;->bUW:I

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/byv;->x:F

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byv;->x:F

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/byv;->y:F

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byv;->y:F

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUX:F

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byv;->bUX:F

    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUY:F

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byv;->bUY:F

    .line 38
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUW:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/byv;->x:F

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/byv;->y:F

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUX:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUX:F

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 26
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/byv;->bUY:F

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 29
    :cond_1
    return-void
.end method
