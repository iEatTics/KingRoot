.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public categoryId:J

.field public index:I

.field public num:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->version:I

    .line 11
    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->index:I

    .line 12
    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->num:I

    .line 13
    const-wide/32 v0, 0x3d0966

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->categoryId:J

    .line 16
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->version:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->version:I

    .line 34
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->index:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->index:I

    .line 35
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->num:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->num:I

    .line 36
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->categoryId:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->categoryId:J

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->version:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->index:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->num:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->categoryId:J

    const-wide/32 v2, 0x3d0966

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->categoryId:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 29
    :cond_0
    return-void
.end method
