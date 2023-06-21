.class public final Lcom/kingroot/kinguser/bj;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kv:Lcom/kingroot/kinguser/cq;


# instance fields
.field public ko:Ljava/lang/String;

.field public kp:Ljava/lang/String;

.field public ks:Ljava/lang/String;

.field public kt:Ljava/lang/String;

.field public ku:Lcom/kingroot/kinguser/cq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->ko:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->kp:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->ks:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->kt:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->ku:Lcom/kingroot/kinguser/cq;

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->ko:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->kp:Ljava/lang/String;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->ks:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->kt:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/kingroot/kinguser/bj;->kv:Lcom/kingroot/kinguser/cq;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/cq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bj;->kv:Lcom/kingroot/kinguser/cq;

    .line 47
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bj;->kv:Lcom/kingroot/kinguser/cq;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cq;

    iput-object v0, p0, Lcom/kingroot/kinguser/bj;->ku:Lcom/kingroot/kinguser/cq;

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->ko:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->ko:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->kp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->kp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->ks:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->ks:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->kt:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->kt:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->ku:Lcom/kingroot/kinguser/cq;

    if-eqz v0, :cond_4

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/bj;->ku:Lcom/kingroot/kinguser/cq;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 35
    :cond_4
    return-void
.end method
