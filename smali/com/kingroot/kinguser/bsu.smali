.class public final Lcom/kingroot/kinguser/bsu;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bMp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bMn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsr;",
            ">;"
        }
    .end annotation
.end field

.field public bMo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bsu;->bMp:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/kingroot/kinguser/bsr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsr;-><init>()V

    .line 32
    sget-object v1, Lcom/kingroot/kinguser/bsu;->bMp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bsu;->bMn:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bsu;->bMo:Z

    .line 14
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/bsu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsu;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v0, Lcom/kingroot/kinguser/bsu;->bMp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/bsu;->bMn:Ljava/util/ArrayList;

    .line 38
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsu;->bMo:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bsu;->bMo:Z

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/bsu;->bMn:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bsu;->bMn:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bsu;->bMo:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 25
    return-void
.end method
