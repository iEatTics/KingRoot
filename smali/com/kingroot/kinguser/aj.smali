.class public final Lcom/kingroot/kinguser/aj;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public bgColor:I

.field public gS:I

.field public gc:Ljava/lang/String;

.field public hq:I

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aj;->title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aj;->gc:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/aj;->type:I

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/aj;->gS:I

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/aj;->hq:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/aj;->bgColor:I

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aj;->title:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aj;->gc:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/aj;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aj;->type:I

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/aj;->gS:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aj;->gS:I

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/aj;->hq:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aj;->hq:I

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/aj;->bgColor:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aj;->bgColor:I

    .line 49
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aj;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/aj;->title:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aj;->gc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/aj;->gc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 27
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/aj;->type:I

    if-eqz v0, :cond_2

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/aj;->type:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/aj;->gS:I

    if-eqz v0, :cond_3

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/aj;->gS:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/aj;->hq:I

    if-eqz v0, :cond_4

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/aj;->hq:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 36
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/aj;->bgColor:I

    if-eqz v0, :cond_5

    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/aj;->bgColor:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 39
    :cond_5
    return-void
.end method
