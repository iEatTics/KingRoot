.class public Lcom/kingroot/kinguser/bzi;
.super Lcom/kingroot/kinguser/cec;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bzh$a;
.implements Lcom/kingroot/kinguser/cgd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bzi$a;,
        Lcom/kingroot/kinguser/bzi$b;
    }
.end annotation


# static fields
.field private static bVB:Lcom/kingroot/kinguser/cgd$a;

.field private static bVo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cgd$a;",
            ">;"
        }
    .end annotation
.end field

.field private static bVy:J

.field private static bVz:J


# instance fields
.field private volatile bVA:Z

.field private bVn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cgd$b;",
            ">;"
        }
    .end annotation
.end field

.field protected bVp:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected bVq:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/bzi$a;",
            ">;"
        }
    .end annotation
.end field

.field protected bVr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bzi$a;",
            ">;"
        }
    .end annotation
.end field

.field protected bVs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/kingroot/kinguser/bzi$a;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private bVt:I

.field protected bVu:Lcom/kingroot/kinguser/bzh;

.field private bVv:Z

.field private bVw:Landroid/os/HandlerThread;

.field private bVx:Lcom/kingroot/kinguser/bzi$b;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzi;->bVo:Ljava/util/ArrayList;

    .line 781
    sput-wide v2, Lcom/kingroot/kinguser/bzi;->bVy:J

    .line 782
    sput-wide v2, Lcom/kingroot/kinguser/bzi;->bVz:J

    .line 948
    new-instance v0, Lcom/kingroot/kinguser/bzi$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bzi$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzi;->bVB:Lcom/kingroot/kinguser/cgd$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/cec;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVn:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVp:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVq:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVr:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVs:Ljava/util/HashMap;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    .line 63
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bzi;->bVv:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    .line 783
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bzi;->bVA:Z

    .line 821
    return-void
.end method

