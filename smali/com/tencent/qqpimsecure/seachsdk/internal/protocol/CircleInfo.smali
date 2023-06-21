.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public circlePeriod:I

.field public circleType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circleType:I

    .line 11
    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circlePeriod:I

    .line 14
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circleType:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circleType:I

    .line 30
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circlePeriod:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circlePeriod:I

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circleType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circlePeriod:I

    if-eqz v0, :cond_0

    .line 23
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;->circlePeriod:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    :cond_0
    return-void
.end method
