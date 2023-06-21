.class public Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;->this$0:Lcom/kingroot/kinguser/auo;

    iput-object p2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 263
    return-void
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 245
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/asy;->GU()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/anf;->IV()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auf$b;->aR(Ljava/util/List;)V

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 258
    return-void

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$7;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/auf$b;->aR(Ljava/util/List;)V

    goto :goto_1
.end method
