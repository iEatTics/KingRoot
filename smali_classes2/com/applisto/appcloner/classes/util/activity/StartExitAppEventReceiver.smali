.class public abstract Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartExitAppEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 19
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    return-object v0
.end method

.method private exitApp()V
    .locals 3

    .line 76
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "exitApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sActivities:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 80
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    sget-object v2, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static init()V
    .locals 2

    .line 29
    :try_start_0
    sget-boolean v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sInited:Z

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "init; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;

    invoke-direct {v0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;-><init>()V

    .line 43
    invoke-virtual {v0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver$1;->onCreate()Z

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->sInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 47
    sget-object v1, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private startApp(Landroid/content/Context;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    const-string v1, "startApp; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/Utils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x14000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleEventAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAction; eventAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "START_APP"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->startApp(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "EXIT_APP"

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/StartExitAppEventReceiver;->exitApp()V

    :cond_1
    :goto_0
    return-void
.end method
