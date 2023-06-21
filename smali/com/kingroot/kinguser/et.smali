.class public final Lcom/kingroot/kinguser/et;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public appName:Ljava/lang/String;

.field public kO:Ljava/lang/String;

.field public kP:Ljava/lang/String;

.field public kQ:Ljava/lang/String;

.field public kR:Ljava/lang/String;

.field public kS:Ljava/lang/String;

.field public kT:Ljava/lang/String;

.field public px:I

.field public py:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/et;->px:I

    .line 25
    return-void
.end method


# virtual methods
.method public display(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    .line 52
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    .line 55
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    .line 56
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/et;->px:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/et;->px:I

    .line 58
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 42
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/et;->px:I

    if-eqz v0, :cond_3

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/et;->px:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 45
    :cond_3
    return-void
.end method
