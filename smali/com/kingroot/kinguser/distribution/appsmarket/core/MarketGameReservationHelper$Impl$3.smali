.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ama$a;->HY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ama$a;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ama$a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/ama$a;->a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/ama$a;->a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/ama$a;->a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;->this$0:Lcom/kingroot/kinguser/ama$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/ama$a;->a(Lcom/kingroot/kinguser/ama$a;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    :cond_3
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    .line 146
    iget-object v0, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->gN(Ljava/lang/String;)I

    move-result v0

    .line 157
    iget-object v1, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->d(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v2

    .line 159
    if-gtz v0, :cond_5

    .line 161
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 165
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    :cond_6
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v2, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/akl;->gO(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;

    invoke-direct {v3, p0, v6}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;)V

    const/4 v4, 0x1

    new-instance v5, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$2;

    invoke-direct {v5, p0, v6}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;)V

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$3;

    invoke-direct {v2, p0, v6}, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
