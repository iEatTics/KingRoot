.class public Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->a(IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;

.field final synthetic val$cid:I

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$fetchOffset:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$fetchTime:I

.field final synthetic val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/auo;Ljava/util/List;IILjava/util/concurrent/atomic/AtomicInteger;Lcom/kingroot/kinguser/auo$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->this$0:Lcom/kingroot/kinguser/auo;

    iput-object p2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$ret:Ljava/util/List;

    iput p3, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$cid:I

    iput p4, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$fetchTime:I

    iput-object p5, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$fetchOffset:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$innerLoadListener:Lcom/kingroot/kinguser/auo$a;

    iput-object p7, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 6
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
    .line 387
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;

    invoke-direct {v5, p0, p2}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11$1;-><init>(Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$11;Ljava/util/List;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 413
    return-void
.end method
