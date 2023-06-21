.class Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;
.super Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WodServiceImpl"
.end annotation


# static fields
.field private static final ENCRYPT_KEY:Ljava/lang/String; = "6B696E676D61737465725F776F64"

.field private static final JAR_NAME:Ljava/lang/String; = "wod.jar"

.field private static final ROOT_CLASS:Ljava/lang/String; = "com.kingroot.processwall.server.ProcWallHooker"

.field private static final SERVICE_NAME:Ljava/lang/String; = "pandaria"

.field private static final SERVICE_VERSION:I = 0x1

.field private static final TARGET_PROC_NAME:Ljava/lang/String; = "system_server"

.field private static final TEST_PROC_NAME:Ljava/lang/String; = "com.android.phone"

.field private static sServiceNameFix:I


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x3e9

    sput v0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->sServiceNameFix:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$1;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;-><init>()V

    return-void
.end method

.method private getInterface()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;

    move-result-object v0

    goto :goto_0
.end method

.method private static getService()Landroid/os/IBinder;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 89
    const/4 v0, -0x1

    .line 91
    :goto_0
    if-eq v0, v4, :cond_1

    .line 92
    :try_start_0
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/aan;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 93
    if-nez v2, :cond_0

    move-object v0, v1

    .line 116
    :goto_1
    return-object v0

    .line 97
    :cond_0
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    invoke-static {v2}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;

    move-result-object v3

    .line 100
    invoke-interface {v3}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;->getVersionCode()I

    move-result v0

    .line 102
    if-eq v0, v4, :cond_2

    .line 103
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;->setEnable(Z)V

    .line 104
    sget v2, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->sServiceNameFix:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->sServiceNameFix:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    .line 116
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 106
    goto :goto_1

    .line 109
    :cond_3
    :try_start_1
    sget v2, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->sServiceNameFix:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->sServiceNameFix:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getServiceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pandaria_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->sServiceNameFix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized initConfigMap(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->getInterface()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 246
    if-nez v0, :cond_0

    .line 255
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;->initPackageConfigMap(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isServiceExist()Z
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->getService()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWodAvailible()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setConfigMap(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/WodService$WodServiceImpl;->getInterface()Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 221
    :try_start_2
    invoke-interface {v0, p1}, Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;->setPackageConfigMap(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWodEnable(Z)V
    .locals 5

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    .line 230
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/aev;->e(Landroid/content/Context;Z)V

    .line 232
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    const-class v1, Lcom/kingroot/kinguser/aes;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.intent.action.SCREEN_OFF"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.intent.action.SCREEN_ON"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "com.kingroot.master.action.SCHEDUAL_EVENT"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/tf;->a(ILjava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
