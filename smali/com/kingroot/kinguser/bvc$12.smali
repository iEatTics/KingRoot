.class Lcom/kingroot/kinguser/bvc$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bui;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPl:Lcom/kingroot/kinguser/bui;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bui;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$12;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$12;->bPl:Lcom/kingroot/kinguser/bui;

    iput-object p3, p0, Lcom/kingroot/kinguser/bvc$12;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 680
    instance-of v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$12;->bPl:Lcom/kingroot/kinguser/bui;

    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$12;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    move-object v3, v2

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/bui;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    .line 747
    :goto_0
    return-void

    .line 688
    :cond_0
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;

    .line 689
    iget v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->retCode:I

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$12;->bPl:Lcom/kingroot/kinguser/bui;

    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$12;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    move-object v3, v2

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/bui;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 698
    :cond_1
    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecSoftListResp:Ljava/util/ArrayList;

    .line 699
    invoke-static {v0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    iget-object v3, p0, Lcom/kingroot/kinguser/bvc$12;->bPl:Lcom/kingroot/kinguser/bui;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, p0, Lcom/kingroot/kinguser/bvc$12;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/kingroot/kinguser/bui;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 708
    :cond_2
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    .line 709
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;)Ljava/util/List;

    move-result-object v2

    .line 710
    new-instance v5, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 711
    iget-boolean v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->hasNextPage:Z

    iput-boolean v1, v5, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->hasNextPage:Z

    .line 712
    iget v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    iput v1, v5, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->nextBeginPos:I

    .line 713
    iget-wide v6, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    iput-wide v6, v5, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->categoryId:J

    .line 715
    iget-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    iget-wide v6, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    iput-wide v6, v5, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    .line 719
    iget-object v1, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;->vecRelatedSoftList:Ljava/util/ArrayList;

    .line 721
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 722
    invoke-static {v1}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 723
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 745
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$12;->bPl:Lcom/kingroot/kinguser/bui;

    iget-object v4, p0, Lcom/kingroot/kinguser/bvc$12;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    move v1, v12

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/bui;->a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 723
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;

    .line 724
    iget-wide v6, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->srcCategoryId:J

    iget-wide v8, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 725
    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftList;->vecRelatedSoftListItem:Ljava/util/ArrayList;

    .line 726
    invoke-static {v1}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 729
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;

    .line 730
    if-eqz v1, :cond_6

    .line 733
    iget-object v7, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->softListResp:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;

    .line 736
    const/4 v8, -0x1

    iget-wide v10, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/RelatedSoftListItem;->index:J

    long-to-int v1, v10

    .line 737
    iget-object v9, p0, Lcom/kingroot/kinguser/bvc$12;->bOc:Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    iget-object v9, v9, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->keyWord:Ljava/lang/String;

    .line 735
    invoke-static {v7, v8, v1, v9}, Lcom/kingroot/kinguser/bur;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;IILjava/lang/String;)Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;

    move-result-object v1

    .line 738
    if-eqz v1, :cond_6

    .line 739
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
