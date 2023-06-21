.class public Lcom/kingroot/kinguser/cbj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cbj$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cbk;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/cbj;-><init>()V

    return-void
.end method

.method public static akz()Lcom/kingroot/kinguser/cbj;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/cbj$a;->akA()Lcom/kingroot/kinguser/cbj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cg;)Z
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/cg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 235
    if-nez p1, :cond_0

    .line 273
    :goto_0
    return v0

    .line 238
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/cl;

    invoke-direct {v1}, Lcom/kingroot/kinguser/cl;-><init>()V

    .line 239
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 240
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    const/16 v4, 0x41d

    new-instance v5, Lcom/kingroot/kinguser/cbm;

    invoke-direct {v5, p0, v2, v3}, Lcom/kingroot/kinguser/cbm;-><init>(Lcom/kingroot/kinguser/cbj;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, p1, v1, v5}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 266
    monitor-enter v3

    .line 268
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 269
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;",
            "Lcom/kingroot/kinguser/c;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-static {p1}, Lcom/kingroot/kinguser/gu;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return v0

    .line 193
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/a;-><init>()V

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/kingroot/kinguser/a;->cb:Ljava/util/ArrayList;

    .line 195
    iput-object p2, v1, Lcom/kingroot/kinguser/a;->dG:Lcom/kingroot/kinguser/c;

    .line 197
    new-instance v2, Lcom/kingroot/kinguser/d;

    invoke-direct {v2}, Lcom/kingroot/kinguser/d;-><init>()V

    .line 198
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 199
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    const/16 v5, 0xe43

    new-instance v6, Lcom/kingroot/kinguser/cbl;

    invoke-direct {v6, p0, v3, v4}, Lcom/kingroot/kinguser/cbl;-><init>(Lcom/kingroot/kinguser/cbj;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v1, v2, v6}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 219
    monitor-enter v4

    .line 221
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public bG(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/cbj;->b(Ljava/util/List;Lcom/kingroot/kinguser/c;)Z

    move-result v0

    return v0
.end method
