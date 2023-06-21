.class Lcom/kingroot/kinguser/bvc$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPm:Lcom/kingroot/kinguser/bub;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bub;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$13;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$13;->bPm:Lcom/kingroot/kinguser/bub;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/bvp;)V
    .locals 8

    .prologue
    .line 774
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 775
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 776
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 778
    new-instance v4, Lcom/kingroot/kinguser/buy;

    invoke-direct {v4}, Lcom/kingroot/kinguser/buy;-><init>()V

    .line 779
    if-eqz p1, :cond_2

    .line 780
    invoke-static {p1}, Lcom/kingroot/kinguser/bus;->kq(I)B

    move-result v0

    .line 781
    if-nez v0, :cond_1

    .line 782
    const/4 v0, 0x2

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 783
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$13;->bPm:Lcom/kingroot/kinguser/bub;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$13;->bPm:Lcom/kingroot/kinguser/bub;

    invoke-interface {v0, v1, v4}, Lcom/kingroot/kinguser/bub;->a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Lcom/kingroot/kinguser/buy;)V

    .line 855
    :cond_0
    return-void

    .line 787
    :cond_1
    const/4 v0, 0x1

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 788
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    goto :goto_0

    .line 793
    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;-><init>()V

    .line 794
    iget-object v5, p0, Lcom/kingroot/kinguser/bvc$13;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v5}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v5

    iget-object v6, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    const-string v7, "serverinfo"

    invoke-virtual {v5, v6, v7, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_3

    .line 797
    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 800
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    new-instance v5, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v5, p0, Lcom/kingroot/kinguser/bvc$13;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v5}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;

    move-result-object v5

    iget-object v6, p2, Lcom/kingroot/kinguser/bvp;->bQI:Lcom/qq/jce/wup/UniPacket;

    const-string v7, "softs"

    invoke-virtual {v5, v6, v7, v0}, Lcom/kingroot/kinguser/bvt;->a(Lcom/qq/jce/wup/UniPacket;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_4

    .line 805
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 806
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 808
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$13;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;Ljava/util/List;)V

    .line 809
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    .line 810
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->code:I

    .line 811
    new-instance v5, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v5}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 812
    const-string v0, "UTF-8"

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;

    .line 815
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->expand:[B

    if-eqz v2, :cond_6

    .line 816
    new-instance v2, Lcom/kingroot/kinguser/bup;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bup;-><init>()V

    .line 818
    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    .line 819
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftServerInfo;->expand:[B

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 820
    const-string v0, "expand"

    new-instance v6, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;

    invoke-direct {v6}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;-><init>()V

    invoke-virtual {v5, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;

    .line 821
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bup;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;)V

    .line 823
    if-eqz v0, :cond_5

    iget-object v6, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    if-eqz v6, :cond_5

    .line 824
    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    .line 825
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 826
    const-string v0, "expand"

    .line 827
    new-instance v6, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    invoke-direct {v6}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;-><init>()V

    .line 826
    invoke-virtual {v5, v0, v6}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    .line 828
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bup;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;)V

    .line 831
    :cond_5
    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/buy;->a(Lcom/kingroot/kinguser/bup;)V

    .line 833
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 848
    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/buy;->C(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 834
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 835
    new-instance v6, Lcom/kingroot/kinguser/bvq;

    invoke-direct {v6}, Lcom/kingroot/kinguser/bvq;-><init>()V

    .line 836
    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/bvq;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;)V

    .line 837
    iget-object v7, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->expand:[B

    if-eqz v7, :cond_8

    .line 838
    invoke-virtual {v5}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    .line 839
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->expand:[B

    invoke-virtual {v5, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 846
    :cond_8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
