.class public Lcom/kingroot/kinguser/lh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static uM:Lcom/kingroot/kinguser/lg;

.field private static uN:Lcom/kingroot/kinguser/lg;

.field private static uO:Ljava/lang/String;

.field private static final uP:[Lcom/king/uranus/aS;

.field private static final uQ:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    new-array v0, v1, [Lcom/king/uranus/aS;

    sput-object v0, Lcom/kingroot/kinguser/lh;->uP:[Lcom/king/uranus/aS;

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/lh;->uQ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Z(I)V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bS()Lcom/kingroot/kinguser/hr;

    move-result-object v0

    .line 315
    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/hr;->L(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/lr;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/lr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/bd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v1

    .line 394
    const/4 v0, 0x0

    .line 396
    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/lg;->a(Lcom/kingroot/kinguser/lr;)Ljava/util/List;

    move-result-object v0

    .line 400
    :cond_0
    if-nez v0, :cond_1

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 402
    :cond_1
    return-object v0
.end method

.method public static a(Lcom/king/uranus/bh;)Z
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    invoke-interface {p0}, Lcom/king/uranus/bh;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/lg;->b(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    .line 411
    :catch_0
    move-exception v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/kingroot/kinguser/lg;)Z
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/kingroot/kinguser/lg;->getVersion()I

    move-result v0

    .line 175
    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static af(I)Lcom/king/uranus/bd;
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v1

    .line 385
    const/4 v0, 0x0

    .line 386
    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/lg;->af(I)Lcom/king/uranus/bd;

    move-result-object v0

    .line 389
    :cond_0
    return-object v0
.end method

.method private static bb(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;
    .locals 1

    .prologue
    .line 115
    invoke-static {p0}, Lcom/kingroot/kinguser/lg;->ba(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/kingroot/kinguser/jr;)I
    .locals 5

    .prologue
    const/high16 v4, 0x3030000

    const/high16 v1, 0x3000000

    .line 275
    invoke-static {}, Lcom/kingroot/kinguser/ju;->cK()Lcom/kingroot/kinguser/ju;

    move-result-object v2

    .line 276
    new-instance v3, Lcom/kingroot/kinguser/mc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/mc;-><init>()V

    const-class v0, Lcom/kingroot/kinguser/it;

    .line 277
    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 276
    invoke-interface {v2, p0, v3, v0}, Lcom/kingroot/kinguser/js;->a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/ha;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Lcom/kingroot/kinguser/ha;->aJ()I

    move-result v2

    .line 283
    packed-switch v2, :pswitch_data_0

    .line 299
    :pswitch_0
    const/high16 v0, 0x3010000

    add-int/2addr v0, v2

    .line 304
    :goto_0
    if-ne v0, v4, :cond_0

    move v0, v1

    .line 308
    :cond_0
    :goto_1
    return v0

    :pswitch_1
    move v0, v1

    .line 286
    goto :goto_1

    .line 289
    :pswitch_2
    invoke-static {v0}, Lcom/kingroot/kinguser/lk;->a(Lcom/kingroot/kinguser/ha;)S

    move-result v0

    .line 288
    invoke-static {v4, v0}, Lcom/kingroot/kinguser/lk;->c(II)I

    move-result v0

    goto :goto_0

    .line 293
    :pswitch_3
    const/high16 v2, 0x3020000

    .line 294
    invoke-static {v0}, Lcom/kingroot/kinguser/lk;->a(Lcom/kingroot/kinguser/ha;)S

    move-result v0

    .line 293
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/lk;->c(II)I

    move-result v0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static d(Lcom/kingroot/kinguser/jr;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 328
    const v0, 0x1000012

    invoke-static {v0}, Lcom/kingroot/kinguser/lh;->Z(I)V

    .line 329
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v2

    .line 330
    invoke-interface {p0}, Lcom/kingroot/kinguser/jr;->w()Ljava/lang/String;

    move-result-object v3

    .line 332
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 333
    invoke-interface {v0, v5}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 338
    :cond_1
    new-instance v4, Lcom/kingroot/kinguser/jw;

    invoke-direct {v4, v0}, Lcom/kingroot/kinguser/jw;-><init>(Lcom/kingroot/kinguser/it;)V

    .line 342
    :try_start_0
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 351
    sget-object v2, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    if-eqz v2, :cond_2

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-interface {p0}, Lcom/kingroot/kinguser/jr;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v0, "++"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-interface {p0}, Lcom/kingroot/kinguser/jr;->cH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-interface {p0}, Lcom/kingroot/kinguser/jr;->cH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    :try_start_1
    sget-object v2, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/lg;->h(ILjava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 374
    :try_start_2
    sget-object v1, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/lg;->setEnabled(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move v1, v0

    .line 379
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 343
    :catch_2
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static dO()I
    .locals 1

    .prologue
    .line 571
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/lg;->dO()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized dP()Lcom/kingroot/kinguser/lg;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 65
    const-class v1, Lcom/kingroot/kinguser/lh;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    if-eqz v2, :cond_1

    .line 66
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 69
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/kingroot/kinguser/lh;->bb(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/kingroot/kinguser/lh;->a(Lcom/kingroot/kinguser/lg;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    :cond_2
    sput-object v2, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    .line 81
    sput-object v3, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    .line 82
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    goto :goto_0

    .line 83
    :cond_3
    if-eqz v3, :cond_4

    .line 84
    sput-object v3, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    .line 88
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Lcom/kingroot/kinguser/lh;->bb(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/kingroot/kinguser/lh;->a(Lcom/kingroot/kinguser/lg;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    :cond_5
    sput-object v2, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    .line 93
    sput-object v3, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    .line 94
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    goto :goto_0

    .line 98
    :cond_6
    sput-object v2, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    .line 99
    sput-object v3, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static dQ()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bF()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/kingroot/kinguser/lh;->bb(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/kingroot/kinguser/lh;->a(Lcom/kingroot/kinguser/lg;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    :cond_0
    const-class v2, Lcom/kingroot/kinguser/lh;

    monitor-enter v2

    .line 151
    :try_start_0
    sput-object v1, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    .line 152
    sput-object v0, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    .line 153
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    sget-object v0, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 157
    :cond_1
    const-class v2, Lcom/kingroot/kinguser/lh;

    monitor-enter v2

    .line 158
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    .line 160
    sput-object v1, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    .line 161
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static e(Lcom/kingroot/kinguser/ll;)I
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    .line 444
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/lg;->d(Lcom/kingroot/kinguser/ll;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 445
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    .line 445
    :cond_0
    const v0, 0x6000005

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const v0, 0x6000004

    goto :goto_0

    .line 450
    :cond_1
    const v0, 0x6000002

    goto :goto_0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/kingroot/kinguser/lh;->uO:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dQ()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/kv;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEnabled(Z)V
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dP()Lcom/kingroot/kinguser/lg;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/lg;->setEnabled(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public static start(I)I
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v3, 0x0

    const/high16 v6, 0x3000000

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/lh;->getName()Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-static {v7}, Lcom/kingroot/kinguser/lh;->bb(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    .line 186
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/lg;->ae(I)Z

    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Lcom/kingroot/kinguser/mx;->f(II)V

    .line 256
    :goto_0
    return v6

    .line 196
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-class v0, Lcom/kingroot/kinguser/lm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/lm;

    .line 202
    const-string v4, "system_server"

    invoke-interface {v0, v4}, Lcom/kingroot/kinguser/lm;->bc(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x40

    if-ne v0, v4, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bC()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bt()I

    move-result v4

    .line 213
    new-instance v1, Lcom/kingroot/kinguser/kq;

    const-string v8, "start"

    invoke-direct {v1, v0, v8, v2, v5}, Lcom/kingroot/kinguser/kq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/kingroot/kinguser/kj;

    const-string v2, "system_server"

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/kj;-><init>(Lcom/kingroot/kinguser/kq;Ljava/lang/String;III)V

    .line 217
    sget-object v1, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    if-eqz v1, :cond_2

    .line 218
    invoke-static {v0}, Lcom/kingroot/kinguser/lh;->d(Lcom/kingroot/kinguser/jr;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    const/high16 v6, 0x3050000

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bB()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 222
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/lh;->c(Lcom/kingroot/kinguser/jr;)I

    move-result v0

    .line 223
    if-eq v0, v6, :cond_4

    move v6, v0

    .line 224
    goto :goto_0

    .line 238
    :cond_3
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_2
    add-int/lit8 v3, v3, 0x1

    :cond_4
    const/16 v0, 0x64

    if-ge v3, v0, :cond_5

    .line 230
    invoke-static {v7}, Lcom/kingroot/kinguser/lh;->bb(Ljava/lang/String;)Lcom/kingroot/kinguser/lg;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    .line 231
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    if-eqz v0, :cond_3

    .line 234
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/lg;->ae(I)Z

    .line 244
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/lh;->uM:Lcom/kingroot/kinguser/lg;

    if-nez v0, :cond_7

    .line 246
    sget-object v0, Lcom/kingroot/kinguser/lh;->uN:Lcom/kingroot/kinguser/lg;

    if-eqz v0, :cond_6

    .line 247
    const v0, 0x3000002

    .line 253
    :goto_3
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Lcom/kingroot/kinguser/mx;->f(II)V

    move v6, v0

    .line 256
    goto/16 :goto_0

    .line 249
    :cond_6
    const v0, 0x3000001

    goto :goto_3

    .line 239
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    move v0, v6

    goto :goto_3
.end method
