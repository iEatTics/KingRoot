.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public beginPos:I

.field public categoryId:J

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->categoryId:J

    .line 11
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->pageSize:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->beginPos:I

    .line 15
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->categoryId:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->categoryId:J

    .line 36
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->pageSize:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->pageSize:I

    .line 37
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->beginPos:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->beginPos:I

    .line 38
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->categoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 23
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->categoryId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->pageSize:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    .line 26
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->pageSize:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->beginPos:I

    if-eqz v0, :cond_2

    .line 29
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->beginPos:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    :cond_2
    return-void
.end method
