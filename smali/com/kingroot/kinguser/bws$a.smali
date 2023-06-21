.class Lcom/kingroot/kinguser/bws$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private bRr:J

.field private final bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bSC:I

.field private bSD:J

.field final synthetic bSE:Lcom/kingroot/kinguser/bws;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bws;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/bws$a;->bSE:Lcom/kingroot/kinguser/bws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bRr:J

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/bws$a;->bSC:I

    .line 33
    iput-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bSD:J

    .line 35
    return-void
.end method


# virtual methods
.method aiS()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/kingroot/kinguser/bws$a;->bRr:J

    return-wide v0
.end method

.method aiT()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/kingroot/kinguser/bws$a;->bSD:J

    return-wide v0
.end method

.method cL(J)V
    .locals 7

    .prologue
    .line 38
    iget-object v1, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bRr:J

    .line 44
    long-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    sget-wide v4, Lcom/kingroot/kinguser/bwr;->bSt:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/kingroot/kinguser/bws$a;->bSC:I

    .line 45
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    .prologue
    .line 70
    iget-object v1, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    monitor-exit v1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/kingroot/kinguser/bwv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/kingroot/kinguser/bwv;-><init>(Landroid/hardware/SensorEvent;J)V

    .line 87
    iget-wide v2, v1, Lcom/kingroot/kinguser/bwv;->timestamp:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/bws$a;->bRr:J

    sub-long/2addr v2, v4

    .line 88
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 94
    iget v4, v1, Lcom/kingroot/kinguser/bwv;->bSM:I

    .line 95
    sget-wide v6, Lcom/kingroot/kinguser/bwr;->bSt:J

    div-long/2addr v2, v6

    long-to-int v2, v2

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSE:Lcom/kingroot/kinguser/bws;

    invoke-static {v0}, Lcom/kingroot/kinguser/bws;->a(Lcom/kingroot/kinguser/bws;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSE:Lcom/kingroot/kinguser/bws;

    invoke-static {v0}, Lcom/kingroot/kinguser/bws;->a(Lcom/kingroot/kinguser/bws;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwu;

    .line 100
    if-nez v0, :cond_2

    .line 101
    new-instance v0, Lcom/kingroot/kinguser/bwu;

    sget v5, Lcom/kingroot/kinguser/bwr;->bSu:I

    iget v6, p0, Lcom/kingroot/kinguser/bws$a;->bSC:I

    invoke-direct {v0, v4, v5, v6}, Lcom/kingroot/kinguser/bwu;-><init>(III)V

    .line 102
    iget-object v5, p0, Lcom/kingroot/kinguser/bws$a;->bSE:Lcom/kingroot/kinguser/bws;

    invoke-static {v5}, Lcom/kingroot/kinguser/bws;->a(Lcom/kingroot/kinguser/bws;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/bwu;->a(ILcom/kingroot/kinguser/bwv;)Z

    .line 106
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 75
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method stopListening()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 49
    iget-object v1, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bws$a;->bSB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/bws$a;->bRr:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bSD:J

    .line 54
    iget-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bSD:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bSD:J

    .line 55
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kingroot/kinguser/bws$a;->bRr:J

    .line 56
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
