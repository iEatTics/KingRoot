.class Lcom/kingroot/kinguser/bee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bee$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final bkO:Landroid/os/Handler;


# instance fields
.field private final avz:Ljava/lang/Object;

.field bkG:Lcom/kingroot/kinguser/bee;

.field private bkH:Lcom/kingroot/kinguser/bed;

.field private bkI:Ljava/util/concurrent/Future;

.field private bkJ:J

.field private bkK:J

.field private bkL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private bkM:Ljava/lang/Runnable;

.field private bkN:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_KJobHolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bee;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KJobManager-block-checker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/kingroot/kinguser/bee;->bkO:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/bed;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/bed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkI:Ljava/util/concurrent/Future;

    .line 35
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/kingroot/kinguser/bee;->bkN:J

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bed;

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bee;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bee;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/kingroot/kinguser/bee;->bkK:J

    return-wide v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bee;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/kingroot/kinguser/bee;->bkN:J

    return-wide v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bee;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method


# virtual methods
.method Zg()Lcom/kingroot/kinguser/bed;
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Zh()Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkI:Ljava/util/concurrent/Future;

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method Zi()J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 124
    iget-object v2, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    iget-wide v4, p0, Lcom/kingroot/kinguser/bee;->bkJ:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    .line 126
    monitor-exit v2

    .line 133
    :goto_0
    return-wide v0

    .line 129
    :cond_0
    iget-wide v4, p0, Lcom/kingroot/kinguser/bee;->bkK:J

    iget-wide v6, p0, Lcom/kingroot/kinguser/bee;->bkJ:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 130
    monitor-exit v2

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/bee;->bkK:J

    iget-wide v4, p0, Lcom/kingroot/kinguser/bee;->bkJ:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Ljava/util/concurrent/Future;)Lcom/kingroot/kinguser/bee;
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/bee;->bkI:Ljava/util/concurrent/Future;

    .line 119
    monitor-exit v1

    return-object p0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/kingroot/kinguser/bed;)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/Thread;)V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkL:Ljava/lang/ref/WeakReference;

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cs(J)V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iput-wide p1, p0, Lcom/kingroot/kinguser/bee;->bkJ:J

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ct(J)V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iput-wide p1, p0, Lcom/kingroot/kinguser/bee;->bkN:J

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkL:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final recycle()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkI:Ljava/util/concurrent/Future;

    .line 151
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kingroot/kinguser/bee;->bkJ:J

    .line 152
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/kingroot/kinguser/bee;->bkK:J

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkG:Lcom/kingroot/kinguser/bee;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkL:Ljava/lang/ref/WeakReference;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkM:Ljava/lang/Runnable;

    .line 156
    const-wide/32 v2, -0x80000000

    iput-wide v2, p0, Lcom/kingroot/kinguser/bee;->bkN:J

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bee$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bee$a;-><init>(Lcom/kingroot/kinguser/bee;Lcom/kingroot/kinguser/bee$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bee;->bkM:Ljava/lang/Runnable;

    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bee;->bkK:J

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/beb;->bkn:Lcom/kingroot/kinguser/beb;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bed;->a(Lcom/kingroot/kinguser/beb;)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->onRunning()V

    .line 60
    iget-wide v0, p0, Lcom/kingroot/kinguser/bee;->bkN:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkM:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/kingroot/kinguser/bee;->bkO:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->bkM:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bee;->bkN:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/beb;->bko:Lcom/kingroot/kinguser/beb;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bed;->a(Lcom/kingroot/kinguser/beb;)V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->xr()V

    .line 68
    sget-object v0, Lcom/kingroot/kinguser/bee;->bkO:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->bkM:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 72
    return-void

    .line 66
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/beb;->bko:Lcom/kingroot/kinguser/beb;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bed;->a(Lcom/kingroot/kinguser/beb;)V

    .line 67
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bed;->xr()V

    .line 68
    sget-object v1, Lcom/kingroot/kinguser/bee;->bkO:Landroid/os/Handler;

    iget-object v2, p0, Lcom/kingroot/kinguser/bee;->bkM:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/kingroot/kinguser/bee;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "Job is null"

    monitor-exit v1

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bee;->bkH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
