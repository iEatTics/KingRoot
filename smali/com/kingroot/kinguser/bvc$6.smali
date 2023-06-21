.class Lcom/kingroot/kinguser/bvc$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(Ljava/util/List;Lcom/kingroot/kinguser/buf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPf:Lcom/kingroot/kinguser/buf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/buf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$6;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$6;->bPf:Lcom/kingroot/kinguser/buf;

    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bvp;)V
    .locals 7

    .prologue
    .line 1580
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 1581
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    if-eqz p1, :cond_3

    .line 1584
    invoke-static {p1}, Lcom/kingroot/kinguser/bus;->kq(I)B

    move-result v0

    .line 1585
    if-nez v0, :cond_2

    .line 1586
    const/4 v0, 0x2

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1587
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1619
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$6;->bPf:Lcom/kingroot/kinguser/buf;

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$6;->bPf:Lcom/kingroot/kinguser/buf;

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/buf;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1622
    :cond_1
    return-void

    .line 1591
    :cond_2
    const/4 v0, 0x1

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1592
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    goto :goto_0

    .line 1597
    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;-><init>()V

    .line 1598
    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$6;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v4}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v4

    iget-object v5, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    const-string v6, "serverinfo"

    invoke-virtual {v4, v5, v6, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1599
    if-eqz v0, :cond_4

    .line 1600
    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1603
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    new-instance v4, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$6;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v4}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v4

    iget-object v5, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    const-string v6, "softs"

    invoke-virtual {v4, v5, v6, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1606
    if-eqz v0, :cond_5

    .line 1607
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1608
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1610
    :cond_5
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 1611
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 1612
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->softupdate_tips:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->softupdate_tips:I

    goto :goto_0
.end method
