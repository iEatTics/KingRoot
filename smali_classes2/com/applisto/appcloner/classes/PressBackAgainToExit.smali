.class public Lcom/applisto/appcloner/classes/PressBackAgainToExit;
.super Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;
.source "PressBackAgainToExit.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPressBackAgainToExit:Z

.field private mStringsProperties:Ljava/util/Properties;

.field private mTimestamp:J

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/applisto/appcloner/classes/CloneSettings;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/util/activity/BackKeyHandler;-><init>()V

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "pressBackAgainToExit"

    invoke-virtual {p1, v1, v0}, Lcom/applisto/appcloner/classes/CloneSettings;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mPressBackAgainToExit:Z

    .line 34
    sget-object p1, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PressBackAgainToExit; mPressBackAgainToExit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mPressBackAgainToExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showToast()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mStringsProperties:Ljava/util/Properties;

    const-string v2, "press_back_again_to_exit_toast_message"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    .line 76
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 78
    sget-object v1, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/applisto/appcloner/classes/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleBackPressed(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 5

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 53
    :try_start_0
    iget-wide v0, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mTimestamp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 54
    sget-object v0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    const-string v1, "invoke; intercept finishActivity"

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->showToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 59
    iput-wide p1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mTimestamp:J

    return v0

    :cond_0
    iput-wide p1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mTimestamp:J

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    iput-wide p1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mTimestamp:J

    .line 60
    throw v0
.end method

.method public install(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->TAG:Ljava/lang/String;

    const-string v1, "install; "

    invoke-static {v0, v1}, Lcom/applisto/appcloner/classes/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p2, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mStringsProperties:Ljava/util/Properties;

    .line 42
    iget-boolean p2, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mPressBackAgainToExit:Z

    if-eqz p2, :cond_0

    .line 43
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/applisto/appcloner/classes/PressBackAgainToExit;->onCreate()Z

    :cond_0
    return-void
.end method
