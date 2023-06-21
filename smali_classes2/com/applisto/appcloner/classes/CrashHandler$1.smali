.class Lcom/applisto/appcloner/classes/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applisto/appcloner/classes/CrashHandler;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/CrashHandler;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 42
    :try_start_0
    invoke-static {}, Lcom/applisto/appcloner/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$200(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applisto/appcloner/classes/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " crash"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " crashed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 48
    :goto_1
    invoke-static {p2}, Lcom/applisto/appcloner/classes/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1c

    const-string v2, "Please try enabling the \'Adaptive icons support\' option."

    if-lt v0, v1, :cond_3

    :try_start_1
    const-string v0, "You need to use a Theme.AppCompat theme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "requires your app theme to be Theme.AppCompat"

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object p2, v2

    :cond_3
    const-string v0, "android.content.res.Resources$NotFoundException"

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {v0}, Lcom/applisto/appcloner/classes/CrashHandler;->access$400(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "Please clone the standalone version of this app, not the Play Store version."

    goto :goto_3

    .line 60
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_9

    goto :goto_3

    :cond_5
    const-string v0, "dlopen failed"

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "java.lang.UnsatisfiedLinkError"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "java.lang.NullPointerException: Attempt to read from field \'java.lang.String android.content.pm.PackageItemInfo.packageName\' on a null object reference"

    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    iget-object p2, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p2}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    const-string v2, "Please try enabling the \'Ignore crashes\' option."

    goto :goto_3

    :cond_8
    const-string v0, "java.lang.ClassNotFoundException: Didn\'t find class"

    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "Please try enabling the \'Increase compatibility\' option or use the manifest cloning mode."

    goto :goto_3

    :cond_9
    move-object v2, p2

    goto :goto_3

    :cond_a
    :goto_2
    const-string v2, "Please try enabling the \'Skip native libraries\' under \'Cloning options\'."

    .line 75
    :goto_3
    iget-object p2, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    .line 76
    invoke-static {p2}, Lcom/applisto/appcloner/classes/CrashHandler;->access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 78
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {v1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$300(Lcom/applisto/appcloner/classes/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 83
    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/Utils;->setSmallNotificationIcon(Landroid/app/Notification$Builder;Z)V

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 86
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_b
    const v0, 0x60a40a2e

    .line 89
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 92
    invoke-static {}, Lcom/applisto/appcloner/classes/CrashHandler;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/applisto/appcloner/classes/CrashHandler$1;->this$0:Lcom/applisto/appcloner/classes/CrashHandler;

    invoke-static {p1}, Lcom/applisto/appcloner/classes/CrashHandler;->access$100(Lcom/applisto/appcloner/classes/CrashHandler;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_d
    return-void
.end method
