.class Lcom/kingroot/kinguser/cbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic aUj:Ljava/lang/Object;

.field final synthetic bWK:Lcom/kingroot/kinguser/cbj;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cbj;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kingroot/kinguser/cbl;->bWK:Lcom/kingroot/kinguser/cbj;

    iput-object p2, p0, Lcom/kingroot/kinguser/cbl;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    .line 206
    :try_start_0
    instance-of v0, p5, Lcom/kingroot/kinguser/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v1

    .line 216
    :goto_0
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 209
    :cond_0
    :try_start_2
    check-cast p5, Lcom/kingroot/kinguser/d;

    .line 210
    iget-object v1, p0, Lcom/kingroot/kinguser/cbl;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    iget v0, p5, Lcom/kingroot/kinguser/d;->retCode:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 212
    iget-object v1, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 212
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_4
    iget-object v2, p0, Lcom/kingroot/kinguser/cbl;->aUj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 214
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
