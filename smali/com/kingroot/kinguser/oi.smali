.class public Lcom/kingroot/kinguser/oi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ya:Lcom/kingroot/kinguser/oi;


# instance fields
.field private xZ:Lcom/kingroot/kinguser/cau;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/oi;->ya:Lcom/kingroot/kinguser/oi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gf()Lcom/kingroot/kinguser/cau;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/oi;->fv()V

    .line 62
    return-void
.end method

.method private static cb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 587
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    :goto_0
    return-object p0

    .line 592
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/cgn;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 593
    sget-object v1, Lcom/kingroot/kinguser/caj$a;->bWm:Lcom/kingroot/kinguser/caj$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/caj;->a(Lcom/kingroot/kinguser/caj$a;)Lcom/kingroot/kinguser/cam;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/cam;->b([B)[B

    move-result-object v0

    .line 594
    if-eqz v0, :cond_1

    .line 596
    new-instance p0, Ljava/lang/String;

    const-string v1, "gbk"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 606
    :cond_1
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    .line 602
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static cc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    :goto_0
    return-object p0

    .line 623
    :cond_0
    :try_start_0
    const-string v0, "gbk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 624
    sget-object v1, Lcom/kingroot/kinguser/caj$a;->bWm:Lcom/kingroot/kinguser/caj$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/caj;->a(Lcom/kingroot/kinguser/caj$a;)Lcom/kingroot/kinguser/cam;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/cam;->a([B)[B

    move-result-object v0

    .line 625
    if-eqz v0, :cond_1

    .line 626
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cgn;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 636
    :cond_1
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    .line 630
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private fC()Ljava/util/LinkedHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ces$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 423
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 425
    iget-object v2, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v3, "key_hips"

    invoke-interface {v2, v3}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    :cond_0
    return-object v0

    .line 431
    :cond_1
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 437
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 438
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 437
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_3
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 443
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 445
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    .line 446
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 447
    const/4 v8, 0x2

    aget-object v4, v4, v8

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 448
    if-eqz v4, :cond_2

    .line 452
    new-instance v8, Lcom/kingroot/kinguser/ces$a;

    .line 454
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x0

    invoke-static {v4, v9}, Lcom/kingroot/kinguser/ces;->n(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v4

    const/4 v9, 0x0

    invoke-direct {v8, v6, v7, v4, v9}, Lcom/kingroot/kinguser/ces$a;-><init>(JLjava/util/List;Z)V

    .line 452
    invoke-virtual {v0, v5, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 456
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private fG()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gb()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_test"

    .line 561
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.tmfs/sk_v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 560
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static fu()Lcom/kingroot/kinguser/oi;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/kingroot/kinguser/oi;->ya:Lcom/kingroot/kinguser/oi;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/kingroot/kinguser/oi;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/oi;->ya:Lcom/kingroot/kinguser/oi;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/kingroot/kinguser/oi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/oi;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/oi;->ya:Lcom/kingroot/kinguser/oi;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/oi;->ya:Lcom/kingroot/kinguser/oi;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized fv()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v1, "key_shark_dao_ver"

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    if-ge v0, v2, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/kingroot/kinguser/oi;->fx()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/kingroot/kinguser/oi;->fy()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/oi;->bX(Ljava/lang/String;)V

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v1, "key_shark_dao_ver"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ap;)V
    .locals 3

    .prologue
    .line 473
    if-nez p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/cew;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-static {v0}, Lcom/kingroot/kinguser/ceg;->X([B)Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_s_c"

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/au;)V
    .locals 3

    .prologue
    .line 247
    if-nez p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/cew;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    invoke-static {v0}, Lcom/kingroot/kinguser/ceg;->X([B)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_g_i"

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/cez$b;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_rsa"

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;JLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_2

    if-nez p4, :cond_4

    :cond_2
    const/4 v4, 0x1

    move v6, v4

    .line 337
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/kingroot/kinguser/oi;->fC()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 340
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 341
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/ces$a;

    .line 345
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v4, :cond_3

    .line 349
    invoke-virtual {v4}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 355
    invoke-virtual {v7, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 333
    :cond_4
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1

    .line 358
    :cond_5
    if-eqz v6, :cond_a

    .line 359
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_7

    .line 369
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 371
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 372
    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    const/4 v4, 0x0

    .line 378
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v4

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 379
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 380
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/ces$a;

    .line 381
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v4, :cond_8

    .line 385
    iget-wide v10, v4, Lcom/kingroot/kinguser/ces$a;->bZd:J

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_8

    .line 391
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    const/4 v7, 0x0

    .line 393
    iget-object v4, v4, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 394
    if-lez v7, :cond_9

    .line 395
    const-string v14, "#"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_9
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    .line 399
    goto :goto_5

    .line 361
    :cond_a
    new-instance v4, Lcom/kingroot/kinguser/ces$a;

    const/4 v5, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/kingroot/kinguser/ces$a;-><init>(JLjava/util/List;Z)V

    .line 362
    invoke-virtual {v4}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 401
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    if-lez v6, :cond_c

    .line 404
    const-string v5, "|"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_c
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    .line 408
    goto/16 :goto_4

    .line 410
    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v5, "key_hips"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bW(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v1, "key_s_guid"

    invoke-interface {v0, v1, p1}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bX(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->ge()Landroid/content/Context;

    move-result-object v1

    .line 169
    sget-object v0, Lcom/kingroot/kinguser/caj$a;->bWn:Lcom/kingroot/kinguser/caj$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/caj;->a(Lcom/kingroot/kinguser/caj$a;)Lcom/kingroot/kinguser/cam;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cam;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v3, "key_s_guid"

    invoke-interface {v0, v3, p1}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gb()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_test"

    .line 175
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_guid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 176
    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Ltmsdk/common/tcc/TccCryptor;->a(Landroid/content/Context;[B[B)[B

    move-result-object v0

    .line 177
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/cgn;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/cgt;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0

    .line 174
    :cond_2
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public bY(Ljava/lang/String;)Lcom/kingroot/kinguser/ces$a;
    .locals 1

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/kingroot/kinguser/oi;->fC()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ces$a;

    return-object v0
.end method

.method public bZ(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 544
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/oi;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/oi;->fG()Ljava/lang/String;

    move-result-object v1

    .line 550
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/gk;->a(Ljava/io/File;[BZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public ca(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 570
    invoke-static {p1}, Lcom/kingroot/kinguser/oi;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_s_vd"

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fA()Lcom/kingroot/kinguser/au;
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_g_i"

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    invoke-static {v1}, Lcom/kingroot/kinguser/ceg;->nL(Ljava/lang/String;)[B

    move-result-object v0

    .line 271
    new-instance v1, Lcom/kingroot/kinguser/au;

    invoke-direct {v1}, Lcom/kingroot/kinguser/au;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/cew;->a([BLcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/au;

    .line 274
    :cond_0
    return-object v0
.end method

.method public fB()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 283
    .line 284
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_its"

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    const/4 v0, 0x1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public fD()Lcom/kingroot/kinguser/ap;
    .locals 3

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_s_c"

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    invoke-static {v1}, Lcom/kingroot/kinguser/ceg;->nL(Ljava/lang/String;)[B

    move-result-object v0

    .line 497
    new-instance v1, Lcom/kingroot/kinguser/ap;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ap;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/cew;->a([BLcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ap;

    .line 500
    :cond_0
    return-object v0
.end method

.method public fE()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v1, "key_s_vd"

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0}, Lcom/kingroot/kinguser/oi;->cb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    return-object v0
.end method

.method public fF()Ljava/lang/String;
    .locals 3

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 522
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ol;->ge()Landroid/content/Context;

    .line 523
    invoke-direct {p0}, Lcom/kingroot/kinguser/oi;->fG()Ljava/lang/String;

    move-result-object v1

    .line 524
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kingroot/kinguser/gk;->d(Ljava/io/File;)[B

    move-result-object v1

    .line 525
    if-eqz v1, :cond_0

    .line 526
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 527
    invoke-static {v2}, Lcom/kingroot/kinguser/oi;->cb(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 535
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public fw()Lcom/kingroot/kinguser/cez$b;
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v1, "key_rsa"

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 116
    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 117
    new-instance v0, Lcom/kingroot/kinguser/cez$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cez$b;-><init>()V

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    .line 119
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    .line 123
    :cond_0
    return-object v0
.end method

.method public fx()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v1, "key_s_guid"

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method public fy()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_s_guid"

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    :goto_0
    return-object v0

    .line 193
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->ge()Landroid/content/Context;

    move-result-object v2

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gb()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_test"

    .line 195
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_guid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 196
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ltmsdk/common/tcc/TccCryptor;->a(Landroid/content/Context;[B[B)[B

    move-result-object v0

    .line 197
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/cgn;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/cgt;->ab(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    sget-object v2, Lcom/kingroot/kinguser/caj$a;->bWn:Lcom/kingroot/kinguser/caj$a;

    invoke-static {v2}, Lcom/kingroot/kinguser/caj;->a(Lcom/kingroot/kinguser/caj$a;)Lcom/kingroot/kinguser/cam;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/cam;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    .line 207
    goto :goto_0
.end method

.method public fz()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 229
    iget-object v2, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v3, "key_gd_ck_tm"

    invoke-interface {v2, v3}, Lcom/kingroot/kinguser/cau;->dE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    :goto_0
    return-wide v0

    .line 234
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public p(J)V
    .locals 3

    .prologue
    .line 215
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_gd_ck_tm"

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public q(Z)V
    .locals 3

    .prologue
    .line 300
    if-eqz p1, :cond_0

    .line 301
    const-string v0, "true"

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/oi;->xZ:Lcom/kingroot/kinguser/cau;

    const-string v2, "key_its"

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/cau;->aC(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 303
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
