.class public final Lcom/kingroot/kinguser/b;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static cache_intValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static cache_strValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public dQ:I

.field public featureId:I

.field public intValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public pluginId:I

.field public strValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timestamp:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/b;->featureId:I

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/b;->count:I

    .line 13
    iput-object v2, p0, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    .line 14
    iput-object v2, p0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/b;->pluginId:I

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/b;->dQ:I

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/b;->featureId:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/b;->featureId:I

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/b;->timestamp:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/b;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/b;->count:I

    .line 48
    sget-object v0, Lcom/kingroot/kinguser/b;->cache_intValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/b;->cache_intValues:Ljava/util/ArrayList;

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/kingroot/kinguser/b;->cache_intValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/b;->cache_intValues:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/b;->cache_strValues:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/b;->cache_strValues:Ljava/util/ArrayList;

    .line 56
    const-string v0, ""

    .line 57
    sget-object v1, Lcom/kingroot/kinguser/b;->cache_strValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/b;->cache_strValues:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/b;->pluginId:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/b;->pluginId:I

    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/b;->dQ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/b;->dQ:I

    .line 62
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/b;->featureId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/b;->timestamp:I

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/b;->count:I

    if-eq v0, v2, :cond_0

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/b;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/b;->intValues:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 33
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/b;->pluginId:I

    if-eqz v0, :cond_3

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/b;->pluginId:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 36
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/b;->dQ:I

    if-eqz v0, :cond_4

    .line 37
    iget v0, p0, Lcom/kingroot/kinguser/b;->dQ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 39
    :cond_4
    return-void
.end method
