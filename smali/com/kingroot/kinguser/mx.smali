.class public Lcom/kingroot/kinguser/mx;
.super Lcom/kingroot/kinguser/je;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/lo;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static ww:Lcom/kingroot/kinguser/mx;


# instance fields
.field private wy:I

.field private wz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uranus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/mx;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/mx;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/mx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/mx;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/mx;->ww:Lcom/kingroot/kinguser/mx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "uranus_start_result.dat"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/je;-><init>(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/mx;->wy:I

    .line 83
    return-void
.end method

.method private Z(I)V
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bS()Lcom/kingroot/kinguser/hr;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/hr;->L(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/mu;)V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/king/uranus/cg;->wD:Lcom/king/uranus/cg;

    iget v1, v1, Lcom/king/uranus/cg;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Lcom/kingroot/kinguser/mu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mx;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kingroot/kinguser/mu;)V
    .locals 2

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/king/uranus/cg;->wD:Lcom/king/uranus/cg;

    iget v1, v1, Lcom/king/uranus/cg;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p2}, Lcom/kingroot/kinguser/mu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mx;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private static aq(I)J
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 325
    const-wide/16 v0, 0x0

    .line 330
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x400

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 333
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 335
    if-eqz v3, :cond_0

    .line 336
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 337
    const/16 v6, 0x15

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v0

    .line 342
    :cond_0
    invoke-static {v5}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 343
    invoke-static {v4}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 344
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 347
    :goto_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/kingroot/kinguser/mj;->vO:J

    div-long/2addr v0, v2

    return-wide v0

    .line 339
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v4, v3

    .line 342
    :goto_1
    invoke-static {v4}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 343
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 344
    invoke-static {v2}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_2
    invoke-static {v5}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 343
    invoke-static {v4}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 344
    invoke-static {v3}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    .line 342
    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 339
    :catch_1
    move-exception v4

    move-object v4, v3

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_1
.end method

