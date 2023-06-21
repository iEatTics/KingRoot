.class public Lcom/kingroot/kinguser/cft;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cft$a;,
        Lcom/kingroot/kinguser/cft$b;,
        Lcom/kingroot/kinguser/cft$c;
    }
.end annotation


# instance fields
.field private cdB:Z

.field private cdC:Lcom/kingroot/kinguser/cft$a;

.field private cdD:J

.field private cdE:Lcom/kingroot/kinguser/cft$c;

.field private cdF:Lcom/kingroot/kinguser/cft$b;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cft$c;Lcom/kingroot/kinguser/cft$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cft;->cdB:Z

    .line 28
    iput-object v2, p0, Lcom/kingroot/kinguser/cft;->cdC:Lcom/kingroot/kinguser/cft$a;

    .line 29
    iput-object v2, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cft;->cdD:J

    .line 31
    iput-object v2, p0, Lcom/kingroot/kinguser/cft;->cdE:Lcom/kingroot/kinguser/cft$c;

    .line 32
    iput-object v2, p0, Lcom/kingroot/kinguser/cft;->cdF:Lcom/kingroot/kinguser/cft$b;

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/cft$1;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cft$1;-><init>(Lcom/kingroot/kinguser/cft;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cft;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/kingroot/kinguser/cft;->cdE:Lcom/kingroot/kinguser/cft$c;

    .line 65
    iput-object p3, p0, Lcom/kingroot/kinguser/cft;->cdF:Lcom/kingroot/kinguser/cft$b;

    .line 66
    new-instance v0, Lcom/kingroot/kinguser/cft$a;

    invoke-direct {v0, p0, v2}, Lcom/kingroot/kinguser/cft$a;-><init>(Lcom/kingroot/kinguser/cft;Lcom/kingroot/kinguser/cft$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cft;->cdC:Lcom/kingroot/kinguser/cft$a;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cft;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/cft;->amD()V

    return-void
.end method

.method private amD()V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->cdE:Lcom/kingroot/kinguser/cft$c;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-wide v2, p0, Lcom/kingroot/kinguser/cft;->cdD:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/kingroot/kinguser/cft;->cdE:Lcom/kingroot/kinguser/cft$c;

    invoke-interface {v2}, Lcom/kingroot/kinguser/cft$c;->amz()V

    .line 124
    iput-wide v0, p0, Lcom/kingroot/kinguser/cft;->cdD:J

    .line 129
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cft;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cft;)Lcom/kingroot/kinguser/cft$b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->cdF:Lcom/kingroot/kinguser/cft$b;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cft;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 6

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    const-string v1, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfr;->aa(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    const-string v1, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/kingroot/kinguser/cft;->cdF:Lcom/kingroot/kinguser/cft$b;

    invoke-interface {v4}, Lcom/kingroot/kinguser/cft$b;->amA()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cfr;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 8

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->cdF:Lcom/kingroot/kinguser/cft$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/cft$b;->amA()I

    move-result v0

    .line 76
    iget-boolean v1, p0, Lcom/kingroot/kinguser/cft;->cdB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 79
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/cft;->cdC:Lcom/kingroot/kinguser/cft$a;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/cft;->cdB:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    const-string v2, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    const-wide/16 v4, 0x3e8

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v1, v2, v4, v5}, Lcom/kingroot/kinguser/cfr;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    const-string v1, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfr;->aa(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cft;->cdB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 108
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cft;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/cft;->cdC:Lcom/kingroot/kinguser/cft$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cft;->cdB:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
