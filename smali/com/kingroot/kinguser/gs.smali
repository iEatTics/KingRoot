.class public Lcom/kingroot/kinguser/gs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/gs$a;,
        Lcom/kingroot/kinguser/gs$b;
    }
.end annotation


# static fields
.field private static final b:[B

.field private static volatile qA:Ljava/util/concurrent/ExecutorService;

.field private static volatile qB:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/kingroot/kinguser/gs;->qA:Ljava/util/concurrent/ExecutorService;

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/kingroot/kinguser/gs;->b:[B

    .line 34
    sput-object v1, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/gs;->e()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x7530

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/gs;->b(Ljava/lang/Runnable;J)V

    .line 79
    return-void
.end method

.method static synthetic aF()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static b(Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 92
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/gs;->d()V

    .line 98
    sget-object v0, Lcom/kingroot/kinguser/gs;->qA:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/kingroot/kinguser/gt;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/gt;-><init>(Ljava/lang/Runnable;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lcom/kingroot/kinguser/gs;->f()V

    return-void
.end method

.method private static d()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/kingroot/kinguser/gs;->qA:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 38
    sget-object v1, Lcom/kingroot/kinguser/gs;->b:[B

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/gs;->qA:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/gs;->qA:Ljava/util/concurrent/ExecutorService;

    .line 42
    :cond_0
    monitor-exit v1

    .line 44
    :cond_1
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static e()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    goto :goto_0
.end method

.method private static f()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/gs;->qB:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_1
.end method
