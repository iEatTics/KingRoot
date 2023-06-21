.class public final Lcloudsdk/ext/kr/RootSdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ext/kr/RootConst;


# static fields
.field private static P:Lcloudsdk/ext/kr/RootSdk;


# instance fields
.field private Q:Lcloudsdk/ext/kr/RootInitConfig;

.field private R:Lcloudsdk/IModule;

.field private S:Lcloudsdk/shell/IRootShell;

.field private T:Landroid/os/HandlerThread;

.field private U:Lcloudsdk/ext/kr/RootHandler;

.field private V:Landroid/os/HandlerThread;

.field private W:J

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcloudsdk/ext/kr/RootSdk;->W:J

    .line 36
    return-void
.end method

.method public static getInstance()Lcloudsdk/ext/kr/RootSdk;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcloudsdk/ext/kr/RootSdk;->P:Lcloudsdk/ext/kr/RootSdk;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcloudsdk/ext/kr/RootSdk;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcloudsdk/ext/kr/RootSdk;->P:Lcloudsdk/ext/kr/RootSdk;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcloudsdk/ext/kr/RootSdk;

    invoke-direct {v0}, Lcloudsdk/ext/kr/RootSdk;-><init>()V

    sput-object v0, Lcloudsdk/ext/kr/RootSdk;->P:Lcloudsdk/ext/kr/RootSdk;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcloudsdk/ext/kr/RootSdk;->P:Lcloudsdk/ext/kr/RootSdk;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final declared-synchronized c()Lcloudsdk/IModule;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->R:Lcloudsdk/IModule;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcloudsdk/ext/kr/RootSdk;->loadRootEngine()Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->R:Lcloudsdk/IModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final checkCanRoot()Lcloudsdk/ext/kr/RootInfo;
    .locals 6

    .prologue
    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v1, "options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    invoke-virtual {p0}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v1

    .line 257
    new-instance v0, Lcloudsdk/ext/kr/RootInfo;

    invoke-interface {v1}, Lcloudsdk/IActionResult;->getResultCode()I

    move-result v2

    .line 258
    invoke-interface {v1}, Lcloudsdk/IActionResult;->getErrorCode()I

    move-result v3

    invoke-interface {v1}, Lcloudsdk/IActionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lcloudsdk/ext/kr/RootInfo;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 259
    invoke-interface {v1}, Lcloudsdk/IActionResult;->success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    invoke-interface {v1}, Lcloudsdk/IActionResult;->getReply()Landroid/os/Bundle;

    move-result-object v1

    .line 262
    const-string v2, "mobileRootInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/RootInfo;->setMobileRootInfo(Lcloudsdk/ext/kr/RootExtInfo;)V

    .line 263
    const-string v2, "pcRootInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcloudsdk/ext/kr/RootInfo;->setPcRootInfo(Lcloudsdk/ext/kr/RootExtInfo;)V

    .line 264
    const-string v2, "solutionCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootInfo;->setSolutionCount(I)V

    .line 268
    :cond_0
    return-object v0
.end method

