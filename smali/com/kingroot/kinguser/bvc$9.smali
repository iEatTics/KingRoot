.class Lcom/kingroot/kinguser/bvc$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->b(IIILcom/kingroot/kinguser/bue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPj:Lcom/kingroot/kinguser/bue;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bue;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$9;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$9;->bPj:Lcom/kingroot/kinguser/bue;

    iput-object p3, p0, Lcom/kingroot/kinguser/bvc$9;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kG(I)I

    move-result v0

    .line 432
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kH(I)I

    move-result v1

    .line 433
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kI(I)I

    move-result v2

    .line 436
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 437
    if-eqz v2, :cond_1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$9;->bPj:Lcom/kingroot/kinguser/bue;

    iget-object v1, p0, Lcom/kingroot/kinguser/bvc$9;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v0, v4, v3, v1, v3}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    .line 477
    :goto_0
    return-void

    .line 445
    :cond_1
    instance-of v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$9;->bPj:Lcom/kingroot/kinguser/bue;

    iget-object v1, p0, Lcom/kingroot/kinguser/bvc$9;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v0, v4, v3, v1, v3}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 453
    :cond_2
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;

    .line 454
    iget v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->retCode:I

    if-eqz v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$9;->bPj:Lcom/kingroot/kinguser/bue;

    iget-object v1, p0, Lcom/kingroot/kinguser/bvc$9;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v0, v4, v3, v1, v3}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 463
    :cond_3
    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->resGameList:Ljava/util/ArrayList;

    .line 464
    invoke-static {v0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$9;->bPj:Lcom/kingroot/kinguser/bue;

    iget-object v1, p0, Lcom/kingroot/kinguser/bvc$9;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v0, v4, v3, v1, v3}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 471
    :cond_4
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 472
    iget-boolean v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->hasNextPage:Z

    iput-boolean v2, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->hasNextPage:Z

    .line 473
    iget v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;->nextBeginPos:I

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->nextBeginPos:I

    .line 474
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->cp(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 476
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$9;->bPj:Lcom/kingroot/kinguser/bue;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$9;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0
.end method
