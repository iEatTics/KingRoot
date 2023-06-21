.class public Lcom/kingroot/kinguser/cey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cey$a;
    }
.end annotation


# static fields
.field private static bZk:Lcom/kingroot/kinguser/cey;


# instance fields
.field private bZl:I

.field private bZm:J

.field private bZn:Z

.field private bZo:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cey;->bZk:Lcom/kingroot/kinguser/cey;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x6

    iput v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    .line 54
    iput-wide v2, p0, Lcom/kingroot/kinguser/cey;->bZm:J

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cey;->bZn:Z

    .line 56
    iput-wide v2, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    .line 58
    iput-object v1, p0, Lcom/kingroot/kinguser/cey;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    iput-object v1, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    .line 63
    const-string v1, "Shark-Network-Detect-HandlerThread"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bzf;->nD(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/cey$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/cey;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cey$a;-><init>(Lcom/kingroot/kinguser/cey;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    .line 69
    invoke-static {}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alR()Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cey;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cey;)Z
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/cey;->alw()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized alt()Lcom/kingroot/kinguser/cey;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/kingroot/kinguser/cey;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cey;->bZk:Lcom/kingroot/kinguser/cey;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/cey;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cey;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cey;->bZk:Lcom/kingroot/kinguser/cey;

    .line 49
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cey;->bZk:Lcom/kingroot/kinguser/cey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private alv()Z
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private alw()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    iput-boolean v1, p0, Lcom/kingroot/kinguser/cey;->bZn:Z

    .line 167
    const/4 v0, 0x0

    .line 169
    :try_start_0
    new-instance v3, Lcom/kingroot/kinguser/cey$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/cey$1;-><init>(Lcom/kingroot/kinguser/cey;)V

    invoke-static {v3}, Lcom/kingroot/kinguser/cgy;->a(Lcom/kingroot/kinguser/cgy$a;)Ljava/lang/String;
    :try_end_0
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_0
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cey;->bZn:Z

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 192
    :goto_1
    return v0

    .line 183
    :catch_0
    move-exception v3

    const/4 v3, -0x3

    iput v3, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    goto :goto_0

    :cond_0
    move v0, v2

    .line 189
    goto :goto_1
.end method

.method public static ld(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public alu()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, -0x4

    iput v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cey;->bZm:J

    .line 100
    return-void
.end method

.method public cP(J)Z
    .locals 5

    .prologue
    .line 107
    iget v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/cey;->bZm:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(ZZ)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-direct {p0}, Lcom/kingroot/kinguser/cey;->alv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    .line 140
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    return v0

    .line 121
    :cond_1
    iget-wide v2, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    move v0, v1

    .line 124
    :goto_1
    if-eqz p1, :cond_3

    .line 125
    invoke-direct {p0}, Lcom/kingroot/kinguser/cey;->alw()Z

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 127
    :cond_3
    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 129
    iget-object v2, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    iget-object v2, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    :cond_4
    iget v1, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, -0x5

    iput v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    goto :goto_0
.end method

.method public onConnected()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xea60

    const/4 v1, 0x1

    .line 202
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cey;->alu()V

    .line 203
    iget-wide v2, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kingroot/kinguser/cey;->bZo:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    move v0, v1

    .line 205
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/cey;->bZn:Z

    if-eqz v0, :cond_2

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    :goto_1
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cey;->alu()V

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/cey;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/cey;->bZl:I

    .line 222
    return-void
.end method
