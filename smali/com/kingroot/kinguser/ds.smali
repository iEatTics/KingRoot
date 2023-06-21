.class public final Lcom/kingroot/kinguser/ds;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static nK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ca;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public listDownSoftItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dt;",
            ">;"
        }
    .end annotation
.end field

.field public nGUID:I

.field public sQUA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ds;->sQUA:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ds;->nGUID:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ds;->listDownSoftItems:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ds;->sQUA:Ljava/lang/String;

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/ds;->nGUID:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ds;->nGUID:I

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/ds;->nK:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ds;->nK:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/ca;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ca;-><init>()V

    .line 31
    sget-object v1, Lcom/kingroot/kinguser/ds;->nK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ds;->nK:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ds;->listDownSoftItems:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/ds;->sQUA:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/ds;->nGUID:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/ds;->listDownSoftItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 21
    return-void
.end method
