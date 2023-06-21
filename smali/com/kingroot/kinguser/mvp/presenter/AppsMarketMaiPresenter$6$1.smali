.class public Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/auo$5;

.field final synthetic val$noInstallApkList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/auo$5;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->val$noInstallApkList:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 214
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ij()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->k(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->val$noInstallApkList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->val$noInstallApkList:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 229
    :goto_1
    return-void

    .line 223
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18968

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$5;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->val$noInstallApkList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auf$b;->aQ(Ljava/util/List;)V

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$5;->ade:Lcom/kingroot/kinguser/akl;

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget-wide v2, v1, Lcom/kingroot/kinguser/auo$5;->adf:J

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->aA(J)V

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$5;->ade:Lcom/kingroot/kinguser/akl;

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget v1, v1, Lcom/kingroot/kinguser/auo$5;->adg:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->ed(I)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;->this$1:Lcom/kingroot/kinguser/auo$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1
.end method
