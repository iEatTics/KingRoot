.class final Lcom/kingroot/kinguser/gt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kingroot/kinguser/gt;->a:Ljava/lang/Runnable;

    iput-wide p2, p0, Lcom/kingroot/kinguser/gt;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/gs;->a()V

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/gs$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/gt;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/gs$b;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/gs;->aF()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :try_start_1
    iget-wide v2, p0, Lcom/kingroot/kinguser/gt;->b:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/gs;->c()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    goto :goto_0

    .line 112
    :catch_2
    move-exception v0

    goto :goto_0

    .line 110
    :catch_3
    move-exception v0

    goto :goto_0
.end method
