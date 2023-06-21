.class public final Lcom/kingroot/kinguser/bsd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bLm:Lcom/kingroot/kinguser/bsf;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bsf;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "CommonAdvertiseDao()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    .line 30
    return-void
.end method

.method private V(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 404
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    return-object v0
.end method

.method private d(Lcom/kingroot/kinguser/bso;)V
    .locals 4

    .prologue
    .line 136
    const-string v0, "CommonAdvertiseDao insert() beign"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bsd;->f(Lcom/kingroot/kinguser/bso;)Landroid/content/ContentValues;

    move-result-object v1

    .line 139
    const-string v2, "common_advertise_table"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rowid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 141
    const-string v0, "CommonAdvertiseDao insert() end"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private e(Lcom/kingroot/kinguser/bso;)V
    .locals 7

    .prologue
    .line 145
    const-string v0, "CommonAdvertiseDao update() beign"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    const-string v1, "uniquekey =?"

    .line 148
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bsd;->f(Lcom/kingroot/kinguser/bso;)Landroid/content/ContentValues;

    move-result-object v2

    .line 149
    const-string v3, "common_advertise_table"

    .line 150
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v6, v6, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 149
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    const-string v0, "CommonAdvertiseDao update() end"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method private f(Lcom/kingroot/kinguser/bso;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 352
    iget-object v0, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bsd;->g(Lcom/kingroot/kinguser/bsp;)Landroid/content/ContentValues;

    move-result-object v0

    .line 353
    const-string v1, "max_display_time"

    iget v2, p1, Lcom/kingroot/kinguser/bso;->bLT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string v1, "max_click_time"

    iget v2, p1, Lcom/kingroot/kinguser/bso;->bLU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v1, "ad_phase"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    return-object v0
.end method

.method private g(Lcom/kingroot/kinguser/bsp;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 365
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 366
    const-string v1, "jump_type"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->jumpType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v1, "persentspent"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v1, "uniquekey"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, "is_shareable"

    iget-boolean v2, p1, Lcom/kingroot/kinguser/bsp;->bLX:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    const-string v1, "pos_id"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v1, "activity_id"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "template_type"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v1, "text1"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "text2"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "text3"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "text4"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "image_url1"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v1, "image_url2"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "image_url3"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "content_type"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bLY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v1, "jump_url"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "packagename"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "expire_time"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bKb:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v1, "context"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bLn:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 387
    const-string v1, "effective_time"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJB:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v1, "continuousExposureTime"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v1, "exposureInterval"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v1, "scenes"

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string v1, "predisplaytime"

    iget-wide v2, p1, Lcom/kingroot/kinguser/bsp;->bJG:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    const-string v1, "videoUrl"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "zipUrl"

    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/brl;)V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 121
    const-string v1, "uniquekey =?"

    .line 122
    const-string v2, "ad_phase"

    invoke-virtual {p2}, Lcom/kingroot/kinguser/brl;->getState()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/bsd;->V(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v2

    .line 123
    const-string v3, "max_display_time"

    iget v4, p2, Lcom/kingroot/kinguser/brl;->bKd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string v3, "max_click_time"

    iget v4, p2, Lcom/kingroot/kinguser/brl;->bKe:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v3, "expire_time"

    iget v4, p2, Lcom/kingroot/kinguser/brl;->bKb:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v3, "weight"

    iget v4, p2, Lcom/kingroot/kinguser/brl;->bKf:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v3, "predisplaytime"

    iget-wide v4, p2, Lcom/kingroot/kinguser/brl;->bKg:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    :try_start_0
    const-string v3, "common_advertise_table"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized c(Lcom/kingroot/kinguser/bso;)V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    const-string v0, "CommonAdvertiseDao save(DbUnifiedData data) beign"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 111
    iget-object v0, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bsd;->mZ(Ljava/lang/String;)Lcom/kingroot/kinguser/bso;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bsd;->e(Lcom/kingroot/kinguser/bso;)V

    .line 116
    :goto_0
    const-string v0, "CommonAdvertiseDao save(DbUnifiedData data) end"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 114
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bsd;->d(Lcom/kingroot/kinguser/bso;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cl(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    monitor-enter p0

    :try_start_0
    const-string v0, "CommonAdvertiseDao save(List<DbUnifiedData> datas) beigin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bsd;->c(Lcom/kingroot/kinguser/bso;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 48
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 88
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 92
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 95
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 100
    :goto_4
    :try_start_6
    const-string v0, "CommonAdvertiseDao save(List<DbUnifiedData> datas) end"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :cond_1
    :try_start_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from common_advertise_table where uniquekey = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v2, v2, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "CommonAdvertiseDao"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "query sql::"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 58
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v8, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v2

    .line 59
    if-eqz v2, :cond_8

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-result v1

    if-eqz v1, :cond_8

    move v1, v5

    .line 65
    :goto_5
    if-eqz v2, :cond_2

    .line 66
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_2
    :goto_6
    if-eqz v1, :cond_4

    .line 70
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    :try_start_b
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 78
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 62
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 63
    :goto_7
    :try_start_c
    const-string v10, "CommonAdvertiseDao"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 65
    if-eqz v2, :cond_7

    .line 66
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v4

    goto :goto_6

    .line 64
    :catchall_2
    move-exception v0

    move-object v2, v3

    .line 65
    :goto_8
    if-eqz v2, :cond_3

    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_3
    throw v0

    .line 72
    :cond_4
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_1

    .line 83
    :cond_5
    :try_start_e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 84
    const-string v3, "uniquekey =?"

    .line 85
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bsd;->f(Lcom/kingroot/kinguser/bso;)Landroid/content/ContentValues;

    move-result-object v4

    .line 86
    const-string v5, "common_advertise_table"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v0, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    aput-object v0, v6, v9

    invoke-virtual {v8, v5, v4, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_2

    .line 93
    :catchall_3
    move-exception v0

    .line 95
    :try_start_f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 99
    :goto_9
    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 88
    :cond_6
    :try_start_11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 89
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bsd;->f(Lcom/kingroot/kinguser/bso;)Landroid/content/ContentValues;

    move-result-object v0

    .line 90
    const-string v3, "common_advertise_table"

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_3

    .line 96
    :catch_1
    move-exception v1

    .line 97
    :try_start_12
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_9

    .line 96
    :catch_2
    move-exception v0

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_4

    .line 64
    :catchall_4
    move-exception v0

    goto :goto_8

    .line 62
    :catch_3
    move-exception v1

    goto :goto_7

    :cond_7
    move v1, v4

    goto :goto_6

    :cond_8
    move v1, v4

    goto :goto_5
.end method

.method public declared-synchronized cm(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 159
    monitor-enter p0

    :try_start_0
    const-string v0, "CommonAdvertiseDao delete(List<DbUnifiedData> datas) beign"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 161
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bsd;->hs(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    monitor-exit p0

    return-void

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    :goto_2
    :try_start_4
    const-string v0, "CommonAdvertiseDao delete(List<DbUnifiedData> datas) end"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 167
    :cond_1
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsp;

    .line 168
    const-string v3, "common_advertise_table"

    .line 169
    const-string v4, "uniquekey =? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    aput-object v0, v5, v6

    .line 168
    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 172
    :catchall_1
    move-exception v0

    .line 174
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    :goto_3
    :try_start_7
    throw v0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_3

    .line 175
    :catch_1
    move-exception v0

    .line 176
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method f(Landroid/database/Cursor;)Lcom/kingroot/kinguser/bsp;
    .locals 4

    .prologue
    .line 299
    new-instance v1, Lcom/kingroot/kinguser/bsp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bsp;-><init>()V

    .line 300
    const-string v0, "uniquekey"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    .line 302
    const-string v0, "is_shareable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/kingroot/kinguser/bsp;->bLX:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    const-string v0, "jump_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->jumpType:I

    .line 309
    const-string v0, "persentspent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJA:I

    .line 311
    const-string v0, "pos_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJp:I

    .line 312
    const-string v0, "activity_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    .line 313
    const-string v0, "template_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJq:I

    .line 314
    const-string v0, "text1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJr:Ljava/lang/String;

    .line 315
    const-string v0, "text2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJs:Ljava/lang/String;

    .line 316
    const-string v0, "text3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJt:Ljava/lang/String;

    .line 317
    const-string v0, "text4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJu:Ljava/lang/String;

    .line 318
    const-string v0, "image_url1"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    .line 319
    const-string v0, "image_url2"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    .line 320
    const-string v0, "image_url3"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    .line 321
    const-string v0, "content_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bLY:I

    .line 322
    const-string v0, "jump_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->jumpUrl:Ljava/lang/String;

    .line 323
    const-string v0, "packagename"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->packageName:Ljava/lang/String;

    .line 324
    const-string v0, "expire_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bKb:I

    .line 325
    const-string v0, "context"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bLn:[B

    .line 326
    const-string v0, "effective_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJB:I

    .line 327
    const-string v0, "continuousExposureTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJC:I

    .line 328
    const-string v0, "exposureInterval"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJD:I

    .line 329
    const-string v0, "scenes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/bsp;->bJE:I

    .line 330
    const-string v0, "predisplaytime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/bsp;->bJG:J

    .line 331
    const-string v0, "videoUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    .line 332
    const-string v0, "videoUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    .line 333
    return-object v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method g(Landroid/database/Cursor;)Lcom/kingroot/kinguser/bso;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Lcom/kingroot/kinguser/bso;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bso;-><init>()V

    .line 343
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bsd;->f(Landroid/database/Cursor;)Lcom/kingroot/kinguser/bsp;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    .line 344
    const-string v1, "ad_phase"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bso;->gw:I

    .line 345
    const-string v1, "max_display_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bso;->bLT:I

    .line 346
    const-string v1, "max_click_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bso;->bLU:I

    .line 347
    const-string v1, "weight"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bso;->weight:I

    .line 348
    return-object v0
.end method

.method public hs(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    const-string v1, "common_advertise_table"

    .line 189
    const-string v2, "uniquekey =? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 188
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public j(ILjava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 203
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "select * from common_advertise_table where pos_id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "template_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string v3, " IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_1
    const-string v2, "CommonAdvertiseDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query sql::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v3, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bsf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 221
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 222
    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 229
    :cond_0
    if-eqz v1, :cond_1

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_1
    :goto_3
    return-object v2

    .line 204
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v4, v3, -0x1

    if-eq v0, v4, :cond_3

    .line 206
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "select * from common_advertise_table where pos_id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 223
    :cond_5
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/bsd;->g(Landroid/database/Cursor;)Lcom/kingroot/kinguser/bso;

    move-result-object v0

    .line 224
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_2
    const-string v3, "CommonAdvertiseDao"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-eqz v1, :cond_1

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    if-eqz v1, :cond_6

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_6
    throw v0
.end method

.method public mZ(Ljava/lang/String;)Lcom/kingroot/kinguser/bso;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from common_advertise_table where uniquekey = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v2, "CommonAdvertiseDao"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query sql::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/kingroot/kinguser/bsd;->bLm:Lcom/kingroot/kinguser/bsf;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bsf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 278
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 279
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bsd;->g(Landroid/database/Cursor;)Lcom/kingroot/kinguser/bso;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 285
    :cond_0
    if-eqz v2, :cond_1

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_1
    :goto_0
    const-string v1, "CommonAdvertiseDao"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dbData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-object v0

    .line 282
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 283
    :goto_1
    :try_start_2
    const-string v3, "CommonAdvertiseDao"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 285
    if-eqz v2, :cond_1

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 285
    :goto_2
    if-eqz v2, :cond_2

    .line 286
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_2
    throw v0

    .line 284
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 282
    :catch_1
    move-exception v1

    goto :goto_1
.end method
