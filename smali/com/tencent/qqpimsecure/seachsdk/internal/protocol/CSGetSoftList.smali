.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public vecSoftListReq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->bPM:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;-><init>()V

    .line 28
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->bPM:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->vecSoftListReq:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->bPM:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->vecSoftListReq:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->vecSoftListReq:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 21
    return-void
.end method
