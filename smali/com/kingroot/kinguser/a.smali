.class public final Lcom/kingroot/kinguser/a;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static dO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation
.end field

.field static dP:Lcom/kingroot/kinguser/c;


# instance fields
.field public cb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation
.end field

.field public dG:Lcom/kingroot/kinguser/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/kingroot/kinguser/a;->cb:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/a;->dG:Lcom/kingroot/kinguser/c;

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    sget-object v0, Lcom/kingroot/kinguser/a;->dO:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/a;->dO:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Lcom/kingroot/kinguser/b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 30
    sget-object v1, Lcom/kingroot/kinguser/a;->dO:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/a;->dO:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/a;->cb:Ljava/util/ArrayList;

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/a;->dP:Lcom/kingroot/kinguser/c;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/c;

    invoke-direct {v0}, Lcom/kingroot/kinguser/c;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/a;->dP:Lcom/kingroot/kinguser/c;

    .line 36
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/a;->dP:Lcom/kingroot/kinguser/c;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/c;

    iput-object v0, p0, Lcom/kingroot/kinguser/a;->dG:Lcom/kingroot/kinguser/c;

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/a;->cb:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/a;->dG:Lcom/kingroot/kinguser/c;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/a;->dG:Lcom/kingroot/kinguser/c;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 21
    :cond_0
    return-void
.end method
