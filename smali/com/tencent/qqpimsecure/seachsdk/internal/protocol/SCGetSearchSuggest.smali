.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static bQp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public keyWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public softInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->bQo:Ljava/util/ArrayList;

    .line 32
    const-string v0, ""

    .line 33
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->bQo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->bQp:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;-><init>()V

    .line 37
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->bQp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->keyWords:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->softInfos:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->bQo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->keyWords:Ljava/util/ArrayList;

    .line 43
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->bQp:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->softInfos:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->keyWords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 22
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->softInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->softInfos:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 25
    :cond_0
    return-void
.end method
