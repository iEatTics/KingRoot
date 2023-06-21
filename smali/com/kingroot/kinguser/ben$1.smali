.class Lcom/kingroot/kinguser/ben$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ben;-><init>(IIJLcom/kingroot/kinguser/ben$b;Ljava/util/concurrent/TimeUnit;ILcom/kingroot/kinguser/bec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blr:Lcom/kingroot/kinguser/ben;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ben;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/ben$1;->blr:Lcom/kingroot/kinguser/ben;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 48
    instance-of v1, v0, Lcom/kingroot/kinguser/ben$b;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Lcom/kingroot/kinguser/ben$b;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ben$b;->h(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
