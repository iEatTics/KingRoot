.class Lcom/kingroot/kinguser/bvc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(BLjava/lang/String;Lcom/kingroot/kinguser/bud;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPe:Lcom/kingroot/kinguser/bud;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bud;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$2;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 951
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 954
    if-eqz p1, :cond_1

    .line 957
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    if-eqz v2, :cond_0

    .line 958
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    invoke-interface {v2, v3, v0, v1, v6}, Lcom/kingroot/kinguser/bud;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    if-nez p2, :cond_2

    .line 981
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    if-eqz v2, :cond_0

    .line 982
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    invoke-interface {v2, v3, v0, v1, v6}, Lcom/kingroot/kinguser/bud;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    goto :goto_0

    .line 989
    :cond_2
    instance-of v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;

    if-nez v2, :cond_3

    .line 993
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    if-eqz v2, :cond_0

    .line 994
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    invoke-interface {v2, v3, v0, v1, v6}, Lcom/kingroot/kinguser/bud;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    goto :goto_0

    .line 1001
    :cond_3
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;

    .line 1002
    iget-object v1, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->keyWords:Ljava/util/ArrayList;

    .line 1003
    iget-object v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;->softInfos:Ljava/util/ArrayList;

    .line 1005
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1007
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1017
    :cond_4
    invoke-static {v3}, Lcom/kingroot/kinguser/buo;->B(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 1019
    iget-object v3, p0, Lcom/kingroot/kinguser/bvc$2;->bPc:Lcom/kingroot/kinguser/bvc;

    invoke-static {v3, v2, v1}, Lcom/kingroot/kinguser/bvc;->a(Lcom/kingroot/kinguser/bvc;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1033
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    if-eqz v2, :cond_0

    .line 1034
    iget-object v2, p0, Lcom/kingroot/kinguser/bvc$2;->bPe:Lcom/kingroot/kinguser/bud;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, v1, v6}, Lcom/kingroot/kinguser/bud;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    goto :goto_0

    .line 1007
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 1008
    new-instance v5, Lcom/kingroot/kinguser/bvq;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bvq;-><init>()V

    .line 1009
    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bvq;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;)V

    .line 1010
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
