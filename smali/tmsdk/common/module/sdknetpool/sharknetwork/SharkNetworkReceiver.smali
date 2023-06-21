.class public Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;
.super Ltmsdk/common/BaseTMSReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$b;,
        Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;
    }
.end annotation


# static fields
.field private static cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;


# instance fields
.field private caW:J

.field private caX:Z

.field private caY:Landroid/net/NetworkInfo$State;

.field private caZ:Ljava/lang/String;

.field private cba:Ljava/lang/String;

.field private cbb:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;",
            ">;"
        }
    .end annotation
.end field

.field private cbc:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$b;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ltmsdk/common/BaseTMSReceiver;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caW:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caX:Z

    .line 48
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caY:Landroid/net/NetworkInfo$State;

    .line 49
    iput-object v2, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caZ:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cba:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbb:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbc:Ljava/util/LinkedList;

    .line 61
    new-instance v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$1;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$1;-><init>(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private KD()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    .line 89
    new-instance v1, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$2;

    invoke-direct {v1, p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$2;-><init>(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)V

    const-string v2, "network_change"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method static synthetic a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->KD()V

    return-void
.end method

.method public static alR()Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-direct {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;-><init>()V

    sput-object v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    invoke-direct {v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alU()V

    .line 84
    sget-object v0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbd:Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private alS()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    .line 112
    new-instance v1, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$3;

    invoke-direct {v1, p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$3;-><init>(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)V

    const-string v2, "network_disconnected"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private alT()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    .line 136
    new-instance v1, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$4;

    invoke-direct {v1, p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$4;-><init>(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)V

    const-string v2, "network_connected"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->b(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private alU()V
    .locals 1

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0, v0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->ct(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbc:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbb:Ljava/util/LinkedList;

    return-object v0
.end method

.method private declared-synchronized ct(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caX:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 284
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caY:Landroid/net/NetworkInfo$State;

    .line 287
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caZ:Ljava/lang/String;

    .line 288
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cba:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_0
    :try_start_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 304
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caW:J

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caX:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 291
    :cond_1
    :try_start_3
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caY:Landroid/net/NetworkInfo$State;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$a;)V
    .locals 2

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbb:Ljava/util/LinkedList;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbb:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbb:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$b;)V
    .locals 2

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbc:Ljava/util/LinkedList;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbc:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cbc:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-wide v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caW:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caW:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 235
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/cey;->alt()Lcom/kingroot/kinguser/cey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cey;->alu()V

    .line 238
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 242
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 247
    const-string v1, "networkInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 248
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 260
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_5

    .line 261
    iget-object v3, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caY:Landroid/net/NetworkInfo$State;

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_4

    .line 263
    invoke-direct {p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alT()V

    .line 272
    :cond_4
    :goto_1
    iput-object v1, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caY:Landroid/net/NetworkInfo$State;

    .line 273
    iput-object v2, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caZ:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->cba:Ljava/lang/String;

    goto :goto_0

    .line 265
    :cond_5
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_4

    .line 266
    iget-object v3, p0, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->caY:Landroid/net/NetworkInfo$State;

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_4

    .line 268
    invoke-direct {p0}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alS()V

    goto :goto_1
.end method
