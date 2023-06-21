.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callbackGameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;",
            ">;"
        }
    .end annotation
.end field

.field public retCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->bQl:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CallbackGame;-><init>()V

    .line 32
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->bQl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->retCode:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->callbackGameList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 37
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->retCode:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->retCode:I

    .line 38
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->bQl:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->callbackGameList:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->retCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->callbackGameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;->callbackGameList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 25
    :cond_0
    return-void
.end method
