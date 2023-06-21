.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public categoryId:J

.field public hasNextPage:Z

.field public nextBeginPos:I

.field public resGameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;",
            ">;"
        }
    .end annotation
.end field

.field public retCode:I

.field public showType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->bQn:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;-><init>()V

    .line 44
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->bQn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->retCode:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->resGameList:Ljava/util/ArrayList;

    .line 12
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->showType:I

    .line 13
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->hasNextPage:Z

    .line 14
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->nextBeginPos:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->categoryId:J

    .line 18
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 49
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->retCode:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->retCode:I

    .line 50
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->bQn:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->resGameList:Ljava/util/ArrayList;

    .line 51
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->showType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->showType:I

    .line 52
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->hasNextPage:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->hasNextPage:Z

    .line 53
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->nextBeginPos:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->nextBeginPos:I

    .line 54
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->categoryId:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->categoryId:J

    .line 55
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 25
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->retCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->resGameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->resGameList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 29
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->showType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->hasNextPage:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 31
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->nextBeginPos:I

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->nextBeginPos:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_1
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->categoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 35
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->categoryId:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 37
    :cond_2
    return-void
.end method
