.class public final Lcom/kingroot/kinguser/ao;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static hV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static hW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hF:I

.field public hS:Z

.field public hT:I

.field public hU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hr:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ao;->hV:Ljava/util/ArrayList;

    .line 42
    const-string v0, ""

    .line 43
    sget-object v1, Lcom/kingroot/kinguser/ao;->hV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ao;->hW:Ljava/util/Map;

    .line 46
    const-string v0, ""

    .line 47
    const-string v1, ""

    .line 48
    sget-object v2, Lcom/kingroot/kinguser/ao;->hW:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/ao;->hr:I

    .line 11
    iput-object v1, p0, Lcom/kingroot/kinguser/ao;->hE:Ljava/util/ArrayList;

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/ao;->hF:I

    .line 13
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ao;->hS:Z

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/ao;->hT:I

    .line 15
    iput-object v1, p0, Lcom/kingroot/kinguser/ao;->hU:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/ao;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ao;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/ao;->hr:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ao;->hr:I

    .line 54
    sget-object v0, Lcom/kingroot/kinguser/ao;->hV:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ao;->hE:Ljava/util/ArrayList;

    .line 55
    iget v0, p0, Lcom/kingroot/kinguser/ao;->hF:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ao;->hF:I

    .line 56
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ao;->hS:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ao;->hS:Z

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/ao;->hT:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ao;->hT:I

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/ao;->hW:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/kingroot/kinguser/ao;->hU:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/ao;->hr:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/ao;->hE:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/ao;->hF:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ao;->hS:Z

    if-eqz v0, :cond_0

    .line 29
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ao;->hS:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 31
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ao;->hT:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/ao;->hU:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/ao;->hU:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 35
    :cond_1
    return-void
.end method
