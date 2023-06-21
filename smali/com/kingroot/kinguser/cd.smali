.class public final Lcom/kingroot/kinguser/cd;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static lA:Lcom/kingroot/kinguser/cx;

.field static lB:Lcom/kingroot/kinguser/ce;


# instance fields
.field public ly:Lcom/kingroot/kinguser/cx;

.field public lz:Lcom/kingroot/kinguser/ce;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cd;->time:J

    .line 11
    iput-object v2, p0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    .line 12
    iput-object v2, p0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 29
    iget-wide v0, p0, Lcom/kingroot/kinguser/cd;->time:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cd;->time:J

    .line 30
    sget-object v0, Lcom/kingroot/kinguser/cd;->lA:Lcom/kingroot/kinguser/cx;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/kingroot/kinguser/cx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cx;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cd;->lA:Lcom/kingroot/kinguser/cx;

    .line 33
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cd;->lA:Lcom/kingroot/kinguser/cx;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cx;

    iput-object v0, p0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/cd;->lB:Lcom/kingroot/kinguser/ce;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/ce;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ce;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cd;->lB:Lcom/kingroot/kinguser/ce;

    .line 37
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cd;->lB:Lcom/kingroot/kinguser/ce;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ce;

    iput-object v0, p0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    .line 38
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/kingroot/kinguser/cd;->time:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/cd;->ly:Lcom/kingroot/kinguser/cx;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/cd;->lz:Lcom/kingroot/kinguser/ce;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 23
    :cond_0
    return-void
.end method
