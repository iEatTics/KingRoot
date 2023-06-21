.class public final Lcom/kingroot/kinguser/ae;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static gR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public gQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/x;",
            ">;"
        }
    .end annotation
.end field

.field public gv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ae;->gv:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/ae;->gv:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ae;->gv:I

    .line 29
    sget-object v0, Lcom/kingroot/kinguser/ae;->gR:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ae;->gR:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/kingroot/kinguser/x;

    invoke-direct {v0}, Lcom/kingroot/kinguser/x;-><init>()V

    .line 32
    sget-object v1, Lcom/kingroot/kinguser/ae;->gR:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ae;->gR:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/kingroot/kinguser/ae;->gv:I

    if-eqz v0, :cond_0

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/ae;->gv:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/ae;->gQ:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 23
    :cond_1
    return-void
.end method
