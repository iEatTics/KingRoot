.class public abstract Lcom/kingroot/kinguser/aqh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aqb;


# instance fields
.field private final aLd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aLe:J

.field private aLf:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aqh;->aLd:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/kingroot/kinguser/aqh;->aLe:J

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aqh;->aLf:Z

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aqh;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh;->aLd:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public abstract ME()Ljava/lang/String;
.end method

.method public abstract MF()Ljava/lang/String;
.end method

.method protected abstract MG()Z
.end method

.method protected abstract MH()Z
.end method

.method public final MI()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh;->aLd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/aqh;->aLf:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized MJ()Z
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqh;->MH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 115
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :catch_0
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public MK()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public ML()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/kingroot/kinguser/aqh;->aLe:J

    return-wide v0
.end method

.method public final declared-synchronized My()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 64
    new-instance v2, Lcom/kingroot/kinguser/aqh$1;

    invoke-direct {v2, p0, v1}, Lcom/kingroot/kinguser/aqh$1;-><init>(Lcom/kingroot/kinguser/aqh;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/ash;->execute(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aqh;->ML()J

    move-result-wide v2

    .line 87
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 89
    :goto_0
    if-eqz v1, :cond_1

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aqh;->cH(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_1
    monitor-exit p0

    return v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aqh;->aLd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bV(J)V
    .locals 1

    .prologue
    .line 192
    iput-wide p1, p0, Lcom/kingroot/kinguser/aqh;->aLe:J

    .line 193
    return-void
.end method

.method public cH(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aqh;->aLf:Z

    .line 201
    return-void
.end method

.method public abstract getIconDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method protected h(JI)Z
    .locals 7

    .prologue
    .line 120
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    move-wide v0, p1

    .line 124
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    goto :goto_0
.end method

.method public ignore()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public vs()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method
