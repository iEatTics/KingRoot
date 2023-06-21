.class Lcom/kingroot/kinguser/cbv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic aUj:Ljava/lang/Object;

.field final synthetic bWR:Lcom/kingroot/kinguser/cbu;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic yp:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cbu;Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/cbv;->bWR:Lcom/kingroot/kinguser/cbu;

    iput-object p2, p0, Lcom/kingroot/kinguser/cbv;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p3, p0, Lcom/kingroot/kinguser/cbv;->yp:J

    iput-object p5, p0, Lcom/kingroot/kinguser/cbv;->aUj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 50
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    instance-of v1, p5, Lcom/kingroot/kinguser/j;

    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    check-cast p5, Lcom/kingroot/kinguser/j;

    .line 57
    iget-object v1, p0, Lcom/kingroot/kinguser/cbv;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v2, p5, Lcom/kingroot/kinguser/j;->retCode:I

    if-nez v2, :cond_2

    iget-wide v2, p5, Lcom/kingroot/kinguser/j;->et:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/cbv;->yp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p5, Lcom/kingroot/kinguser/j;->eu:I

    if-ne v2, v0, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    iget-object v1, p0, Lcom/kingroot/kinguser/cbv;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cbv;->aUj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 59
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cbv;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/cbv;->aUj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 61
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
