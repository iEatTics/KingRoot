.class public Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# static fields
.field private static final ZE:Landroid/os/Handler;

.field private static ZF:Lcom/kingroot/kinguser/aao$a;

.field private static ZG:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZE:Landroid/os/Handler;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZG:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method public static ah(Z)V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/aao;->a(Landroid/content/ComponentName;Z)Lcom/kingroot/kinguser/aao$a;

    move-result-object v0

    .line 139
    if-eqz p0, :cond_0

    .line 140
    sget-object v1, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZE:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 141
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 142
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    invoke-static {}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->rh()V

    .line 149
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aao$a;)Lcom/kingroot/kinguser/aao$a;
    .locals 0

    .prologue
    .line 29
    sput-object p0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZF:Lcom/kingroot/kinguser/aao$a;

    return-object p0
.end method

.method private rg()V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 112
    const/16 v1, 0x20

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 113
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 114
    const/4 v1, 0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 120
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/feedback/eup/CrashReport;->handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    goto :goto_0
.end method

.method private static rh()V
    .locals 4

    .prologue
    .line 154
    sget-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZE:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService$2;

    invoke-direct {v1}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService$2;-><init>()V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    return-void
.end method

.method static synthetic ri()Lcom/kingroot/kinguser/aao$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZF:Lcom/kingroot/kinguser/aao$a;

    return-object v0
.end method

.method static synthetic rj()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZG:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 51
    packed-switch v0, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 58
    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_1
    if-eqz v0, :cond_1

    .line 69
    :try_start_1
    const-class v3, Landroid/app/Dialog;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Landroid/widget/PopupWindow;

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Landroid/view/Menu;

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_1
    :goto_2
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 80
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 81
    invoke-static {}, Lcom/kingroot/kinguser/abp;->qW()Lcom/kingroot/kinguser/abp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abp;->d(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    .line 61
    :catch_0
    move-exception v3

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    goto :goto_2

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public onInterrupt()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 104
    sget-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    invoke-direct {p0}, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->rg()V

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/abr;->rk()Lcom/kingroot/kinguser/abr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abr;->ak(Z)V

    .line 108
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    sget-object v0, Lcom/kingroot/common/utils/system/monitor/top/TopAppMonitorAccessibilityService;->ZG:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/abr;->rk()Lcom/kingroot/kinguser/abr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abr;->ak(Z)V

    .line 132
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
