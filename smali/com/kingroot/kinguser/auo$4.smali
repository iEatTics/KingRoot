.class Lcom/kingroot/kinguser/auo$4;
.super Lcom/kingroot/kinguser/auo$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$4;->this$0:Lcom/kingroot/kinguser/auo;

    iput-object p2, p0, Lcom/kingroot/kinguser/auo$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/auo$a;-><init>(Lcom/kingroot/kinguser/auo;Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;)V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$4;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/auf$b;->aP(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    return-void
.end method
