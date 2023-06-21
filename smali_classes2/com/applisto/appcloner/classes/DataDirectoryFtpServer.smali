.class public Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;
.super Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;
.source "DataDirectoryFtpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/DataDirectoryFtpServer$StopFtpServerReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x1ec649a0

.field private static final TAG:Ljava/lang/String;

.field private static sPort:I

.field private static sStarted:Ljava/lang/Boolean;

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->stopFtpServer(Landroid/content/Context;)V

    return-void
.end method

.method private static getFreePort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 147
    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 150
    throw v1
.end method

.method private static startFtpServer(Landroid/content/Context;)V
    .locals 13

    const-string v0, ":"

    const-string v1, "appcloner"

    .line 72
    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFtpServer; sStarted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 77
    :try_start_0
    sget v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "startFtpServer; generated new port; sPort: "

    if-nez v3, :cond_0

    .line 78
    :try_start_1
    invoke-static {}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->getFreePort()I

    move-result v3

    sput v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    .line 79
    sget-object v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.applisto.appcloner.ftpserver.AppClonerFtpServer"

    .line 85
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "startFtpServer"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    .line 86
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const-class v9, Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    :try_start_2
    new-array v8, v7, [Ljava/lang/Object;

    .line 88
    sget v9, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v1, v8, v10

    aput-object v1, v8, v11

    aput-object v3, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    .line 90
    :try_start_3
    sget-object v9, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-static {}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->getFreePort()I

    move-result v8

    sput v8, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    .line 92
    sget-object v8, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v7, [Ljava/lang/Object;

    .line 93
    sget v7, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    aput-object v1, v4, v10

    aput-object v1, v4, v11

    aput-object v3, v4, v12

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    .line 98
    sget-object v3, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStringsProperties:Ljava/util/Properties;

    const-string v4, "data_directory_ftp_server_started_message"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    const-class v4, Ljava/net/Inet4Address;

    invoke-static {v4}, Lcom/applisto/appcloner/classes/Utils;->getWifiInetAddress(Ljava/lang/Class;)Ljava/net/InetAddress;

    move-result-object v4

    check-cast v4, Ljava/net/Inet4Address;

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ftp://"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "localhost"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sPort:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_5

    .line 105
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 110
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 111
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 112
    invoke-virtual {v4, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    .line 111
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 115
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_3

    .line 116
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer$StopFtpServerReceiver;

    invoke-direct {v3, v6, v6, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "Stop FTP server"

    .line 118
    invoke-virtual {v0, v2, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 121
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    const/4 v3, -0x1

    .line 122
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 125
    :cond_4
    invoke-static {v0, v10}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;Z)V

    .line 127
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 128
    iput-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 129
    iget v3, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Landroid/app/Notification;->defaults:I

    const v3, 0x1ec649a0

    .line 130
    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    .line 132
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStringsProperties:Ljava/util/Properties;

    const-string v1, "data_directory_ftp_server_started_error_message"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 138
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    :cond_6
    :goto_2
    return-void
.end method

.method private static stopFtpServer(Landroid/content/Context;)V
    .locals 4

    .line 154
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFtpServer; sStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.applisto.appcloner.ftpserver.AppClonerFtpServer"

    .line 159
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "stopFtpServer"

    new-array v3, v0, [Ljava/lang/Class;

    .line 160
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 165
    sget-object v2, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Failed to stop FTP server."

    .line 166
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    const-string v0, "notification"

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_1

    const v0, 0x1ec649a0

    .line 172
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public install(Ljava/util/Properties;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sput-object p1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStringsProperties:Ljava/util/Properties;

    .line 44
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->onCreate()Z

    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/activity/OnAppExitListener;->onActivityCreated(Landroid/app/Activity;)V

    .line 51
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->startFtpServer(Landroid/content/Context;)V

    return-void
.end method

.method protected onAppExit(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->stopFtpServer(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    sput-object p1, Lcom/applisto/appcloner/classes/DataDirectoryFtpServer;->sStarted:Ljava/lang/Boolean;

    return-void
.end method
