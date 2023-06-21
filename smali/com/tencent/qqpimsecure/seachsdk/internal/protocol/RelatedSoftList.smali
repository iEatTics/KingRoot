.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public srcCategoryId:J

.field public vecRelatedSoftListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->bQg:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;-><init>()V

    .line 36
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->bQg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->srcCategoryId:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->vecRelatedSoftListItem:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->srcCategoryId:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->srcCategoryId:J

    .line 42
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->bQg:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->vecRelatedSoftListItem:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->srcCategoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 24
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->srcCategoryId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->vecRelatedSoftListItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->vecRelatedSoftListItem:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 29
    :cond_1
    return-void
.end method
