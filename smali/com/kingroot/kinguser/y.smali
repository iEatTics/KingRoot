.class public final Lcom/kingroot/kinguser/y;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public gA:Z

.field public gB:Z

.field public gC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/kingroot/kinguser/y;->gA:Z

    .line 11
    iput-boolean v0, p0, Lcom/kingroot/kinguser/y;->gB:Z

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/y;->gC:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-boolean v0, p0, Lcom/kingroot/kinguser/y;->gA:Z

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/y;->gA:Z

    .line 32
    iget-boolean v0, p0, Lcom/kingroot/kinguser/y;->gB:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/y;->gB:Z

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/y;->gC:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 18
    iget-boolean v0, p0, Lcom/kingroot/kinguser/y;->gA:Z

    if-eq v0, v2, :cond_0

    .line 19
    iget-boolean v0, p0, Lcom/kingroot/kinguser/y;->gA:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/y;->gB:Z

    if-eq v0, v2, :cond_1

    .line 22
    iget-boolean v0, p0, Lcom/kingroot/kinguser/y;->gB:Z

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/y;->gC:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/y;->gC:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 27
    :cond_2
    return-void
.end method
