.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public beginPos:I

.field public categoryId:J

.field public groupId:J

.field public pageSize:I

.field public pkgName:Ljava/lang/String;

.field public queryKeyWord:Ljava/lang/String;

.field public sourceId:J

.field public tagId:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->categoryId:J

    .line 11
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->groupId:J

    .line 12
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pageSize:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->beginPos:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->queryKeyWord:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pkgName:Ljava/lang/String;

    .line 16
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->sourceId:J

    .line 17
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->tagId:J

    .line 20
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->categoryId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->categoryId:J

    .line 56
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->groupId:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->groupId:J

    .line 57
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pageSize:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pageSize:I

    .line 58
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->beginPos:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->beginPos:I

    .line 59
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->queryKeyWord:Ljava/lang/String;

    .line 60
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pkgName:Ljava/lang/String;

    .line 61
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->sourceId:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->sourceId:J

    .line 62
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->tagId:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->tagId:J

    .line 63
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 27
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->categoryId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 28
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->categoryId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 30
    :cond_0
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->groupId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 31
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->groupId:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 33
    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pageSize:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_2

    .line 34
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pageSize:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 36
    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->beginPos:I

    if-eqz v0, :cond_3

    .line 37
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->beginPos:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->queryKeyWord:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->queryKeyWord:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pkgName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 45
    :cond_5
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->sourceId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    .line 46
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->sourceId:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 48
    :cond_6
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->tagId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    .line 49
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->tagId:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 51
    :cond_7
    return-void
.end method
