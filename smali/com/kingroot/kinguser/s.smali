.class public final Lcom/kingroot/kinguser/s;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public gg:I

.field public gh:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/s;->gg:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/s;->gh:I

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/s;->gg:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/s;->gg:I

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/s;->gh:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/s;->gh:I

    .line 29
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/kingroot/kinguser/s;->gg:I

    if-eqz v0, :cond_0

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/s;->gg:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/s;->gh:I

    if-eqz v0, :cond_1

    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/s;->gh:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    :cond_1
    return-void
.end method
