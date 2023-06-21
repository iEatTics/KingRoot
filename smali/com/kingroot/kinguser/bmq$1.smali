.class final Lcom/kingroot/kinguser/bmq$1;
.super Lcom/kingroot/kinguser/bmq$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bmq;->a(Ljava/lang/String;ILjava/util/List;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bCm:Z

.field private synthetic bCn:Lcom/kingroot/kinguser/bmq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bmq;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/bmq$1;->bCm:Z

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bmq$b;-><init>(Lcom/kingroot/kinguser/bmq;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bmq$a;)V
    .locals 4

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afW()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afX()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afW()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmq;->ai(I)I

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bmq;->afV()V

    .line 136
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-interface {p1}, Lcom/kingroot/kinguser/bmq$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmq;->a(Lcom/kingroot/kinguser/bmq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCm:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afY()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-static {v2}, Lcom/kingroot/kinguser/bmq;->b(Lcom/kingroot/kinguser/bmq;)Lcom/kingroot/kinguser/bmq$b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmq;->a(Lcom/kingroot/kinguser/bmq;Lcom/kingroot/kinguser/bmq$b;)Lcom/kingroot/kinguser/bmq$b;

    .line 147
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afW()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 150
    :goto_0
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 137
    :catch_0
    move-exception v0

    .line 141
    invoke-interface {p1}, Lcom/kingroot/kinguser/bmq$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmq;->a(Lcom/kingroot/kinguser/bmq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_4
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCm:Z

    if-eqz v0, :cond_3

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afY()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-static {v2}, Lcom/kingroot/kinguser/bmq;->b(Lcom/kingroot/kinguser/bmq;)Lcom/kingroot/kinguser/bmq$b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bmq;->a(Lcom/kingroot/kinguser/bmq;Lcom/kingroot/kinguser/bmq$b;)Lcom/kingroot/kinguser/bmq$b;

    .line 147
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 149
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afW()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    goto :goto_0

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :catchall_3
    move-exception v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bmq$a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    iget-object v1, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-static {v1}, Lcom/kingroot/kinguser/bmq;->a(Lcom/kingroot/kinguser/bmq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_5
    iget-boolean v2, p0, Lcom/kingroot/kinguser/bmq$1;->bCm:Z

    if-eqz v2, :cond_5

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afY()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmq;->b(Lcom/kingroot/kinguser/bmq;)Lcom/kingroot/kinguser/bmq$b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/kingroot/kinguser/bmq$1;->bCn:Lcom/kingroot/kinguser/bmq;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bmq;->a(Lcom/kingroot/kinguser/bmq;Lcom/kingroot/kinguser/bmq$b;)Lcom/kingroot/kinguser/bmq$b;

    .line 147
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 149
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/bmq;->afW()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    throw v0

    .line 147
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method
