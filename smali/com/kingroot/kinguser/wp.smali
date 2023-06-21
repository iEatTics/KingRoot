.class public Lcom/kingroot/kinguser/wp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MW:I

.field private static final MX:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final MY:Ljava/util/concurrent/ExecutorService;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/wp;->MW:I

    .line 32
    sget v0, Lcom/kingroot/kinguser/wp;->MW:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingroot/kinguser/wp;->CORE_POOL_SIZE:I

    .line 33
    sget v0, Lcom/kingroot/kinguser/wp;->MW:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kingroot/kinguser/wp;->MAXIMUM_POOL_SIZE:I

    .line 36
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/wp;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/kingroot/kinguser/wp;->CORE_POOL_SIZE:I

    sget v3, Lcom/kingroot/kinguser/wp;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/kingroot/kinguser/wp;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/kingroot/kinguser/wj;

    const-string v0, "KWorksExecutor"

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/wj;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/kingroot/kinguser/wp;->MX:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/wj;

    const-string v1, "KWorksExecutor_s"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wj;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/wp;->MY:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/wp;->MY:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 64
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/wp;->MX:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 68
    instance-of v1, v0, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method
