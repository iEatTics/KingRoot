.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;",
            ">;"
        }
    .end annotation
.end field

.field static bQr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public retCode:I

.field public vecRelatedSoftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;",
            ">;"
        }
    .end annotation
.end field

.field public vecSoftListResp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->bQq:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;-><init>()V

    .line 39
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->bQq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->bQr:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;-><init>()V

    .line 43
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->bQr:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->retCode:I

    .line 13
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecSoftListResp:Ljava/util/ArrayList;

    .line 14
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecRelatedSoftList:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->retCode:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->retCode:I

    .line 49
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->bQq:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecSoftListResp:Ljava/util/ArrayList;

    .line 50
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->bQr:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecRelatedSoftList:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->retCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecSoftListResp:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecSoftListResp:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecRelatedSoftList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecRelatedSoftList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 31
    :cond_1
    return-void
.end method
