.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amb$a;->ay(Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/amb$a;

.field final synthetic val$modelList:Ljava/util/List;

.field final synthetic val$requestReservationListDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$requestReserveApp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/amb$a;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->this$0:Lcom/kingroot/kinguser/amb$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->val$modelList:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->val$requestReserveApp:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->val$requestReservationListDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->val$modelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->val$requestReserveApp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$3;->val$requestReservationListDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 207
    return-void
.end method
