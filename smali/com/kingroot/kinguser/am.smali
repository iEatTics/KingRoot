.class public final Lcom/kingroot/kinguser/am;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public et:J

.field public hu:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/kingroot/kinguser/am;->et:J

    .line 11
    iput-wide v0, p0, Lcom/kingroot/kinguser/am;->hu:J

    .line 14
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/am;

    invoke-direct {v0}, Lcom/kingroot/kinguser/am;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    iget-wide v0, p0, Lcom/kingroot/kinguser/am;->et:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/am;->et:J

    .line 32
    iget-wide v0, p0, Lcom/kingroot/kinguser/am;->hu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/am;->hu:J

    .line 33
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    iget-wide v0, p0, Lcom/kingroot/kinguser/am;->et:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 22
    iget-wide v0, p0, Lcom/kingroot/kinguser/am;->et:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 24
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/am;->hu:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 25
    iget-wide v0, p0, Lcom/kingroot/kinguser/am;->hu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 27
    :cond_1
    return-void
.end method
