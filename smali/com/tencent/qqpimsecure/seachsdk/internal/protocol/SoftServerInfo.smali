.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static nj:[B


# instance fields
.field public expand:[B

.field public servertime:I

.field public softupdate_tips:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->status:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->expand:[B

    .line 15
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->servertime:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->softupdate_tips:I

    .line 21
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->status:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->status:I

    .line 47
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->nj:[B

    if-nez v0, :cond_0

    .line 49
    new-array v0, v1, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->nj:[B

    .line 51
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->nj:[B

    aput-byte v2, v0, v2

    .line 53
    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->nj:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->expand:[B

    .line 54
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->servertime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->servertime:I

    .line 55
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->softupdate_tips:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->softupdate_tips:I

    .line 56
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->status:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->expand:[B

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->expand:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 38
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->servertime:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 39
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->softupdate_tips:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    return-void
.end method