.method private bB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kingroot/kinguser/mx;->wz:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "start_one_time_key"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/kk;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private bC(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    const-string v1, "zygote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    const/4 v0, 0x1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    const-string v1, "zygote64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const/4 v0, 0x3

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "system_server"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private c(III)V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eR()Lcom/kingroot/kinguser/mu;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 261
    :cond_0
    iput p1, v0, Lcom/kingroot/kinguser/mu;->wl:I

    .line 264
    const/4 v1, 0x3

    if-gt p1, v1, :cond_2

    .line 265
    iput p2, v0, Lcom/kingroot/kinguser/mu;->wn:I

    .line 266
    iput p3, v0, Lcom/kingroot/kinguser/mu;->wq:I

    .line 283
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/mx;->a(Lcom/kingroot/kinguser/mu;)V

    goto :goto_0

    .line 268
    :cond_2
    const/4 v1, 0x5

    if-gt p1, v1, :cond_3

    .line 269
    iput p2, v0, Lcom/kingroot/kinguser/mu;->wo:I

    .line 270
    iput p3, v0, Lcom/kingroot/kinguser/mu;->wr:I

    goto :goto_1

    .line 272
    :cond_3
    const/16 v1, 0x66

    if-lt p1, v1, :cond_4

    const/16 v1, 0x67

    if-gt p1, v1, :cond_4

    .line 273
    iput p2, v0, Lcom/kingroot/kinguser/mu;->wn:I

    goto :goto_1

    .line 274
    :cond_4
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 276
    const/high16 v1, 0x3000000

    if-ne p2, v1, :cond_5

    .line 277
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/mu;->wl:I

    .line 280
    :cond_5
    iput p2, v0, Lcom/kingroot/kinguser/mu;->wm:I

    goto :goto_1
.end method

.method public static eL()Lcom/kingroot/kinguser/mx;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/kingroot/kinguser/mx;->ww:Lcom/kingroot/kinguser/mx;

    return-object v0
.end method

.method private eN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/mx;->wz:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "start_one_time_key"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/mx;->wz:Ljava/lang/String;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mx;->wz:Ljava/lang/String;

    return-object v0
.end method

.method private eP()Lcom/kingroot/kinguser/mu;
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lcom/kingroot/kinguser/mu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/mu;-><init>()V

    .line 288
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bt()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/mu;->hg:I

    .line 289
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eQ()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/mu;->ws:J

    .line 291
    return-object v0
.end method

.method private eQ()J
    .locals 4

    .prologue
    .line 295
    const-string v0, "zygote"

    invoke-static {v0}, Lcom/kingroot/kinguser/ju;->aP(Ljava/lang/String;)I

    move-result v0

    .line 296
    if-nez v0, :cond_0

    .line 303
    const-wide/16 v0, -0x1

    .line 314
    :goto_0
    return-wide v0

    .line 307
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/mx;->aq(I)J

    move-result-wide v0

    .line 309
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 312
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method private eR()Lcom/kingroot/kinguser/mu;
    .locals 3

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eN()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/king/uranus/cg;->wD:Lcom/king/uranus/cg;

    iget v2, v2, Lcom/king/uranus/cg;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/mx;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lcom/kingroot/kinguser/mu;->bz(Ljava/lang/String;)Lcom/kingroot/kinguser/mu;

    move-result-object v0

    goto :goto_0
.end method

.method private g(II)V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/mx;->bB(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eP()Lcom/kingroot/kinguser/mu;

    move-result-object v1

    .line 244
    iput p1, v1, Lcom/kingroot/kinguser/mu;->wl:I

    .line 246
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 247
    iput p2, v1, Lcom/kingroot/kinguser/mu;->wn:I

    .line 252
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mx;->a(Ljava/lang/String;Lcom/kingroot/kinguser/mu;)V

    .line 253
    return-void

    .line 249
    :cond_0
    iput p2, v1, Lcom/kingroot/kinguser/mu;->wo:I

    goto :goto_0
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/mx;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 378
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/hn;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/my;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/my;-><init>(Lcom/kingroot/kinguser/mx;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;J)V

    .line 138
    return-void
.end method

.method public ao(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/kingroot/kinguser/mx;->wy:I

    .line 91
    return-void
.end method

.method public ap(I)V
    .locals 4

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eP()Lcom/kingroot/kinguser/mu;

    move-result-object v1

    .line 192
    const/4 v2, 0x1

    iput v2, v1, Lcom/kingroot/kinguser/mu;->wl:I

    .line 193
    iput p1, v1, Lcom/kingroot/kinguser/mu;->wm:I

    .line 194
    const/4 v2, 0x0

    iput v2, v1, Lcom/kingroot/kinguser/mu;->hh:I

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/mx;->a(Ljava/lang/String;Lcom/kingroot/kinguser/mu;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/mx;->Z(I)V

    .line 198
    return-void
.end method

.method public b(III)V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/kingroot/kinguser/mx;->wy:I

    if-ne p1, v0, :cond_0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/mx;->g(II)V

    .line 220
    :goto_0
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/mx;->Z(I)V

    .line 221
    return-void

    .line 217
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/mx;->c(III)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/kingroot/kinguser/mx;->eM()V

    .line 97
    return-void
.end method

.method public eM()V
    .locals 10

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/kingroot/kinguser/mx;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 103
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_2

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/mx;->a(Ljava/util/Set;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 120
    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 121
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/nc;->eX()Lcom/kingroot/kinguser/nc;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/nc;->a(Ljava/util/Map;)V

    .line 127
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/mx;->a(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public eO()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eR()Lcom/kingroot/kinguser/mu;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/mu;->hh:I

    .line 205
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/mx;->a(Lcom/kingroot/kinguser/mu;)V

    .line 207
    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingroot/kinguser/mx;->b(III)V

    .line 211
    return-void
.end method

.method public g(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/kingroot/kinguser/mx;->eR()Lcom/kingroot/kinguser/mu;

    move-result-object v0

    .line 157
    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/mx;->bC(Ljava/lang/String;)I

    move-result v1

    .line 162
    iput v1, v0, Lcom/kingroot/kinguser/mu;->wp:I

    .line 164
    iget v2, v0, Lcom/kingroot/kinguser/mu;->wl:I

    if-nez v2, :cond_1

    .line 165
    const/16 v2, 0x2710

    iput v2, v0, Lcom/kingroot/kinguser/mu;->wl:I

    .line 168
    :cond_1
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/mx;->a(Lcom/kingroot/kinguser/mu;)V

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/mz;->eS()Lcom/kingroot/kinguser/mz;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/mz;->h(II)V

    goto :goto_0
.end method
