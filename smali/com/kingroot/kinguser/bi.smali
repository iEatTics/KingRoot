.class public final Lcom/kingroot/kinguser/bi;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public ko:Ljava/lang/String;

.field public kp:Ljava/lang/String;

.field public kq:J

.field public kr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    .line 12
    iput-wide v2, p0, Lcom/kingroot/kinguser/bi;->kq:J

    .line 13
    iput-wide v2, p0, Lcom/kingroot/kinguser/bi;->kr:J

    .line 16
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    .line 37
    iget-wide v0, p0, Lcom/kingroot/kinguser/bi;->kq:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bi;->kq:J

    .line 38
    iget-wide v0, p0, Lcom/kingroot/kinguser/bi;->kr:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bi;->kr:J

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 25
    :cond_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/bi;->kq:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 26
    iget-wide v0, p0, Lcom/kingroot/kinguser/bi;->kq:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 28
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/bi;->kr:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 29
    iget-wide v0, p0, Lcom/kingroot/kinguser/bi;->kr:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 31
    :cond_3
    return-void
.end method
