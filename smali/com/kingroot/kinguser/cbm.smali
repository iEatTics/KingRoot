.class Lcom/kingroot/kinguser/cbm;
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
    .line 244
    iput-object p1, p0, Lcom/kingroot/kinguser/cbm;->bWK:Lcom/kingroot/kinguser/cbj;

    iput-object p2, p0, Lcom/kingroot/kinguser/cbm;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/kingroot/kinguser/cbm;->aUj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 3

    .prologue
    .line 253
    :try_start_0
    check-cast p5, Lcom/kingroot/kinguser/cl;

    .line 254
    iget-object v1, p0, Lcom/kingroot/kinguser/cbm;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    iget v0, p5, Lcom/kingroot/kinguser/cl;->retCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    iget-object v1, p0, Lcom/kingroot/kinguser/cbm;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cbm;->aUj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 261
    monitor-exit v1

    .line 263
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 259
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cbm;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/cbm;->aUj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 261
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
