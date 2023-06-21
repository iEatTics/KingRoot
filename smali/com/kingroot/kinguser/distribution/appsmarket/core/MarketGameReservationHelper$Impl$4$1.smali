.class Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azz:Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;

.field final synthetic val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->azz:Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/ama;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v3, v4}, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/kingroot/kinguser/adm;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 263
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$4$1;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->gQ(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
