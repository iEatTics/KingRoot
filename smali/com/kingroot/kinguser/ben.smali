.class public Lcom/kingroot/kinguser/ben;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ben$a;,
        Lcom/kingroot/kinguser/ben$b;,
        Lcom/kingroot/kinguser/ben$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blh:Lcom/kingroot/kinguser/bec;

.field private final blp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bee;",
            ">;"
        }
    .end annotation
.end field

.field private final blq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ben$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_PriorityExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ben;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIJLcom/kingroot/kinguser/ben$b;Ljava/util/concurrent/TimeUnit;ILcom/kingroot/kinguser/bec;)V
    .locals 11

    .prologue
    .line 35
    new-instance v10, Lcom/kingroot/kinguser/bel;

    move/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v10, v0, v1}, Lcom/kingroot/kinguser/bel;-><init>(ILcom/kingroot/kinguser/bec;)V

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 28
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    .line 42
    new-instance v2, Lcom/kingroot/kinguser/ben$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ben$1;-><init>(Lcom/kingroot/kinguser/ben;)V

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/ben;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 62
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/kingroot/kinguser/ben;->blh:Lcom/kingroot/kinguser/bec;

    .line 63
    return-void
.end method

.method private f(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bee;
    .locals 3

    .prologue
    .line 150
    instance-of v0, p1, Lcom/kingroot/kinguser/ben$c;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/ben$c;

    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/ben$c;

    invoke-static {p1}, Lcom/kingroot/kinguser/ben$c;->b(Lcom/kingroot/kinguser/ben$c;)Lcom/kingroot/kinguser/bee;

    move-result-object v0

    return-object v0
.end method

.method private l(Lcom/kingroot/kinguser/bed;)Ljava/util/Collection;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bed;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/kingroot/kinguser/bee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v2, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bee;

    .line 226
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    return-object v1
.end method

.method private m(Lcom/kingroot/kinguser/bed;)Ljava/util/Collection;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bed;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/kingroot/kinguser/bee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ben;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    .line 241
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 242
    instance-of v1, v0, Lcom/kingroot/kinguser/ben$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/kingroot/kinguser/ben$c;

    invoke-static {v1}, Lcom/kingroot/kinguser/ben$c;->b(Lcom/kingroot/kinguser/ben$c;)Lcom/kingroot/kinguser/bee;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 243
    check-cast v0, Lcom/kingroot/kinguser/ben$c;

    invoke-static {v0}, Lcom/kingroot/kinguser/ben$c;->b(Lcom/kingroot/kinguser/ben$c;)Lcom/kingroot/kinguser/bee;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    return-object v2
.end method


# virtual methods
.method Zu()I
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ben;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/ben$a;)V
    .locals 2

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    monitor-exit v1

    .line 259
    :cond_0
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ben;->f(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bee;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ben$a;

    .line 112
    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ben$a;->a(Lcom/kingroot/kinguser/ben;Lcom/kingroot/kinguser/bee;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    instance-of v0, p1, Lcom/kingroot/kinguser/ben$c;

    if-eqz v0, :cond_1

    .line 118
    check-cast p1, Lcom/kingroot/kinguser/ben$c;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ben$c;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v2, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    monitor-enter v2

    .line 127
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    if-eqz p2, :cond_2

    .line 131
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bed;->setException(Ljava/lang/Throwable;)V

    .line 132
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bed;->g(Ljava/lang/Throwable;)V

    .line 137
    :cond_2
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kingroot/kinguser/bed;->bkD:Z

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bej;->g(Lcom/kingroot/kinguser/bed;)V

    .line 140
    :cond_3
    invoke-static {v1}, Lcom/kingroot/kinguser/bef;->e(Lcom/kingroot/kinguser/bee;)V

    .line 141
    return-void

    .line 128
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 86
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/ben;->f(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bee;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/bee;->a(Ljava/lang/Thread;)V

    .line 89
    iget-object v2, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    monitor-enter v2

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ben$a;

    .line 91
    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ben$a;->b(Lcom/kingroot/kinguser/ben;Lcom/kingroot/kinguser/bee;)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    iget-object v2, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    monitor-enter v2

    .line 99
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    monitor-exit v2

    .line 103
    return-void

    .line 102
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public h(Lcom/kingroot/kinguser/bed;)Z
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ben;->l(Lcom/kingroot/kinguser/bed;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Lcom/kingroot/kinguser/bed;)Z
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ben;->m(Lcom/kingroot/kinguser/bed;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(Lcom/kingroot/kinguser/bed;)Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ben;->i(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ben;->h(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(Lcom/kingroot/kinguser/bed;)Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bed;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ben;->m(Lcom/kingroot/kinguser/bed;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ben;->l(Lcom/kingroot/kinguser/bed;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p1

    check-cast v0, Lcom/kingroot/kinguser/bee;

    .line 70
    new-instance v1, Lcom/kingroot/kinguser/ben$c;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/ben$c;-><init>(Lcom/kingroot/kinguser/bee;)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/ben;->execute(Ljava/lang/Runnable;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bee;->cs(J)V

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/kingroot/kinguser/bee;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ben;->i(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v2, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ben;->blp:Ljava/util/List;

    check-cast p1, Lcom/kingroot/kinguser/bee;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    monitor-exit v2

    .line 79
    :cond_0
    return-object v1

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected terminated()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->terminated()V

    .line 146
    return-void
.end method
