.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQh:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;


# instance fields
.field public index:J

.field public softListResp:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->bQh:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->index:J

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->softListResp:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    .line 14
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->index:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->index:J

    .line 38
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->bQh:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->softListResp:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->index:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 22
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->index:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->softListResp:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->softListResp:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 27
    :cond_1
    return-void
.end method
