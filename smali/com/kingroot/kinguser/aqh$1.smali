.class Lcom/kingroot/kinguser/aqh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aqh;->My()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aLg:Lcom/kingroot/kinguser/aqh;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aqh;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kingroot/kinguser/aqh$1;->aLg:Lcom/kingroot/kinguser/aqh;

    iput-object p2, p0, Lcom/kingroot/kinguser/aqh$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh$1;->aLg:Lcom/kingroot/kinguser/aqh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqh;->vs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh$1;->aLg:Lcom/kingroot/kinguser/aqh;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqh;->a(Lcom/kingroot/kinguser/aqh;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh$1;->aLg:Lcom/kingroot/kinguser/aqh;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqh;->a(Lcom/kingroot/kinguser/aqh;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aqh$1;->aLg:Lcom/kingroot/kinguser/aqh;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqh;->MG()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aqh$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_1
.end method
