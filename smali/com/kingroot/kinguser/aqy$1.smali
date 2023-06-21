.class Lcom/kingroot/kinguser/aqy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aqy;->My()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yz:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic aLF:Lcom/kingroot/kinguser/aqy;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aqy;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iput-object p2, p0, Lcom/kingroot/kinguser/aqy$1;->Yz:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/kingroot/kinguser/aqy$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ek()J

    move-result-wide v0

    .line 63
    iget-object v2, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aqy;->Na()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iget-object v0, v0, Lcom/kingroot/kinguser/aqy;->aLD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iget-object v0, v0, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iget-object v0, v0, Lcom/kingroot/kinguser/aqy;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iget-object v1, v1, Lcom/kingroot/kinguser/aqy;->aLz:Lcom/kingroot/kinguser/arl;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/arl;->My()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iget-object v0, v0, Lcom/kingroot/kinguser/aqy;->aLC:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy$1;->Yz:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/kingroot/kinguser/aqy$1;->aLF:Lcom/kingroot/kinguser/aqy;

    iget-object v1, v1, Lcom/kingroot/kinguser/aqy;->aLA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/aqy$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aqy$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
