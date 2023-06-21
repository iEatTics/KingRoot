.class public final Lcom/kingroot/kinguser/bpk;
.super Ljava/util/concurrent/PriorityBlockingQueue;


# instance fields
.field private bHA:Lcom/kingroot/kinguser/bpl;

.field private bHB:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    iput-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHB:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    iput-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHB:Ljava/lang/Integer;

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/PriorityBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpl;->a()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bpl;)V
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    return-void
.end method

.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpl;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Executor not running, can\'t force a command into the queue"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpl;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpl;->getMaximumPoolSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpl;->c()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpl;->getPoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpl;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpl;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bpk;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public final remainingCapacity()I
    .locals 1

    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public final synthetic take()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpk;->bHA:Lcom/kingroot/kinguser/bpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpl;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/bpk;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method
