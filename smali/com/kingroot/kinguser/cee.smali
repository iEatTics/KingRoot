.class public Lcom/kingroot/kinguser/cee;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cee$a;,
        Lcom/kingroot/kinguser/cee$b;
    }
.end annotation


# static fields
.field private static bXU:Lcom/kingroot/kinguser/cee;

.field private static lock:Ljava/lang/Object;


# instance fields
.field bXT:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/cee$a;",
            ">;"
        }
    .end annotation
.end field

.field private bXV:Lcom/kingroot/kinguser/cee$b;

.field private context:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cee;->bXU:Lcom/kingroot/kinguser/cee;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cee;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cee;->mHandler:Landroid/os/Handler;

    .line 29
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cee;->bXT:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cee;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/cee$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cee$1;-><init>(Lcom/kingroot/kinguser/cee;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/cee;->a(Lcom/kingroot/kinguser/cee$b;)V

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cee;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/cee;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static akW()Lcom/kingroot/kinguser/cee;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/cee;->bXU:Lcom/kingroot/kinguser/cee;

    if-nez v0, :cond_1

    .line 61
    sget-object v1, Lcom/kingroot/kinguser/cee;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cee;->bXU:Lcom/kingroot/kinguser/cee;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/cee;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cee;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cee;->bXU:Lcom/kingroot/kinguser/cee;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cee;->bXU:Lcom/kingroot/kinguser/cee;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cee$b;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/cee;->bXV:Lcom/kingroot/kinguser/cee$b;

    .line 72
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/cee$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cee$a;-><init>(Lcom/kingroot/kinguser/cee;)V

    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iput-object p4, v0, Lcom/kingroot/kinguser/cee$a;->bcH:Ljava/lang/Runnable;

    .line 88
    iput-object p1, v0, Lcom/kingroot/kinguser/cee$a;->action:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/cee;->bXT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 95
    iget-object v2, p0, Lcom/kingroot/kinguser/cee;->bXV:Lcom/kingroot/kinguser/cee$b;

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/kingroot/kinguser/cee;->bXV:Lcom/kingroot/kinguser/cee$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-interface {v2, p1, v4, v5}, Lcom/kingroot/kinguser/cee$b;->q(Ljava/lang/String;J)V

    .line 98
    :cond_0
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public nI(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/cee;->bXV:Lcom/kingroot/kinguser/cee$b;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/cee;->bXV:Lcom/kingroot/kinguser/cee$b;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cee$b;->nJ(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cee;->bXT:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cee$a;

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/kingroot/kinguser/cfr;->aa(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/kingroot/kinguser/cee;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    :cond_1
    return-void
.end method
