.class Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->onReceive(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iput-object p2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 390
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->val$appModels:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v1, v1, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$ret:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$ret:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$fetchTime:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$fetchOffset:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->this$0:Lcom/kingroot/kinguser/auo;

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget v1, v1, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$fetchTime:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget v2, v2, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$cid:I

    iget-object v3, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v3, v3, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$fetchOffset:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v4, v4, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    iget-object v5, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v5, v5, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$ret:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/List;)V

    .line 410
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 411
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;->aRG:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;

    iget-object v1, v1, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$ret:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/auo$a;->onFinish(Ljava/util/List;)V

    goto :goto_0
.end method
