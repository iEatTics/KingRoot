.class public final Lcom/kingroot/kinguser/ek;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static pl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public gv:I

.field public id:I

.field public pi:Ljava/lang/String;

.field public pj:Ljava/lang/String;

.field public pk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/ek;->id:I

    .line 11
    iput v2, p0, Lcom/kingroot/kinguser/ek;->count:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ek;->time:J

    .line 13
    iput v2, p0, Lcom/kingroot/kinguser/ek;->gv:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/ek;->id:I

    invoke-virtual {p1, v0, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ek;->id:I

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/ek;->count:I

    invoke-virtual {p1, v0, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ek;->count:I

    .line 44
    iget-wide v0, p0, Lcom/kingroot/kinguser/ek;->time:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ek;->time:J

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/ek;->gv:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ek;->gv:I

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    .line 47
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/kingroot/kinguser/ek;->pl:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ek;->pl:Ljava/util/ArrayList;

    .line 50
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/kingroot/kinguser/ek;->pl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ek;->pl:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/ek;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/ek;->count:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget-wide v0, p0, Lcom/kingroot/kinguser/ek;->time:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/ek;->gv:I

    if-eqz v0, :cond_0

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/ek;->gv:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 37
    :cond_3
    return-void
.end method