.method private YY()I
    .locals 7

    .prologue
    const/16 v0, 0x10

    .line 101
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 102
    mul-int/lit8 v1, v2, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 103
    if-le v1, v0, :cond_0

    .line 106
    :goto_0
    const v1, 0x10002

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ThreadPoolSizeInfo-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/cgl;->b(I[Ljava/lang/Object;)V

    .line 107
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bzi;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->akf()Z

    move-result v0

    return v0
.end method

.method private akb()I
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->YY()I

    move-result v0

    .line 116
    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private akc()V
    .locals 6

    .prologue
    .line 393
    iget-object v2, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 397
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bzi$a;

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 401
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->akd()V

    .line 403
    iget-object v1, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bzh;->execute(Ljava/lang/Runnable;)V

    .line 409
    sget-object v1, Lcom/kingroot/kinguser/bzi;->bVo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/cgd$a;

    .line 410
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/bzh;->getActiveCount()I

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 416
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVx:Lcom/kingroot/kinguser/bzi$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzi$b;->sendEmptyMessage(I)Z

    .line 419
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private akd()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzh;->getCorePoolSize()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    if-ge v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    iget v1, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzh;->setCorePoolSize(I)V

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    iget v1, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzh;->setMaximumPoolSize(I)V

    .line 434
    :cond_0
    return-void
.end method

.method private akf()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bzi;->bVA:Z

    return v0
.end method

.method public static akg()Lcom/kingroot/kinguser/cgd$a;
    .locals 1

    .prologue
    .line 945
    sget-object v0, Lcom/kingroot/kinguser/bzi;->bVB:Lcom/kingroot/kinguser/cgd$a;

    return-object v0
.end method

.method static synthetic akh()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/bzi;->bVo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bzi;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->akc()V

    return-void
.end method

.method static synthetic kC()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/kingroot/kinguser/bzi;->bVz:J

    return-wide v0
.end method

.method static synthetic kh()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/kingroot/kinguser/bzi;->bVy:J

    return-wide v0
.end method


# virtual methods
.method public I(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->YY()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    .line 75
    new-instance v1, Lcom/kingroot/kinguser/bzh;

    const/4 v2, 0x0

    iget v0, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    add-int/lit8 v3, v0, 0x2

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/kingroot/kinguser/bzi;->bVp:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/bzh;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    .line 82
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bzh;->a(Lcom/kingroot/kinguser/bzh$a;)V

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TMS_THREAD_POOL_HANDLER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVw:Landroid/os/HandlerThread;

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVw:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/kingroot/kinguser/bzi$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/bzi;->bVw:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bzi$b;-><init>(Lcom/kingroot/kinguser/bzi;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVx:Lcom/kingroot/kinguser/bzi$b;

    .line 88
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bzi;->cN(J)V

    .line 89
    return-void
.end method

.method public a(ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 12

    .prologue
    .line 323
    iget-object v10, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 330
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/bzi$a;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/bzi$a;-><init>(Lcom/kingroot/kinguser/bzi;ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVq:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVx:Lcom/kingroot/kinguser/bzi$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzi$b;->sendEmptyMessage(I)Z

    .line 341
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 9

    .prologue
    .line 302
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/bzi;->a(ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 303
    return-void
.end method

.method public afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 172
    iget-object v3, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    :try_start_0
    check-cast p1, Lcom/kingroot/kinguser/bzi$a;

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_1

    .line 177
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 178
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bzi$a;

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 181
    const/4 v0, 0x1

    .line 186
    :goto_0
    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingroot/kinguser/cgd$c;->ced:J

    sub-long/2addr v0, v4

    .line 188
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v4

    iput-wide v0, v4, Lcom/kingroot/kinguser/cgd$c;->ced:J

    .line 189
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v4

    iget-wide v4, v4, Lcom/kingroot/kinguser/cgd$c;->cee:J

    sub-long/2addr v0, v4

    .line 190
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v4

    iput-wide v0, v4, Lcom/kingroot/kinguser/cgd$c;->cee:J

    .line 197
    sget-object v0, Lcom/kingroot/kinguser/bzi;->bVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$a;

    .line 198
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/kingroot/kinguser/cgd$a;->b(Lcom/kingroot/kinguser/cgd$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 210
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzh;->getActiveCount()I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bzh;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    .line 212
    iget-object v4, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bzh;->getCorePoolSize()I

    move-result v4

    .line 215
    if-nez v1, :cond_4

    .line 216
    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 217
    sub-int v1, v4, v0

    .line 218
    if-lez v1, :cond_4

    .line 219
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->YY()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    .line 220
    iget-object v1, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bzh;->setCorePoolSize(I)V

    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzh;->getCorePoolSize()I

    move-result v1

    .line 222
    iget v0, p0, Lcom/kingroot/kinguser/bzi;->bVt:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x2

    .line 223
    if-gt v0, v2, :cond_2

    move v0, v2

    .line 226
    :cond_2
    if-ge v0, v1, :cond_3

    move v0, v1

    .line 230
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bzh;->setMaximumPoolSize(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :goto_2
    if-nez v1, :cond_4

    .line 236
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$b;

    .line 237
    invoke-interface {v0}, Lcom/kingroot/kinguser/cgd$b;->amU()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 247
    :cond_4
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 240
    :cond_5
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bzi;->bVv:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public aka()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public ake()V
    .locals 4

    .prologue
    .line 803
    iget-object v1, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bzi;->bVA:Z

    .line 805
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/kingroot/kinguser/bzi;->bVz:J

    .line 806
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/kingroot/kinguser/bzi;->bVy:J

    .line 809
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b(Ljava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V
    .locals 11

    .prologue
    .line 356
    iget-object v10, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 364
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/bzi$a;

    const v3, 0x7fffffff

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/bzi$a;-><init>(Lcom/kingroot/kinguser/bzi;ILjava/lang/Runnable;Ljava/lang/String;JZLjava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzh;->execute(Ljava/lang/Runnable;)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzh;->getActiveCount()I

    move-result v0

    iget v2, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->akb()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 373
    iget v0, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    iget v2, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bzh;->setCorePoolSize(I)V

    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    iget v2, p0, Lcom/kingroot/kinguser/bzi;->bVt:I

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bzh;->setMaximumPoolSize(I)V

    .line 382
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/bzi;->bVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$a;

    .line 383
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/bzi;->bVu:Lcom/kingroot/kinguser/bzh;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bzh;->getActiveCount()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 379
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzi;->akd()V

    goto :goto_0

    .line 389
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 121
    iget-object v3, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bzi;->bVr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 124
    if-eqz v4, :cond_5

    .line 125
    check-cast p2, Lcom/kingroot/kinguser/bzi$a;

    .line 126
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v2

    iget v2, v2, Lcom/kingroot/kinguser/cgd$c;->priority:I

    .line 127
    if-gtz v2, :cond_2

    move v0, v1

    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 134
    const/4 v2, 0x0

    .line 135
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bzi$a;

    .line 137
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    .line 143
    :goto_1
    if-eqz v0, :cond_5

    .line 144
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bzi;->bVv:Z

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$b;

    .line 146
    invoke-interface {v0}, Lcom/kingroot/kinguser/cgd$b;->amT()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 129
    :cond_2
    if-gt v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 150
    :cond_3
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bzi;->bVo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$a;

    .line 151
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;)V

    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/kingroot/kinguser/cgd$c;->ced:J

    .line 155
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/kingroot/kinguser/cgd$c;->cee:J

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/bzi;->bVs:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p2}, Lcom/kingroot/kinguser/bzi$a;->aki()Lcom/kingroot/kinguser/cgd$c;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/cgd$c;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bzi;->bVv:Z

    .line 167
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public cN(J)V
    .locals 5

    .prologue
    .line 790
    iget-object v1, p0, Lcom/kingroot/kinguser/bzi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 791
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bzi;->bVA:Z

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/kingroot/kinguser/bzi;->bVz:J

    .line 793
    sput-wide p1, Lcom/kingroot/kinguser/bzi;->bVy:J

    .line 796
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public e(Ljava/lang/String;IJ)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 940
    invoke-static {p1, p2, p3, p4}, Lcom/kingroot/kinguser/bzj;->e(Ljava/lang/String;IJ)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
