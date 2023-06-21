.class Lcom/kingroot/kinguser/bkv$1;
.super Lcom/kingroot/kinguser/bkv$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bkv;->b(Ljava/lang/String;ILjava/util/List;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic bzo:Lcom/kingroot/kinguser/bkv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bkv;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/bkv$1;->a:Z

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bkv$b;-><init>(Lcom/kingroot/kinguser/bkv;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingroot/kinguser/bkv$a;)V
    .locals 4

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nC()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nD()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nC()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bkv;->bF(I)I

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv$a;)V

    .line 135
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    invoke-interface {p1}, Lcom/kingroot/kinguser/bkv$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-static {v0}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bkv$1;->a:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nE()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-static {v2}, Lcom/kingroot/kinguser/bkv;->b(Lcom/kingroot/kinguser/bkv;)Lcom/kingroot/kinguser/bkv$b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv;Lcom/kingroot/kinguser/bkv$b;)Lcom/kingroot/kinguser/bkv$b;

    .line 146
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nC()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 150
    :goto_0
    return-void

    .line 135
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_5
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 140
    invoke-interface {p1}, Lcom/kingroot/kinguser/bkv$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-static {v0}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_6
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bkv$1;->a:Z

    if-eqz v0, :cond_3

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nE()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-static {v2}, Lcom/kingroot/kinguser/bkv;->b(Lcom/kingroot/kinguser/bkv;)Lcom/kingroot/kinguser/bkv$b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv;Lcom/kingroot/kinguser/bkv$b;)Lcom/kingroot/kinguser/bkv$b;

    .line 146
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 148
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nC()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 140
    :catchall_3
    move-exception v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bkv$a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-static {v1}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 142
    :try_start_9
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bkv$1;->a:Z

    if-eqz v2, :cond_5

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nE()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    invoke-static {v3}, Lcom/kingroot/kinguser/bkv;->b(Lcom/kingroot/kinguser/bkv;)Lcom/kingroot/kinguser/bkv$b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    :cond_5
    iget-object v2, p0, Lcom/kingroot/kinguser/bkv$1;->bzo:Lcom/kingroot/kinguser/bkv;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bkv;->a(Lcom/kingroot/kinguser/bkv;Lcom/kingroot/kinguser/bkv$b;)Lcom/kingroot/kinguser/bkv$b;

    .line 146
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 148
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/bkv;->nC()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    throw v0

    .line 146
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method
