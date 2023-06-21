.class public final Lcom/kingroot/kinguser/bk;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static ky:Lcom/kingroot/kinguser/db;

.field static kz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public kw:Lcom/kingroot/kinguser/db;

.field public kx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sget-object v0, Lcom/kingroot/kinguser/bk;->ky:Lcom/kingroot/kinguser/db;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/db;

    invoke-direct {v0}, Lcom/kingroot/kinguser/db;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bk;->ky:Lcom/kingroot/kinguser/db;

    .line 32
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bk;->ky:Lcom/kingroot/kinguser/db;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/db;

    iput-object v0, p0, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/bk;->kz:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bk;->kz:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/bi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bi;-><init>()V

    .line 36
    sget-object v1, Lcom/kingroot/kinguser/bk;->kz:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bk;->kz:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 23
    :cond_1
    return-void
.end method
