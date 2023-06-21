.class Lcom/kingroot/kinguser/bvc$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(ILcom/kingroot/kinguser/buf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPf:Lcom/kingroot/kinguser/buf;

.field private final synthetic bPh:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/buf;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$5;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$5;->bPf:Lcom/kingroot/kinguser/buf;

    iput p3, p0, Lcom/kingroot/kinguser/bvc$5;->bPh:I

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bvp;)V
    .locals 8

    .prologue
    .line 1466
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 1467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1468
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1469
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    if-eqz p1, :cond_3

    .line 1471
    invoke-static {p1}, Lcom/kingroot/kinguser/bus;->kq(I)B

    move-result v0

    .line 1472
    if-nez v0, :cond_2

    .line 1473
    const/4 v0, 0x2

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1474
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1475
    const-string v0, "SeachSoftEngine"

    const-string v3, "network error"

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/but;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$5;->bPf:Lcom/kingroot/kinguser/buf;

    if-eqz v0, :cond_1

    .line 1519
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$5;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1521
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$5;->bPf:Lcom/kingroot/kinguser/buf;

    invoke-interface {v2, v1, v0}, Lcom/kingroot/kinguser/buf;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1525
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1530
    :cond_1
    return-void

    .line 1477
    :cond_2
    const/4 v0, 0x1

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1478
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1479
    const-string v0, "SeachSoftEngine"

    const-string v3, "runtime error"

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/but;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;-><init>()V

    .line 1483
    iget-object v5, p0, Lcom/kingroot/kinguser/bvc$5;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v5}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v5

    iget-object v6, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    const-string v7, "serverinfo"

    invoke-virtual {v5, v6, v7, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1485
    if-eqz v0, :cond_4

    .line 1486
    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1489
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    new-instance v3, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1491
    iget-object v3, p0, Lcom/kingroot/kinguser/bvc$5;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v3}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v3

    iget-object v5, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    .line 1492
    const-string v6, "categorys"

    .line 1491
    invoke-virtual {v3, v5, v6, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_5

    .line 1494
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1495
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1497
    :cond_5
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1498
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1500
    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 1501
    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;

    .line 1504
    new-instance v5, Lcom/kingroot/kinguser/bup;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bup;-><init>()V

    .line 1505
    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bup;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;)V

    .line 1506
    if-eqz v0, :cond_6

    iget-object v6, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    if-eqz v6, :cond_6

    .line 1507
    invoke-virtual {v3}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    .line 1508
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 1509
    const-string v0, "expand"

    .line 1510
    new-instance v6, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    invoke-direct {v6}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;-><init>()V

    .line 1509
    invoke-virtual {v3, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    .line 1511
    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bup;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;)V

    .line 1514
    :cond_6
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1525
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;

    goto/16 :goto_1
.end method
