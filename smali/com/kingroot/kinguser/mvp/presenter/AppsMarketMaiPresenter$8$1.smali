.class Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->onReceive(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 274
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->val$appModels:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v1, v1, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$ret:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$ret:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$fetchTime:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$fetchOffset:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->this$0:Lcom/kingroot/kinguser/auo;

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget v1, v1, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$cid:I

    iget-object v2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget v2, v2, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$fetchSize:I

    iget-object v3, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v3, v3, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$fetchOffset:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget v4, v4, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$fetchTime:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v5, v5, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$ret:Ljava/util/List;

    iget-object v6, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v6, v6, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;IILjava/util/concurrent/atomic/AtomicInteger;ILjava/util/List;Lcom/kingroot/kinguser/auo$a;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8$1;->aRI:Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;

    iget-object v1, v1, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$8;->val$ret:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/auo$a;->onFinish(Ljava/util/List;)V

    goto :goto_0
.end method
