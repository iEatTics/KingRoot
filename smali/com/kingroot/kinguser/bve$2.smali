.class Lcom/kingroot/kinguser/bve$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bve;->a(Ljava/util/List;Lcom/kingroot/kinguser/btz;Z)V
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

.field private final synthetic bPu:Ljava/util/List;

.field private final synthetic bPv:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/btz;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bve$2;->bPs:Lcom/kingroot/kinguser/btz;

    iput-object p2, p0, Lcom/kingroot/kinguser/bve$2;->bPv:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/bve$2;->bPu:Ljava/util/List;

    .line 117
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
    .line 122
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->type:I

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "WupUtil--"

    const-string v1, "fetchMySoftwareListInfo--end--fetch[failed]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$2;->bPs:Lcom/kingroot/kinguser/btz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    .line 157
    :goto_0
    return-void

    .line 130
    :cond_0
    const-string v3, ""

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$2;->bPv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$2;->bPs:Lcom/kingroot/kinguser/btz;

    iget-object v1, p0, Lcom/kingroot/kinguser/bve$2;->bPu:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/btz;->onFetchDiffResult(Ljava/util/List;Z)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 133
    iget-object v5, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 134
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;

    .line 135
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->aiB()I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    const/4 v2, 0x1

    .line 136
    :goto_2
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;->aiA()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    move-result-object v7

    .line 137
    iget-object v8, v7, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 139
    iget-object v8, v8, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    iget-wide v8, v7, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_3

    .line 141
    :try_start_0
    new-instance v2, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;-><init>()V

    .line 142
    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;Ljava/lang/String;)V

    .line 144
    iget v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersionCode:I

    .line 145
    iget v5, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    .line 146
    if-le v5, v1, :cond_1

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->aig()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mUpdateUseMd5:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/bve$2;->bPu:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    goto :goto_1

    .line 135
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bve$2;->a(Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method
