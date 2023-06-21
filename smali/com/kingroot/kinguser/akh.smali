.class public Lcom/kingroot/kinguser/akh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final avl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final avm:Ljava/lang/Runnable;

.field private static final avn:Lcom/kingroot/kinguser/control/SilentModeDisabledReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/akh;->avl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/akh$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akh$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akh;->avm:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/control/SilentModeDisabledReceiver;

    invoke-direct {v0}, Lcom/kingroot/kinguser/control/SilentModeDisabledReceiver;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akh;->avn:Lcom/kingroot/kinguser/control/SilentModeDisabledReceiver;

    return-void
.end method

.method private static Aq()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/akh;->avn:Lcom/kingroot/kinguser/control/SilentModeDisabledReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.kingroot.kinguser.ACTION_SILENT_DISABLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method private static Ar()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/akh;->avn:Lcom/kingroot/kinguser/control/SilentModeDisabledReceiver;

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    return-void
.end method

.method private static As()V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 69
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "com.kingroot.kinguser.ACTION_SILENT_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public static At()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Av()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/akh;->aT(Z)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Au()Z
    .locals 2

    .prologue
    .line 127
    sget-object v1, Lcom/kingroot/kinguser/akh;->avl:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akh;->avl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static Av()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/akh;->Aw()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 147
    if-eq v1, v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static Aw()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.kingroot.kinguser.activitys.SliderMainActivity-Entry"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static aT(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 84
    sget-object v1, Lcom/kingroot/kinguser/akh;->avl:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akh;->avl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p0, :cond_0

    .line 87
    monitor-exit v1

    .line 124
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/akh;->avl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 93
    if-eqz p0, :cond_2

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/aki;->Ax()Lcom/kingroot/kinguser/aki;

    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Aq()V

    .line 101
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 103
    const/4 v0, 0x0

    sget-object v2, Lcom/kingroot/kinguser/akh;->avm:Ljava/lang/Runnable;

    const-wide/32 v4, 0xdbba00

    invoke-static {v0, v2, v4, v5}, Lcom/kingroot/kinguser/ayd;->a(ILjava/lang/Runnable;J)Z

    .line 123
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/kingroot/kinguser/akh;->aU(Z)V

    .line 111
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/ayd;->hF(I)V

    .line 118
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Ar()V

    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/akh;->As()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static aU(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 140
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Aw()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz p0, :cond_0

    move v0, v1

    .line 139
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/zh;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 143
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
