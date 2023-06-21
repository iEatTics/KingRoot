.class public final Lcom/kingroot/kinguser/dw;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public nS:J

.field public nT:I

.field public pluginId:I

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/dw;->pluginId:I

    .line 11
    iput v2, p0, Lcom/kingroot/kinguser/dw;->versionCode:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/dw;->nS:J

    .line 13
    iput v2, p0, Lcom/kingroot/kinguser/dw;->nT:I

    .line 16
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/dw;->pluginId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dw;->pluginId:I

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/dw;->versionCode:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dw;->versionCode:I

    .line 29
    iget-wide v0, p0, Lcom/kingroot/kinguser/dw;->nS:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/dw;->nS:J

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/dw;->nT:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dw;->nT:I

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/dw;->pluginId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/dw;->versionCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    iget-wide v0, p0, Lcom/kingroot/kinguser/dw;->nS:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/dw;->nT:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    return-void
.end method
