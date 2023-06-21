.class public final Lcom/kingroot/kinguser/x;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static gz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public gt:J

.field public gu:J

.field public gy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/kingroot/kinguser/x;->gt:J

    .line 11
    iput-wide v0, p0, Lcom/kingroot/kinguser/x;->gu:J

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-wide v0, p0, Lcom/kingroot/kinguser/x;->gt:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/x;->gt:J

    .line 33
    iget-wide v0, p0, Lcom/kingroot/kinguser/x;->gu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/x;->gu:J

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/x;->gz:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/x;->gz:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/u;

    invoke-direct {v0}, Lcom/kingroot/kinguser/u;-><init>()V

    .line 37
    sget-object v1, Lcom/kingroot/kinguser/x;->gz:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/x;->gz:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 18
    iget-wide v0, p0, Lcom/kingroot/kinguser/x;->gt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 19
    iget-wide v0, p0, Lcom/kingroot/kinguser/x;->gt:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 21
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/x;->gu:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 22
    iget-wide v0, p0, Lcom/kingroot/kinguser/x;->gu:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/x;->gy:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 27
    :cond_2
    return-void
.end method
