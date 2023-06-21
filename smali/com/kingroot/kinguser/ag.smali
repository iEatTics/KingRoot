.class public final Lcom/kingroot/kinguser/ag;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public gS:I

.field public gc:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ag;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ag;->gc:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/ag;->type:I

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/ag;->gS:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ag;->url:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ag;->title:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ag;->gc:Ljava/lang/String;

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/ag;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ag;->type:I

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/ag;->gS:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ag;->gS:I

    .line 43
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ag;->url:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/ag;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/ag;->title:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ag;->gc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/ag;->gc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 26
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/ag;->type:I

    if-eqz v0, :cond_2

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/ag;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ag;->gS:I

    if-eqz v0, :cond_3

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/ag;->gS:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ag;->url:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/ag;->url:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 35
    :cond_4
    return-void
.end method
