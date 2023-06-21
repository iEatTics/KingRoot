.class Lcom/kingroot/kinguser/bve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bve;->c(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/buf",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
        "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic bPs:Lcom/kingroot/kinguser/btz;

.field private final synthetic bPt:Ljava/util/List;

.field private final synthetic bPu:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/btz;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bve$1;->bPs:Lcom/kingroot/kinguser/btz;

    iput-object p2, p0, Lcom/kingroot/kinguser/bve$1;->bPt:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/bve$1;->bPu:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 53
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "WupUtil--"

    const-string v1, "fetchMySoftwareListInfo--end--fetch[failed]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$1;->bPs:Lcom/kingroot/kinguser/btz;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v4}, Lcom/kingroot/kinguser/btz;->onFetchResult(Ljava/util/List;Z)V

    .line 87
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v5, ""

    .line 62
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$1;->bPt:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$1;->bPs:Lcom/kingroot/kinguser/btz;

    iget-object v1, p0, Lcom/kingroot/kinguser/bve$1;->bPu:Ljava/util/List;

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/btz;->onFetchResult(Ljava/util/List;Z)V

    .line 82
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$1;->bPs:Lcom/kingroot/kinguser/btz;

    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->softupdate_tips:I

    if-ne v1, v3, :cond_5

    :goto_1
    invoke-static {v6, v0, v3}, Lcom/kingroot/kinguser/bve;->a(Ljava/util/List;Lcom/kingroot/kinguser/btz;Z)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 66
    iget-object v8, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;

    .line 68
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->aiB()I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    .line 69
    :goto_3
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->aiA()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    move-result-object v10

    .line 70
    iget-object v11, v10, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 72
    iget-object v11, v11, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    iget-object v2, v10, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    iget v10, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersionCode:I

    if-le v2, v10, :cond_3

    .line 73
    new-instance v2, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;-><init>()V

    .line 74
    invoke-virtual {v2, v0, v1, v5}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;Ljava/lang/String;)V

    .line 75
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/bve$1;->bPu:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v2, v4

    .line 68
    goto :goto_3

    :cond_5
    move v3, v4

    .line 83
    goto :goto_1

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$1;->bPs:Lcom/kingroot/kinguser/btz;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bve$1;->a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method
