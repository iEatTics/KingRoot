.class public final Lcom/kingroot/kinguser/ee;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public oF:J

.field public oG:I

.field public oH:I

.field public pluginId:I

.field public tipsWording:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/ee;->pluginId:I

    .line 11
    iput v2, p0, Lcom/kingroot/kinguser/ee;->versionCode:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ee;->oF:J

    .line 13
    iput v2, p0, Lcom/kingroot/kinguser/ee;->oG:I

    .line 14
    iput v2, p0, Lcom/kingroot/kinguser/ee;->oH:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ee;->tipsWording:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/ee;->pluginId:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ee;->pluginId:I

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/ee;->versionCode:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ee;->versionCode:I

    .line 35
    iget-wide v0, p0, Lcom/kingroot/kinguser/ee;->oF:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ee;->oF:J

    .line 36
    iget v0, p0, Lcom/kingroot/kinguser/ee;->oG:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ee;->oG:I

    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/ee;->oH:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ee;->oH:I

    .line 38
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ee;->tipsWording:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/ee;->pluginId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/ee;->versionCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget-wide v0, p0, Lcom/kingroot/kinguser/ee;->oF:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/ee;->oG:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/ee;->oH:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/ee;->tipsWording:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/ee;->tipsWording:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_0
    return-void
.end method
