.class public Lcom/kingroot/kinguser/ub;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ie:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ub;->Ie:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/kingroot/kinguser/ub;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ub;->ks()V

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/ub;->Ie:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v1

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ks()V
    .locals 9

    .prologue
    .line 32
    sget-object v0, Lcom/kingroot/kinguser/ub;->Ie:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 33
    new-instance v8, Lcom/kingroot/kinguser/ub$1;

    invoke-direct {v8}, Lcom/kingroot/kinguser/ub$1;-><init>()V

    .line 42
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x8

    const/16 v3, 0x80

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/kingroot/kinguser/ub;->Ie:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    :cond_0
    return-void
.end method
