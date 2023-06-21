.class public Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mInterface:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    .line 304
    iput-object p2, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService;
    .locals 2

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 291
    if-eqz p0, :cond_0

    .line 293
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addProtectedPackage(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 393
    const v4, 0x1332d92

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 397
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 398
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v0, :cond_0

    .line 400
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 403
    return v0

    :cond_0
    move v0, v1

    .line 398
    goto :goto_0

    .line 400
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 401
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public hookFunction(IZ)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 453
    const v3, 0x1332d92

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v3, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 458
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 459
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 461
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    return v0

    .line 461
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isProtectedPackage(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 433
    const v4, 0x1332d92

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 437
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 438
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v0, :cond_0

    .line 440
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 443
    return v0

    :cond_0
    move v0, v1

    .line 438
    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isServiceEnable()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 339
    const v4, 0x1332d92

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 342
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 343
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v0, :cond_0

    .line 345
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 348
    return v0

    :cond_0
    move v0, v1

    .line 343
    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 346
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onClientPackageDeleted(IILjava/lang/String;)V
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 356
    const v0, 0x1332d92

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 362
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    return-void

    .line 364
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeProtectedPackage(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 413
    const v4, 0x1332d92

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 417
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 418
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v0, :cond_0

    .line 420
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 423
    return v0

    :cond_0
    move v0, v1

    .line 418
    goto :goto_0

    .line 420
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setLogEnable(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 374
    const v3, 0x1332d92

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v3, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    if-eqz p1, :cond_0

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 378
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 383
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setServiceEnable(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 321
    const v3, 0x1332d92

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v3, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 325
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public syncMonitorPackages(Ljava/util/List;)Z
    .locals 7
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 494
    const v4, 0x1332d92

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 497
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 498
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 499
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v0, :cond_0

    .line 501
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 504
    return v0

    :cond_0
    move v0, v1

    .line 499
    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 502
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public syncProtectPackages(Ljava/util/List;)Z
    .locals 7
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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 474
    const v4, 0x1332d92

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mInterface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 477
    iget-object v4, p0, Lcom/kingroot/kinguser/deletereport/interfaces/IDeleteReportService$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 478
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 479
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v4, v0, :cond_0

    .line 481
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 484
    return v0

    :cond_0
    move v0, v1

    .line 479
    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
