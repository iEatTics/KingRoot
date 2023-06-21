.class public Lcom/applisto/appcloner/classes/DisableCameras;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "DisableCameras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DisableCameras$EnableCamerasReceiver;,
        Lcom/applisto/appcloner/classes/DisableCameras$MyDeviceAdminReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ENABLE_CAMERAS:Ljava/lang/String; = "com.applisto.appcloner.action.ENABLE_CAMERAS"

.field private static final NOTIFICATION_ID:I = 0x212ebe20

.field private static final TAG:Ljava/lang/String;

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/applisto/appcloner/classes/DisableCameras;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableCameras;->disableCameras(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableCameras;->enableCameras(Landroid/content/Context;)V

    return-void
.end method

.method private static disableCameras(Landroid/content/Context;)V
    .locals 3

    .line 83
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "disableCameras; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "device_policy"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/applisto/appcloner/classes/DisableCameras$MyDeviceAdminReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 93
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->sStringsProperties:Ljava/util/Properties;

    const-string v1, "disable_cameras_cameras_disabled_message"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableCameras;->showNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static enableCameras(Landroid/content/Context;)V
    .locals 3

    .line 104
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "enableCameras; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "device_policy"

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 110
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/applisto/appcloner/classes/DisableCameras$MyDeviceAdminReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 113
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->sStringsProperties:Ljava/util/Properties;

    const-string v1, "disable_cameras_cameras_enabled_message"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableCameras;->hideNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 118
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static hideNotification(Landroid/content/Context;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "hideNotification; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "notification"

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const v0, 0x212ebe20

    .line 170
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static showNotification(Landroid/content/Context;)V
    .locals 5

    .line 133
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "showNotification; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DisableCameras;->hideNotification(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "notification"

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 142
    sget-object v1, Lcom/applisto/appcloner/classes/DisableCameras;->sStringsProperties:Ljava/util/Properties;

    const-string v2, "disable_cameras_cameras_disabled_message"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    sget-object v2, Lcom/applisto/appcloner/classes/DisableCameras;->sStringsProperties:Ljava/util/Properties;

    const-string v3, "disable_cameras_touch_to_enable_message"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.applisto.appcloner.action.ENABLE_CAMERAS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 147
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 149
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 153
    invoke-virtual {p0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 155
    invoke-static {p0}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;)V

    const v1, 0x212ebe20

    .line 156
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public install(Ljava/util/Properties;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sput-object p1, Lcom/applisto/appcloner/classes/DisableCameras;->sStringsProperties:Ljava/util/Properties;

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DisableCameras;->onCreate()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public maybeEnableDeviceAdmin(Landroid/app/Activity;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    const-string v1, "maybeEnableDeviceAdmin; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "device_policy"

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/applisto/appcloner/classes/DisableCameras$MyDeviceAdminReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    sget-object v0, Lcom/applisto/appcloner/classes/DisableCameras;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/applisto/appcloner/classes/DisableCameras;->maybeEnableDeviceAdmin(Landroid/app/Activity;)V

    .line 54
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DisableCameras;->disableCameras(Landroid/content/Context;)V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DisableCameras;->enableCameras(Landroid/content/Context;)V

    return-void
.end method
