.class public Lcom/applisto/appcloner/classes/ScreenSaver;
.super Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;
.source "ScreenSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;,
        Lcom/applisto/appcloner/classes/ScreenSaver$Hook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDelayMinutes:I

.field private static sExitApp:Z

.field private static final sHandler:Landroid/os/Handler;

.field private static sMuteVolume:Z

.field private static sStringsProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/applisto/appcloner/classes/ScreenSaver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/ResumePauseActivityLifecycleListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 37
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->scheduleScreenSaver()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 37
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->unMute()V

    return-void
.end method

.method public static synthetic lambda$arQ9fOA3cu0e9OZXI3LdeWO2ZEw()V
    .locals 0

    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->startScreenSaver()V

    return-void
.end method

.method private static mute()V
    .locals 4

    .line 122
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    const-string v1, "mute; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 125
    :try_start_0
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 127
    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 128
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/applisto/appcloner/classes/ScreenSaver;->sStringsProperties:Ljava/util/Properties;

    const-string v3, "mute_on_start_muted_message"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 131
    sget-object v2, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/applisto/appcloner/classes/ScreenSaver;->sStringsProperties:Ljava/util/Properties;

    const-string v3, "mute_on_start_muted_error_message"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static scheduleScreenSaver()V
    .locals 4

    .line 84
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/applisto/appcloner/classes/-$$Lambda$ScreenSaver$arQ9fOA3cu0e9OZXI3LdeWO2ZEw;->INSTANCE:Lcom/applisto/appcloner/classes/-$$Lambda$ScreenSaver$arQ9fOA3cu0e9OZXI3LdeWO2ZEw;

    sget v2, Lcom/applisto/appcloner/classes/ScreenSaver;->sDelayMinutes:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static startScreenSaver()V
    .locals 6

    .line 93
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    const-string v1, "startScreenSaver; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-boolean v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sExitApp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 97
    :try_start_0
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    const-string v2, "util.Utils"

    const-string v3, "killAppProcesses"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-static {v1, v2, v3, v4}, Lcom/applisto/appcloner/classes/DefaultProvider;->invokeSecondaryStatic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 100
    sget-object v2, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 105
    :cond_0
    sget-boolean v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sMuteVolume:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->mute()V

    .line 110
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    const-class v2, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "unMute"

    .line 112
    sget-boolean v2, Lcom/applisto/appcloner/classes/ScreenSaver;->sMuteVolume:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->unscheduleScreenSaver()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static unMute()V
    .locals 4

    .line 137
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    const-string v1, "unMute; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 143
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sStringsProperties:Ljava/util/Properties;

    const-string v3, "mute_on_start_unmuted_message"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/applisto/appcloner/classes/ScreenSaver;->sStringsProperties:Ljava/util/Properties;

    const-string v2, "mute_on_start_unmuted_error_message"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static unscheduleScreenSaver()V
    .locals 2

    .line 89
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public install(Landroid/content/Context;IZZLjava/util/Properties;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install; delayMinutes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", exitApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", muteVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->sContext:Landroid/content/Context;

    .line 54
    sput p2, Lcom/applisto/appcloner/classes/ScreenSaver;->sDelayMinutes:I

    .line 55
    sput-boolean p3, Lcom/applisto/appcloner/classes/ScreenSaver;->sExitApp:Z

    .line 56
    sput-boolean p4, Lcom/applisto/appcloner/classes/ScreenSaver;->sMuteVolume:Z

    .line 57
    sput-object p5, Lcom/applisto/appcloner/classes/ScreenSaver;->sStringsProperties:Ljava/util/Properties;

    .line 59
    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->initHooking(Landroid/content/Context;)V

    .line 60
    const-class p1, Lcom/applisto/appcloner/classes/ScreenSaver$Hook;

    invoke-static {p1}, Lcom/applisto/appcloner/hooking/Hooking;->addHookClass(Ljava/lang/Class;)V

    .line 61
    sget-object p1, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    const-string p2, "install; hooks installed"

    invoke-static {p1, p2}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/ScreenSaver;->onCreate()Z

    return-void
.end method

.method protected onPaused(Landroid/content/Context;)V
    .locals 1

    .line 77
    sget-object p1, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    const-string v0, "onPaused; "

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->unscheduleScreenSaver()V

    return-void
.end method

.method protected onResumed(Landroid/app/Activity;)V
    .locals 2

    .line 68
    sget-object v0, Lcom/applisto/appcloner/classes/ScreenSaver;->TAG:Ljava/lang/String;

    const-string v1, "onResumed; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/applisto/appcloner/classes/ScreenSaver$ScreenSaverActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    invoke-static {}, Lcom/applisto/appcloner/classes/ScreenSaver;->scheduleScreenSaver()V

    :cond_0
    return-void
.end method
