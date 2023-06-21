.class public Lcom/kingroot/kinguser/bju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlApplicationManager;


# instance fields
.field private final a:Ljava/lang/String;

.field private final byG:Ljava/lang/Object;

.field private final byH:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private byI:Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/loader/sdk/AbsKlApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bju;->byG:Ljava/lang/Object;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bju;->byI:Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;

    return-void
.end method

.method private a(II)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->byI:Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;

    .line 327
    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;->onPluginLoaded(II)V

    goto :goto_0
.end method

.method private a(ILjava/lang/ClassLoader;)V
    .locals 3

    .prologue
    .line 66
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private am(II)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->byI:Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;

    .line 333
    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;->onPluginLaunched(II)V

    goto :goto_0
.end method

.method private b(ILjava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->byI:Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;

    .line 339
    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;->onPluginLaunchException(ILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ju(I)Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    iget-object v2, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    monitor-enter v2

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 119
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 123
    if-nez v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    monitor-enter v1

    .line 125
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/bju;->byH:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 126
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private jv(I)I
    .locals 10

    .prologue
    .line 144
    iget-object v5, p0, Lcom/kingroot/kinguser/bju;->byG:Ljava/lang/Object;

    monitor-enter v5

    .line 145
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bju;->getPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 147
    const/4 v0, -0x7

    monitor-exit v5

    .line 225
    :goto_0
    return v0

    .line 151
    :cond_0
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    .line 152
    invoke-interface {v0, p1}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v6

    .line 153
    if-nez v6, :cond_1

    .line 154
    const/4 v0, -0x1

    monitor-exit v5

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 155
    :cond_1
    :try_start_1
    iget-object v1, v6, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    invoke-virtual {v1}, Lcom/kingroot/loader/sdk/KlConfig;->isPluginDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const/4 v0, -0x6

    monitor-exit v5

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bju;->ju(I)Ljava/lang/ClassLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 162
    if-nez v3, :cond_3

    .line 164
    :try_start_2
    new-instance v1, Lcom/kingroot/kinguser/bkg;

    invoke-virtual {v6}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginSourcePath()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    .line 165
    invoke-virtual {v6}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginDexOutPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginLibPath()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/kingroot/loader/host/stub/KlActivity;

    .line 167
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v1, v4, v7, v8, v9}, Lcom/kingroot/kinguser/bkg;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v1

    .line 174
    :goto_1
    if-nez v4, :cond_4

    .line 176
    const/4 v0, -0x2

    :try_start_3
    monitor-exit v5

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    iget-object v4, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Err when loading plugin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : create classloader"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    .line 170
    goto :goto_1

    .line 172
    :cond_3
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bju;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v3

    goto :goto_1

    .line 180
    :cond_4
    const/4 v3, 0x0

    .line 182
    :try_start_4
    new-instance v1, Lcom/kingroot/loader/sdk/KlContext;

    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v4, v7, v6}, Lcom/kingroot/loader/sdk/KlContext;-><init>(Ljava/lang/ClassLoader;Landroid/content/Context;Lcom/kingroot/loader/sdk/KlPackage;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v1

    .line 186
    :goto_2
    if-nez v3, :cond_5

    .line 188
    const/4 v0, -0x3

    :try_start_5
    monitor-exit v5

    goto :goto_0

    .line 183
    :catch_1
    move-exception v1

    .line 184
    iget-object v7, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Err when loading plugin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : create context"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 192
    :cond_5
    iget-object v1, v6, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v1, v1, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 194
    const/16 v0, -0x9

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 199
    :cond_6
    :try_start_6
    invoke-virtual {v4, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/loader/sdk/AbsKlApplication;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 203
    :goto_3
    if-nez v1, :cond_7

    .line 205
    const/4 v0, -0x4

    :try_start_7
    monitor-exit v5

    goto/16 :goto_0

    .line 200
    :catch_2
    move-exception v1

    .line 201
    iget-object v4, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Err when loading plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : instantiate application"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v1, v2

    goto :goto_3

    .line 210
    :cond_7
    :try_start_8
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->isCoreProcess()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/kingroot/loader/sdk/AbsKlApplication;->attachKlContext(Lcom/kingroot/loader/sdk/KlContext;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 217
    :try_start_9
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->markPluginRunning(II)V

    .line 220
    iget-object v2, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 221
    :try_start_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 223
    :try_start_b
    monitor-exit v5

    .line 225
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    :catch_3
    move-exception v0

    .line 212
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err when loading plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : initialize application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    const/4 v0, -0x5

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 222
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method


# virtual methods
.method public a(I)I
    .locals 6

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bju;->getPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 262
    if-nez v0, :cond_0

    .line 263
    const/4 v0, -0x2

    .line 286
    :goto_0
    return v0

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->byG:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    const/4 v0, -0x3

    monitor-exit v1

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 272
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    const/4 v0, 0x1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    .line 274
    iget-object v3, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Err when launch plugin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :try_start_3
    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->onDestroy()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :goto_1
    :try_start_4
    throw v2

    .line 279
    :catch_1
    move-exception v0

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err when destroy plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/AbsKlApplication;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRunningPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bju;->getPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/AbsKlApplication;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 50
    :cond_1
    return-object v0
.end method

.method public launchPlugin(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 230
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bju;->jv(I)I

    move-result v2

    .line 231
    const/4 v3, -0x7

    if-eq v2, v3, :cond_1

    .line 232
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/bju;->a(II)V

    .line 235
    if-eq v2, v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    const/4 v2, -0x1

    .line 242
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bju;->a(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 248
    :goto_1
    const/4 v3, -0x3

    if-eq v2, v3, :cond_2

    .line 249
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/bju;->am(II)V

    .line 252
    if-ne v2, v1, :cond_0

    :cond_2
    move v0, v1

    .line 257
    goto :goto_0

    .line 243
    :catch_0
    move-exception v3

    .line 244
    invoke-static {v3}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/kingroot/kinguser/bju;->b(ILjava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setLaunchObserver(Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/bju;->byI:Lcom/kingroot/loader/sdk/service/IKlLaunchObserver;

    .line 107
    return-void
.end method

.method public stopPlugin(IZ)V
    .locals 4

    .prologue
    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/bju;->byG:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bju;->getPluginApplication(I)Lcom/kingroot/loader/sdk/AbsKlApplication;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Lcom/kingroot/loader/sdk/IKlApplication;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/kingroot/loader/sdk/IKlApplication;->onDestroy()V

    .line 89
    :cond_0
    if-eqz p2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-object v3, p0, Lcom/kingroot/kinguser/bju;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bju;->a(ILjava/lang/ClassLoader;)V

    .line 93
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 101
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    return-void

    .line 93
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 101
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