.method public final cleanRoot(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    const-string v1, "cmdList"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 230
    invoke-virtual {p0}, Lcloudsdk/ext/kr/RootSdk;->c()Lcloudsdk/IModule;

    move-result-object v1

    .line 231
    if-nez v1, :cond_0

    .line 233
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    .line 236
    :cond_0
    const/16 v2, 0x1000

    invoke-interface {v1, v2, v0}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Lcloudsdk/IActionResult;->getErrorCode()I

    move-result v0

    goto :goto_0
.end method

.method final d()Lcloudsdk/shell/IRootShell;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->S:Lcloudsdk/shell/IRootShell;

    return-object v0
.end method

.method public final dispatchRoot(ILcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V
    .locals 5

    .prologue
    .line 149
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->T:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "root-core"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->T:Landroid/os/HandlerThread;

    .line 151
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->T:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->V:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "root-progress"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->V:Landroid/os/HandlerThread;

    .line 155
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->V:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 158
    :cond_0
    new-instance v0, Lcloudsdk/ext/kr/RootHandler;

    iget-object v1, p0, Lcloudsdk/ext/kr/RootSdk;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcloudsdk/ext/kr/RootSdk;->T:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcloudsdk/ext/kr/RootSdk;->V:Landroid/os/HandlerThread;

    .line 159
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcloudsdk/ext/kr/RootHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    .line 161
    :cond_1
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    invoke-virtual {v0, p2, p3}, Lcloudsdk/ext/kr/RootHandler;->setOnRootListener(Lcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not support clickWhich: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->sendEmptyMessage(I)Z

    .line 177
    :goto_0
    return-void

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->setCurrStatusForKr(I)V

    .line 169
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->setCurrStatusForKr(I)V

    .line 173
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getConfig()Lcloudsdk/ext/kr/RootInitConfig;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    return-object v0
.end method

.method public final getCurrStatus()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, -0x1

    .line 195
    :goto_0
    return v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootHandler;->getCurrStatusForKr()I

    move-result v0

    goto :goto_0
.end method

.method public final getSubmitUserCount()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 205
    cmp-long v2, v0, v0

    if-lez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-wide v0

    .line 208
    :cond_1
    iget-object v2, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcloudsdk/ext/kr/RootSdk;->U:Lcloudsdk/ext/kr/RootHandler;

    invoke-virtual {v2}, Lcloudsdk/ext/kr/RootHandler;->getMobileRootInfo()Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_0

    .line 214
    iget-wide v0, v2, Lcloudsdk/ext/kr/RootExtInfo;->subitUsers:J

    goto :goto_0
.end method

.method public final hasUnFinishRootProcess()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootDao;->getCurrStatus()I

    move-result v0

    .line 125
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final initialize(Landroid/content/Context;Lcloudsdk/ext/kr/RootInitConfig;Lcloudsdk/shell/IRootShell;)Z
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcloudsdk/ext/kr/RootSdk;->mContext:Landroid/content/Context;

    .line 112
    const-string v0, "cloudsdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcloudsdk/ext/kr/RootInitConfig;->setWorkingDir(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    .line 114
    iput-object p3, p0, Lcloudsdk/ext/kr/RootSdk;->S:Lcloudsdk/shell/IRootShell;

    .line 115
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcloudsdk/CloudSdk;->initialize(Landroid/content/Context;Lcloudsdk/SdkConfig;)Lcloudsdk/IActionResult;

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized loadRootEngine()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcloudsdk/ext/kr/RootSdk;->R:Lcloudsdk/IModule;

    if-nez v2, :cond_0

    .line 56
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v2

    const/16 v3, 0x1fa5

    invoke-virtual {v2, v3}, Lcloudsdk/CloudSdk;->loadModule(I)Lcloudsdk/ILoadResult;

    move-result-object v2

    .line 58
    invoke-interface {v2}, Lcloudsdk/ILoadResult;->success()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-interface {v2}, Lcloudsdk/ILoadResult;->getModule()Lcloudsdk/IModule;

    move-result-object v2

    .line 62
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v4, "logSwitchOn"

    iget-object v5, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    invoke-virtual {v5}, Lcloudsdk/ext/kr/RootInitConfig;->isLogSwitchOn()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v4, "useTestServer"

    iget-object v5, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    invoke-virtual {v5}, Lcloudsdk/ext/kr/RootInitConfig;->isUseTestServer()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string v4, "kuBuildNo"

    iget-object v5, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    invoke-virtual {v5}, Lcloudsdk/ext/kr/RootInitConfig;->getKinguserBuildNo()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v4, "clientChannel"

    iget-object v5, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    invoke-virtual {v5}, Lcloudsdk/ext/kr/RootInitConfig;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "krWCA"

    iget-object v5, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    invoke-virtual {v5}, Lcloudsdk/ext/kr/RootInitConfig;->willKinguserSdkCleanApp()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    const-string v4, "krCLP"

    iget-object v5, p0, Lcloudsdk/ext/kr/RootSdk;->Q:Lcloudsdk/ext/kr/RootInitConfig;

    invoke-virtual {v5}, Lcloudsdk/ext/kr/RootInitConfig;->getKinguserSdkCleanListPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Lcloudsdk/IModule;->execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;

    move-result-object v3

    .line 70
    invoke-interface {v3}, Lcloudsdk/IActionResult;->success()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iput-object v2, p0, Lcloudsdk/ext/kr/RootSdk;->R:Lcloudsdk/IModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0

    :cond_2
    move v0, v1

    .line 82
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
