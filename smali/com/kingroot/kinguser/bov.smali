.class public final Lcom/kingroot/kinguser/bov;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bov$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile byZ:Ljava/util/LinkedList;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bov;->a:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bov;->byZ:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bov;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/kingroot/kinguser/bov;->a:J

    return-wide v0
.end method

.method public final a(IJ[BJ)V
    .locals 9

    iget-object v7, p0, Lcom/kingroot/kinguser/bov;->c:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/kingroot/kinguser/bov;->byZ:Ljava/util/LinkedList;

    long-to-int v0, p5

    new-array v4, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int v2, p5

    invoke-static {p4, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/kingroot/kinguser/bov$a;

    move v1, p1

    move-wide v2, p2

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/bov$a;-><init>(IJ[BJ)V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/kingroot/kinguser/bov;->a:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/kingroot/kinguser/bov;->a:J

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public final agN()Lcom/kingroot/kinguser/bov$a;
    .locals 6

    iget-object v1, p0, Lcom/kingroot/kinguser/bov;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bov;->byZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bov;->byZ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bov$a;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bov;->a:J

    iget-wide v4, v0, Lcom/kingroot/kinguser/bov$a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kingroot/kinguser/bov;->a:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v1, p0, Lcom/kingroot/kinguser/bov;->c:Ljava/lang/Object;

    monitor-enter v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bov;->agN()Lcom/kingroot/kinguser/bov$a;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
