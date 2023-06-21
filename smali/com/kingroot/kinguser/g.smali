.class public final Lcom/kingroot/kinguser/g;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static eg:Lcom/kingroot/kinguser/o;

.field static eh:Lcom/kingroot/kinguser/p;

.field static ej:Lcom/kingroot/kinguser/p;

.field static ek:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public eb:Ljava/lang/String;

.field public ec:Lcom/kingroot/kinguser/o;

.field public ed:Lcom/kingroot/kinguser/p;

.field public ee:Lcom/kingroot/kinguser/p;

.field public ef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/g;->eb:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/kingroot/kinguser/g;->ec:Lcom/kingroot/kinguser/o;

    .line 12
    iput-object v1, p0, Lcom/kingroot/kinguser/g;->ed:Lcom/kingroot/kinguser/p;

    .line 13
    iput-object v1, p0, Lcom/kingroot/kinguser/g;->ee:Lcom/kingroot/kinguser/p;

    .line 14
    iput-object v1, p0, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/g;->eb:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/g;->eg:Lcom/kingroot/kinguser/o;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/o;

    invoke-direct {v0}, Lcom/kingroot/kinguser/o;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/g;->eg:Lcom/kingroot/kinguser/o;

    .line 45
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/g;->eg:Lcom/kingroot/kinguser/o;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/o;

    iput-object v0, p0, Lcom/kingroot/kinguser/g;->ec:Lcom/kingroot/kinguser/o;

    .line 46
    sget-object v0, Lcom/kingroot/kinguser/g;->eh:Lcom/kingroot/kinguser/p;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/p;

    invoke-direct {v0}, Lcom/kingroot/kinguser/p;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/g;->eh:Lcom/kingroot/kinguser/p;

    .line 49
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/g;->eh:Lcom/kingroot/kinguser/p;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/p;

    iput-object v0, p0, Lcom/kingroot/kinguser/g;->ed:Lcom/kingroot/kinguser/p;

    .line 50
    sget-object v0, Lcom/kingroot/kinguser/g;->ej:Lcom/kingroot/kinguser/p;

    if-nez v0, :cond_2

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/p;

    invoke-direct {v0}, Lcom/kingroot/kinguser/p;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/g;->ej:Lcom/kingroot/kinguser/p;

    .line 53
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/g;->ej:Lcom/kingroot/kinguser/p;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/p;

    iput-object v0, p0, Lcom/kingroot/kinguser/g;->ee:Lcom/kingroot/kinguser/p;

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/g;->ek:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/g;->ek:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/kingroot/kinguser/h;

    invoke-direct {v0}, Lcom/kingroot/kinguser/h;-><init>()V

    .line 57
    sget-object v1, Lcom/kingroot/kinguser/g;->ek:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/g;->ek:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->eb:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ec:Lcom/kingroot/kinguser/o;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ec:Lcom/kingroot/kinguser/o;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ed:Lcom/kingroot/kinguser/p;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ed:Lcom/kingroot/kinguser/p;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ee:Lcom/kingroot/kinguser/p;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ee:Lcom/kingroot/kinguser/p;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 33
    :cond_3
    return-void
.end method
