.class public final Lcom/kingroot/kinguser/cr;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public mw:I

.field public mx:I

.field public pluginId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/cr;->mw:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/cr;->pluginId:I

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/cr;->mx:I

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/cr;->mw:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cr;->mw:I

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/cr;->pluginId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cr;->pluginId:I

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/cr;->mx:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cr;->mx:I

    .line 34
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/cr;->mw:I

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/cr;->mw:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/cr;->pluginId:I

    if-eqz v0, :cond_1

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/cr;->pluginId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/cr;->mx:I

    if-eqz v0, :cond_2

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/cr;->mx:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_2
    return-void
.end method
