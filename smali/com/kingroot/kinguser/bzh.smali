.class public Lcom/kingroot/kinguser/bzh;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bzh$a;
    }
.end annotation


# instance fields
.field private bVm:Lcom/kingroot/kinguser/bzh$a;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v8, Lcom/kingroot/kinguser/bzg;

    invoke-direct {v8}, Lcom/kingroot/kinguser/bzg;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bzh;->bVm:Lcom/kingroot/kinguser/bzh$a;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bzh$a;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/bzh;->bVm:Lcom/kingroot/kinguser/bzh$a;

    .line 29
    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bzh;->bVm:Lcom/kingroot/kinguser/bzh$a;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bzh;->bVm:Lcom/kingroot/kinguser/bzh$a;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/bzh$a;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bzh;->bVm:Lcom/kingroot/kinguser/bzh$a;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bzh;->bVm:Lcom/kingroot/kinguser/bzh$a;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/bzh$a;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 42
    :cond_0
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method
