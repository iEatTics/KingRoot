.class public Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PK()V
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
    .line 108
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;->this$0:Lcom/kingroot/kinguser/auo;

    iput-object p2, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 1
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
    .line 112
    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$b;->JF()V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 118
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/auf$b;->aM(Ljava/util/List;)V

    goto :goto_0
.end method
