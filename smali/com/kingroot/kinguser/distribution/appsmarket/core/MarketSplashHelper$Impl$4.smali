.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult$Stub;
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

.field final synthetic val$hadBespeak:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$queryReservationDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/amb$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;->this$0:Lcom/kingroot/kinguser/amb$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;->val$hadBespeak:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;->val$queryReservationDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;

    .line 248
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->Iv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;->val$hadBespeak:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$4;->val$queryReservationDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 254
    :cond_1
    return-void
.end method
