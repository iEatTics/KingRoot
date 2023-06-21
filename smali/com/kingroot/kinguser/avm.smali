.class public Lcom/kingroot/kinguser/avm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aTI:Lcom/kingroot/kinguser/avm;


# instance fields
.field private aTJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/avn;",
            ">;"
        }
    .end annotation
.end field

.field private final aTK:Ljava/lang/Object;

.field private aTL:Ljava/util/Locale;

.field private volatile aTM:Z

.field private aTN:Lcom/kingroot/kinguser/bed;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avm;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avm;->aTK:Ljava/lang/Object;

    .line 56
    iput-boolean v4, p0, Lcom/kingroot/kinguser/avm;->aTM:Z

    .line 378
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/avm$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/avm$1;-><init>(Lcom/kingroot/kinguser/avm;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/avm;->aTN:Lcom/kingroot/kinguser/bed;

    .line 63
    return-void
.end method

.method public static RK()Lcom/kingroot/kinguser/avm;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/kingroot/kinguser/avm;->aTI:Lcom/kingroot/kinguser/avm;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lcom/kingroot/kinguser/avm;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/avm;->aTI:Lcom/kingroot/kinguser/avm;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/kingroot/kinguser/avm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avm;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avm;->aTI:Lcom/kingroot/kinguser/avm;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/avm;->aTI:Lcom/kingroot/kinguser/avm;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private RN()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/avn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/avm;->aTM:Z

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/avm;->aTM:Z

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 334
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avm;->RM()Lcom/kingroot/kinguser/eu;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 336
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/zi;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 337
    iget-object v0, v0, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/et;

    .line 338
    new-instance v3, Lcom/kingroot/kinguser/avn;

    invoke-direct {v3}, Lcom/kingroot/kinguser/avn;-><init>()V

    .line 339
    iget-object v4, v0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/avn;->adZ:Ljava/lang/String;

    .line 340
    iget-object v4, v0, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/avn;->jv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/avn;->aTP:Ljava/util/List;

    .line 342
    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    iget-object v4, v0, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/avn;->jv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    .line 349
    :goto_1
    iget-object v4, v3, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/avn;->e(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/avn;->aTR:Ljava/lang/String;

    .line 352
    iget v0, v0, Lcom/kingroot/kinguser/et;->px:I

    iput v0, v3, Lcom/kingroot/kinguser/avn;->aTS:I

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    iget-object v4, v3, Lcom/kingroot/kinguser/avn;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_1
    sget-object v4, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/Locale;

    const-string v5, "zh"

    const-string v6, "HK"

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    :cond_2
    iget-object v4, v0, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/avn;->jv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    goto :goto_1

    .line 347
    :cond_3
    iget-object v4, v0, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/avn;->jv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/avn;->aTQ:Ljava/util/List;

    goto :goto_1

    .line 358
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/avm;->aTM:Z

    .line 361
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    return-object v0
.end method

.method private RO()Z
    .locals 4

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/zi;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 370
    iget-object v2, p0, Lcom/kingroot/kinguser/avm;->aTL:Ljava/util/Locale;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/avm;->aTL:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    :cond_0
    iput-object v1, p0, Lcom/kingroot/kinguser/avm;->aTL:Ljava/util/Locale;

    .line 372
    const/4 v0, 0x1

    .line 375
    :cond_1
    return v0
.end method

.method private a(Lcom/kingroot/kinguser/eu;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 230
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p3, p1}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v0}, Lcom/qq/jce/wup/UniAttribute;->encode()[B

    move-result-object v0

    .line 234
    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aaf;->C([B)[B

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/kingroot/kinguser/avm;->aTK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V

    .line 239
    monitor-exit v1

    .line 243
    :goto_0
    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ax(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/eu;
    .locals 5

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 200
    new-instance v0, Lcom/kingroot/kinguser/br;

    invoke-direct {v0}, Lcom/kingroot/kinguser/br;-><init>()V

    const-string v2, "UTF-8"

    invoke-static {p1, p2, v0, v2}, Lcom/kingroot/kinguser/aeq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/br;

    .line 201
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 203
    new-instance v1, Lcom/kingroot/kinguser/eu;

    invoke-direct {v1}, Lcom/kingroot/kinguser/eu;-><init>()V

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    .line 205
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 206
    new-instance v3, Lcom/kingroot/kinguser/et;

    invoke-direct {v3}, Lcom/kingroot/kinguser/et;-><init>()V

    .line 207
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    .line 208
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    .line 209
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    .line 210
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    .line 211
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    .line 212
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    .line 213
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kS:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    .line 214
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kT:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    iput v0, v3, Lcom/kingroot/kinguser/et;->px:I

    .line 216
    iget-object v0, v1, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 220
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/io/File;Ljava/lang/String;)Lcom/kingroot/kinguser/eu;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 246
    .line 248
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x0

    .line 254
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/avm;->aTK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 257
    new-array v5, v4, [B

    .line 261
    :goto_0
    if-ge v0, v4, :cond_0

    .line 262
    sub-int v6, v4, v0

    invoke-virtual {v2, v5, v0, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_0

    .line 264
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 268
    if-ne v0, v4, :cond_2

    .line 269
    :try_start_3
    sget-object v0, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v0

    .line 275
    if-eqz v0, :cond_3

    .line 276
    new-instance v3, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v3}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    .line 277
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    .line 280
    new-instance v0, Lcom/kingroot/kinguser/eu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eu;-><init>()V

    invoke-virtual {v3, p2, v0}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/eu;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 285
    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 289
    :cond_1
    :goto_2
    return-object v1

    .line 264
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 285
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 282
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 264
    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private by(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/et;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v7, 0x9d36

    const/4 v3, 0x1

    .line 139
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avm;->RM()Lcom/kingroot/kinguser/eu;

    move-result-object v4

    .line 144
    if-eqz v4, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 147
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/et;

    .line 149
    iget-object v6, v0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_2
    iget-object v0, v4, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/et;

    .line 154
    iget-object v1, v0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/et;

    .line 155
    if-eqz v1, :cond_5

    .line 157
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    .line 158
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->py:Ljava/lang/String;

    .line 159
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->kO:Ljava/lang/String;

    .line 160
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->kP:Ljava/lang/String;

    .line 161
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->kQ:Ljava/lang/String;

    .line 162
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->kR:Ljava/lang/String;

    .line 163
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->kS:Ljava/lang/String;

    .line 164
    iget-object v2, v1, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    iput-object v2, v0, Lcom/kingroot/kinguser/et;->kT:Ljava/lang/String;

    .line 165
    iget v1, v1, Lcom/kingroot/kinguser/et;->px:I

    iput v1, v0, Lcom/kingroot/kinguser/et;->px:I

    .line 168
    iget-object v0, v0, Lcom/kingroot/kinguser/et;->appName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :goto_3
    move v2, v0

    .line 173
    goto :goto_2

    .line 176
    :cond_3
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/et;

    .line 178
    iget-object v2, v4, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 180
    goto :goto_4

    .line 183
    :cond_4
    if-eqz v2, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xdat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-direct {p0, v4, v1, v0}, Lcom/kingroot/kinguser/avm;->a(Lcom/kingroot/kinguser/eu;Ljava/io/File;Ljava/lang/String;)V

    .line 188
    iput-boolean v3, p0, Lcom/kingroot/kinguser/avm;->aTM:Z

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public RL()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/avn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lcom/kingroot/kinguser/avm;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avm;->RO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/avm;->aTM:Z

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avm;->RN()Ljava/util/HashMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public RM()Lcom/kingroot/kinguser/eu;
    .locals 4

    .prologue
    const v3, 0x9d36

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xdat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 301
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/avm;->b(Ljava/io/File;Ljava/lang/String;)Lcom/kingroot/kinguser/eu;

    move-result-object v0

    .line 314
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 315
    new-instance v0, Lcom/kingroot/kinguser/eu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eu;-><init>()V

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    .line 319
    :cond_1
    return-object v0

    .line 307
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/avm;->ax(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/eu;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 310
    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/avm;->a(Lcom/kingroot/kinguser/eu;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public RP()V
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/avm;->aTN:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 482
    return-void
.end method

.method public declared-synchronized bx(Ljava/util/List;)Z
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 130
    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :cond_1
    :try_start_1
    new-instance v3, Lcom/kingroot/kinguser/er;

    invoke-direct {v3}, Lcom/kingroot/kinguser/er;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/kingroot/kinguser/er;->pv:Ljava/util/ArrayList;

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    new-instance v5, Lcom/kingroot/kinguser/es;

    invoke-direct {v5}, Lcom/kingroot/kinguser/es;-><init>()V

    .line 103
    iput-object v0, v5, Lcom/kingroot/kinguser/es;->appName:Ljava/lang/String;

    .line 104
    const/4 v6, 0x0

    iput v6, v5, Lcom/kingroot/kinguser/es;->px:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    iget-object v6, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/kingroot/kinguser/avm;->aTJ:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avn;

    .line 108
    if-eqz v0, :cond_2

    .line 109
    iget v0, v0, Lcom/kingroot/kinguser/avn;->aTS:I

    iput v0, v5, Lcom/kingroot/kinguser/es;->px:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, v3, Lcom/kingroot/kinguser/er;->pv:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_3
    :try_start_4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 120
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/er;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    .line 121
    if-nez v3, :cond_5

    .line 122
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/eu;

    .line 123
    if-eqz v0, :cond_4

    .line 124
    iget-object v0, v0, Lcom/kingroot/kinguser/eu;->pz:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avm;->by(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move v0, v1

    .line 127
    goto :goto_0

    :cond_5
    move v0, v2

    .line 130
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_2
.end method
