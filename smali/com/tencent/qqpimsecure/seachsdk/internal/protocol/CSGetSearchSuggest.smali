.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public keyWord:Ljava/lang/String;

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->keyWord:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->type:B

    .line 14
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->keyWord:Ljava/lang/String;

    .line 30
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->type:B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->type:B

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->keyWord:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 22
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->type:B

    if-eqz v0, :cond_0

    .line 23
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->type:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 25
    :cond_0
    return-void
.end method
