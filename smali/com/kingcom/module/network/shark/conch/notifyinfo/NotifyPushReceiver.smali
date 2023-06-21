.class public Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static gn()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;

    invoke-direct {v0}, Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;-><init>()V

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string v2, "com.kingcom.action.NOTIFY_PUSH_CLICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/bzu;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 29
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    const-string v1, "com.kingcom.action.NOTIFY_PUSH_CLICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "extra_task_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 38
    const-string v0, "extra_notify_push_click"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 39
    if-eqz v0, :cond_0

    .line 42
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_2
    new-instance v0, Lcom/kingroot/kinguser/pw;

    invoke-direct {v0, p0, v2, v3}, Lcom/kingroot/kinguser/pw;-><init>(Lcom/kingcom/module/network/shark/conch/notifyinfo/NotifyPushReceiver;J)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gs;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    goto :goto_2
.end method
