.class public final Lcom/kingroot/kinguser/bt;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static lb:Lcom/kingroot/kinguser/bl;

.field static ld:Lcom/kingroot/kinguser/dl;

.field static le:Lcom/kingroot/kinguser/dm;

.field static lf:Lcom/kingroot/kinguser/dm;

.field static lg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public kW:Lcom/kingroot/kinguser/bl;

.field public kX:Lcom/kingroot/kinguser/dl;

.field public kY:Lcom/kingroot/kinguser/dm;

.field public kZ:Lcom/kingroot/kinguser/dm;

.field public la:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kW:Lcom/kingroot/kinguser/bl;

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kX:Lcom/kingroot/kinguser/dl;

    .line 12
    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kY:Lcom/kingroot/kinguser/dm;

    .line 13
    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kZ:Lcom/kingroot/kinguser/dm;

    .line 14
    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/bt;->lb:Lcom/kingroot/kinguser/bl;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/bl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bl;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bt;->lb:Lcom/kingroot/kinguser/bl;

    .line 45
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bt;->lb:Lcom/kingroot/kinguser/bl;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bl;

    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kW:Lcom/kingroot/kinguser/bl;

    .line 46
    sget-object v0, Lcom/kingroot/kinguser/bt;->ld:Lcom/kingroot/kinguser/dl;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/dl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dl;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bt;->ld:Lcom/kingroot/kinguser/dl;

    .line 49
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bt;->ld:Lcom/kingroot/kinguser/dl;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/dl;

    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kX:Lcom/kingroot/kinguser/dl;

    .line 50
    sget-object v0, Lcom/kingroot/kinguser/bt;->le:Lcom/kingroot/kinguser/dm;

    if-nez v0, :cond_2

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/dm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dm;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bt;->le:Lcom/kingroot/kinguser/dm;

    .line 53
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/bt;->le:Lcom/kingroot/kinguser/dm;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/dm;

    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kY:Lcom/kingroot/kinguser/dm;

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/bt;->lf:Lcom/kingroot/kinguser/dm;

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/dm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dm;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bt;->lf:Lcom/kingroot/kinguser/dm;

    .line 57
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/bt;->lf:Lcom/kingroot/kinguser/dm;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/dm;

    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->kZ:Lcom/kingroot/kinguser/dm;

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/bt;->lg:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bt;->lg:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Lcom/kingroot/kinguser/bw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bw;-><init>()V

    .line 61
    sget-object v1, Lcom/kingroot/kinguser/bt;->lg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/bt;->lg:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kW:Lcom/kingroot/kinguser/bl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kX:Lcom/kingroot/kinguser/dl;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kX:Lcom/kingroot/kinguser/dl;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kY:Lcom/kingroot/kinguser/dm;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kY:Lcom/kingroot/kinguser/dm;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kZ:Lcom/kingroot/kinguser/dm;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->kZ:Lcom/kingroot/kinguser/dm;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bt;->la:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 33
    :cond_3
    return-void
.end method
