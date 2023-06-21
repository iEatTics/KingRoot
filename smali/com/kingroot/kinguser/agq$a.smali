.class public Lcom/kingroot/kinguser/agq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private amV:Lcom/kingroot/kinguser/ago;

.field private mInterface:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lcom/kingroot/kinguser/ago;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/ago;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agq$a;->amV:Lcom/kingroot/kinguser/ago;

    .line 262
    iput-object p2, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public static b(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/agq;
    .locals 2

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    if-eqz p0, :cond_0

    .line 251
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/agq$a;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/agq$a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public af(Ljava/util/List;)Z
    .locals 8
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
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 446
    const v0, 0x1332d92

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->amV:Lcom/kingroot/kinguser/ago;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 450
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 451
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    .line 453
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 456
    return v0

    :cond_0
    move v0, v7

    .line 451
    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public removeProtectedPackage(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 366
    const v0, 0x1332d92

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->amV:Lcom/kingroot/kinguser/ago;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 370
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 371
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    .line 373
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 376
    return v0

    :cond_0
    move v0, v7

    .line 371
    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setServiceEnable(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 274
    const v1, 0x1332d92

    :try_start_0
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    iget-object v1, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->amV:Lcom/kingroot/kinguser/ago;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 278
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 283
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public syncMonitorPackages(Ljava/util/List;)Z
    .locals 8
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
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 426
    const v0, 0x1332d92

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 429
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->amV:Lcom/kingroot/kinguser/ago;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 430
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    .line 433
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 436
    return v0

    :cond_0
    move v0, v7

    .line 431
    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public syncProtectPackages(Ljava/util/List;)Z
    .locals 8
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
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 406
    const v0, 0x1332d92

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 409
    iget-object v0, p0, Lcom/kingroot/kinguser/agq$a;->amV:Lcom/kingroot/kinguser/ago;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/kingroot/kinguser/agq$a;->mInterface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ago;->a(ILjava/lang/String;Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 410
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 411
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v6, :cond_0

    move v0, v6

    .line 413
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 416
    return v0

    :cond_0
    move v0, v7

    .line 411
    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 414
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
