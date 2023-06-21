.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;",
            ">;"
        }
    .end annotation
.end field

.field static bQz:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;


# instance fields
.field public categoryId:J

.field public hasNextPage:Z

.field public nextBeginPos:I

.field public retCode:I

.field public showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

.field public vecSoftDetail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->bQy:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;-><init>()V

    .line 47
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->bQy:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->bQz:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->retCode:I

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    .line 12
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->hasNextPage:Z

    .line 13
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    .line 14
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->vecSoftDetail:Ljava/util/ArrayList;

    .line 15
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    .line 18
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->retCode:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->retCode:I

    .line 55
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    .line 56
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->hasNextPage:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->hasNextPage:Z

    .line 57
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    .line 58
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->bQy:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->vecSoftDetail:Ljava/util/ArrayList;

    .line 59
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->bQz:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    .line 60
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 25
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->retCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 27
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->hasNextPage:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 30
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    if-eqz v0, :cond_1

    .line 31
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->vecSoftDetail:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->vecSoftDetail:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 39
    :cond_3
    return-void
.end method
