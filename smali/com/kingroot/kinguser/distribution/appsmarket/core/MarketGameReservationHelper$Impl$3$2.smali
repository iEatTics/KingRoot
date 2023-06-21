.class Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$2;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
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
    .line 194
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$2;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$2;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketGameReservationHelper$Impl$3$2;->val$gameSummonEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->eA(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method
