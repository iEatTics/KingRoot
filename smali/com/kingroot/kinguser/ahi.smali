.class public Lcom/kingroot/kinguser/ahi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile apO:Lcom/kingroot/kinguser/ahi;

.field private static final apQ:Ljava/lang/Object;


# instance fields
.field private volatile apP:Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

.field private final apR:Lcom/kingroot/kinguser/ahj;

.field private final apS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation
.end field

.field private apT:Lcom/kingroot/kinguser/ai/IAntiInjectClient$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahi;->apQ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahi;->apP:Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ai/AntiInjectDaemonManager$1;-><init>(Lcom/kingroot/kinguser/ahi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahi;->apT:Lcom/kingroot/kinguser/ai/IAntiInjectClient$Stub;

    .line 244
    new-instance v0, Lcom/kingroot/kinguser/ahj;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ahj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahi;->apR:Lcom/kingroot/kinguser/ahj;

    .line 245
    iget-object v1, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    monitor-enter v1

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahi;->apR:Lcom/kingroot/kinguser/ahj;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ahj;->getAllLogs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    monitor-exit v1

    .line 248
    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ahi;Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ahi;->d(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V

    return-void
.end method

.method private d(Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V
    .locals 3

    .prologue
    .line 405
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v1, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 409
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apR:Lcom/kingroot/kinguser/ahj;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->xe()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahj;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 412
    iget-object v1, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    monitor-enter v1

    .line 413
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-le v0, v2, :cond_0

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    .line 415
    iget-object v2, p0, Lcom/kingroot/kinguser/ahi;->apR:Lcom/kingroot/kinguser/ahj;

    iget v0, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->id:I

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ahj;->dt(I)V

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 408
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 417
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 419
    :cond_1
    return-void
.end method

.method public static xc()Lcom/kingroot/kinguser/ahi;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/kingroot/kinguser/ahi;->apO:Lcom/kingroot/kinguser/ahi;

    if-nez v0, :cond_1

    .line 234
    const-class v1, Lcom/kingroot/kinguser/ahi;

    monitor-enter v1

    .line 235
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ahi;->apO:Lcom/kingroot/kinguser/ahi;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/kingroot/kinguser/ahi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ahi;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ahi;->apO:Lcom/kingroot/kinguser/ahi;

    .line 238
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ahi;->apO:Lcom/kingroot/kinguser/ahi;

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apP:Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    .line 256
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_4

    .line 257
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/ahi;->apQ:Ljava/lang/Object;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahi;->apP:Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    .line 259
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    :cond_1
    const-string v0, "com.kingroot.kinguser.aid1"

    invoke-static {v0}, Lcom/kingroot/kinguser/aan;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 262
    if-nez v0, :cond_2

    .line 264
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hm;

    .line 265
    const-string v2, "com.kingroot.kinguser.aid1"

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/hm;->getDaemonService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 268
    :cond_2
    if-nez v0, :cond_5

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahi;->apP:Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    .line 274
    :cond_3
    :goto_0
    monitor-exit v1

    .line 277
    :cond_4
    return-object v0

    .line 271
    :cond_5
    invoke-static {v0}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahi;->apP:Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_0

    .line 384
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->syncList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    .line 386
    :catch_0
    move-exception v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aI(Z)Z
    .locals 2

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ahi;->apT:Lcom/kingroot/kinguser/ai/IAntiInjectClient$Stub;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->setSwitcher(ZLcom/kingroot/kinguser/ai/IAntiInjectClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    const/4 v0, 0x1

    .line 338
    :goto_0
    return v0

    .line 332
    :catch_0
    move-exception v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->addProtectedPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    .line 286
    :catch_0
    move-exception v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aj(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->removeProtectedPackages(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    .line 302
    :catch_0
    move-exception v0

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ak(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->syncDefaultProtectedPkgNames(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    .line 317
    :catch_0
    move-exception v0

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllLogs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ahi;->apS:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    monitor-exit v1

    .line 400
    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSwitcher()Z
    .locals 1

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    .line 362
    :try_start_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->getSwitcher()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 369
    :goto_0
    return v0

    .line 363
    :catch_0
    move-exception v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerClient()V
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ahi;->apT:Lcom/kingroot/kinguser/ai/IAntiInjectClient$Stub;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;->registerClient(Lcom/kingroot/kinguser/ai/IAntiInjectClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public wc()Z
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahi;->xd()Lcom/kingroot/kinguser/ai/IAntiInjectDaemonManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
