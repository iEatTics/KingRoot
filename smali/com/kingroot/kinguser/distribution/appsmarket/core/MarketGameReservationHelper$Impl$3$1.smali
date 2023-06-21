.class Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;->onResult(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;

.field final synthetic val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->eA(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/akl;->k(Ljava/lang/String;J)V

    .line 185
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->eA(Ljava/lang/String;)V

    .line 191
    return-void
.end method
