.class public final Lcom/kingroot/kinguser/jc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/king/uranus/b;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/king/uranus/b;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/king/uranus/a;",
            ">;",
            "Lcom/kingroot/kinguser/jb;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 246
    .line 248
    new-instance v0, Lcom/kingroot/kinguser/mn;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 249
    new-instance v2, Lcom/kingroot/kinguser/mn;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 250
    const/16 v3, 0x9

    const-string v4, "cmdactivity"

    const-string v5, "getActivityTips"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 253
    const-string v3, "phonetype"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    const-string v3, "userinfo"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v3, "reqinfo"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    invoke-static {p0, v0, v2, v1, p3}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return v0

    .line 261
    :cond_0
    new-instance v0, Lcom/king/uranus/a;

    invoke-direct {v0}, Lcom/king/uranus/a;-><init>()V

    .line 262
    const-string v3, "cmdinfo"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/mn;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    check-cast v0, Lcom/king/uranus/a;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/king/uranus/d;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/king/uranus/d;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/king/uranus/w;",
            ">;",
            "Lcom/kingroot/kinguser/jb;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 280
    .line 282
    new-instance v0, Lcom/kingroot/kinguser/mn;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 283
    new-instance v2, Lcom/kingroot/kinguser/mn;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 286
    invoke-interface {p3}, Lcom/kingroot/kinguser/jb;->cq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 288
    invoke-static {p0, v3, p3}, Lcom/kingroot/kinguser/jc;->b(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I

    .line 291
    :cond_0
    const/16 v3, 0x11

    const-string v4, "sharkconfig"

    const-string v5, "getConfigTips"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 294
    const-string v3, "phonetype"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    const-string v3, "userinfo"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const-string v3, "fin"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->t(Landroid/content/Context;)Lcom/king/uranus/C;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    invoke-static {p0, v0, v2, v1, p3}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :goto_0
    return v0

    .line 303
    :cond_1
    new-instance v0, Lcom/king/uranus/w;

    invoke-direct {v0}, Lcom/king/uranus/w;-><init>()V

    .line 304
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/mn;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 306
    check-cast v0, Lcom/king/uranus/w;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 309
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/king/uranus/k;Lcom/kingroot/kinguser/jb;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 227
    .line 229
    new-instance v0, Lcom/kingroot/kinguser/mn;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 230
    new-instance v2, Lcom/kingroot/kinguser/mn;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 232
    const/16 v3, 0xa

    const-string v4, "info"

    const-string v5, "reportTipsRes"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 235
    const-string v3, "phonetype"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    const-string v3, "userinfo"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    const-string v3, "cmdinfores"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    invoke-static {p0, v0, v2, v1, p2}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/king/uranus/n;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/king/uranus/n;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/king/uranus/q;",
            ">;",
            "Lcom/kingroot/kinguser/jb;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 392
    new-instance v0, Lcom/kingroot/kinguser/mn;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 393
    new-instance v2, Lcom/kingroot/kinguser/mn;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 395
    const/16 v3, 0xd

    const-string v4, "info"

    const-string v5, "getGuid"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 397
    const-string v3, "phonetype"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 398
    const-string v3, "userinfo"

    invoke-interface {p3, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    const-string v3, "deviceinfo"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    invoke-static {p0, v0, v2, v1, p3}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return v0

    .line 406
    :cond_0
    new-instance v0, Lcom/king/uranus/q;

    invoke-direct {v0}, Lcom/king/uranus/q;-><init>()V

    .line 407
    const-string v3, "guidinfo"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/mn;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_1

    .line 409
    check-cast v0, Lcom/king/uranus/q;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 412
    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/kingroot/kinguser/jb;)I
    .locals 2

    .prologue
    .line 349
    const-class v1, Lcom/kingroot/kinguser/jc;

    monitor-enter v1

    .line 350
    :try_start_0
    invoke-interface {p1, p0}, Lcom/kingroot/kinguser/jb;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/jc;->b(Landroid/content/Context;Lcom/kingroot/kinguser/jb;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I
    .locals 5

    .prologue
    const/16 v1, -0x1770

    .line 104
    .line 106
    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/mn;->eD()[B

    move-result-object v2

    .line 111
    invoke-interface {p4, v2}, Lcom/kingroot/kinguser/jb;->k([B)[B

    move-result-object v2

    .line 114
    invoke-interface {p4}, Lcom/kingroot/kinguser/jb;->cs()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {p0, v3}, Lcom/kingroot/kinguser/ka;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/ka;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 115
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ka;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/ka;->o([B)V

    .line 117
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->I()I

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 120
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Lcom/kingroot/kinguser/ka;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->close()V

    :cond_0
    move v0, v2

    .line 148
    :cond_1
    :goto_0
    return v0

    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 126
    if-nez p3, :cond_6

    if-eqz v0, :cond_6

    array-length v4, v0

    if-lez v4, :cond_6

    .line 127
    invoke-interface {p4, v0}, Lcom/kingroot/kinguser/jb;->l([B)[B

    move-result-object v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/mn;->s([B)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v2

    .line 142
    :goto_1
    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->close()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 131
    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 136
    :goto_2
    const/16 v0, -0x17a9

    .line 142
    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ka;->close()V

    goto :goto_0

    .line 137
    :catch_1
    move-exception v2

    move-object v3, v0

    .line 142
    :goto_3
    if-eqz v3, :cond_5

    .line 143
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->close()V

    move v0, v1

    .line 144
    goto :goto_0

    .line 139
    :catch_2
    move-exception v2

    move-object v3, v0

    .line 142
    :goto_4
    if-eqz v3, :cond_5

    .line 143
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->close()V

    move v0, v1

    .line 144
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_5
    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->close()V

    .line 144
    :cond_4
    throw v0

    .line 142
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 139
    :catch_3
    move-exception v0

    goto :goto_4

    .line 137
    :catch_4
    move-exception v0

    goto :goto_3

    .line 135
    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/jb;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/y;",
            ">;",
            "Lcom/kingroot/kinguser/jb;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 159
    const-class v1, Lcom/kingroot/kinguser/jc;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 162
    :cond_1
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/mn;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 163
    new-instance v2, Lcom/kingroot/kinguser/mn;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 165
    const/4 v3, 0x0

    const-string v4, "report"

    const-string v5, "reportSoftUsageInfo"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 168
    invoke-static {p0, p2}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/jb;)I

    .line 170
    const-string v3, "phonetype"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v3, "userinfo"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v3, "suikey"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->p(Landroid/content/Context;)Lcom/king/uranus/z;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v3, "vecsui"

    invoke-virtual {v0, v3, p1}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3, p2}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/king/uranus/A;",
            ">;",
            "Lcom/kingroot/kinguser/jb;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 192
    .line 194
    new-instance v0, Lcom/kingroot/kinguser/mn;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 195
    new-instance v2, Lcom/kingroot/kinguser/mn;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 197
    invoke-static {p0, p2}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/jb;)I

    .line 199
    const/4 v3, 0x6

    const-string v4, "tipsmain"

    const-string v5, "getMainTips"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 202
    const-string v3, "phonetype"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v3, "userinfo"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v3, "reqinfo"

    invoke-interface {p2}, Lcom/kingroot/kinguser/jb;->cr()Lcom/king/uranus/r;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-static {p0, v0, v2, v1, p2}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return v0

    .line 210
    :cond_0
    new-instance v0, Lcom/king/uranus/A;

    invoke-direct {v0}, Lcom/king/uranus/A;-><init>()V

    .line 211
    const-string v3, "cmdinfo"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/mn;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/A;

    .line 212
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V
    .locals 1

    .prologue
    .line 80
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Lcom/kingroot/kinguser/mn;->bu(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p3, p0}, Lcom/kingroot/kinguser/mn;->aj(I)V

    .line 82
    invoke-virtual {p3, p1}, Lcom/kingroot/kinguser/mn;->bv(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3, p2}, Lcom/kingroot/kinguser/mn;->bw(Ljava/lang/String;)V

    .line 85
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Lcom/kingroot/kinguser/mn;->bu(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/kingroot/kinguser/jb;)I
    .locals 3

    .prologue
    .line 362
    .line 363
    invoke-interface {p1, p0}, Lcom/kingroot/kinguser/jb;->q(Landroid/content/Context;)Lcom/king/uranus/n;

    move-result-object v0

    .line 364
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 365
    invoke-static {p0, v0, v2, p1}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/king/uranus/n;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I

    move-result v1

    if-nez v1, :cond_1

    .line 366
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/q;

    .line 367
    if-eqz v0, :cond_1

    .line 368
    iget-object v0, v0, Lcom/king/uranus/q;->bk:Ljava/lang/String;

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const/16 v0, -0x7d1

    .line 377
    :goto_0
    return v0

    .line 372
    :cond_0
    invoke-interface {p1, v0, p0}, Lcom/kingroot/kinguser/jb;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/king/uranus/x;",
            ">;",
            "Lcom/kingroot/kinguser/jb;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 318
    new-instance v0, Lcom/kingroot/kinguser/mn;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 319
    new-instance v2, Lcom/kingroot/kinguser/mn;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/mn;-><init>(Z)V

    .line 321
    const/16 v3, 0xf

    const-string v4, "androidguid"

    const-string v5, "RequestGUID"

    invoke-static {v3, v4, v5, v0, v2}, Lcom/kingroot/kinguser/jc;->a(ILjava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;)V

    .line 323
    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->s(Landroid/content/Context;)Lcom/king/uranus/e;

    move-result-object v3

    .line 324
    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->t(Landroid/content/Context;)Lcom/king/uranus/C;

    move-result-object v4

    .line 326
    const-string v5, "phonetype"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->r(Landroid/content/Context;)Lcom/king/uranus/t;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const-string v5, "userinfo"

    invoke-interface {p2, p0}, Lcom/kingroot/kinguser/jb;->o(Landroid/content/Context;)Lcom/king/uranus/G;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v5, "fin"

    invoke-virtual {v0, v5, v4}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    const-string v4, "req"

    invoke-virtual {v0, v4, v3}, Lcom/kingroot/kinguser/mn;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    invoke-static {p0, v0, v2, v1, p2}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/kingroot/kinguser/mn;Lcom/kingroot/kinguser/mn;ZLcom/kingroot/kinguser/jb;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :goto_0
    return v0

    .line 336
    :cond_0
    new-instance v0, Lcom/king/uranus/x;

    invoke-direct {v0}, Lcom/king/uranus/x;-><init>()V

    .line 337
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/mn;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 339
    check-cast v0, Lcom/king/uranus/x;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/x;

    iget-object v0, v0, Lcom/king/uranus/x;->bk:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/jb;->aG(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    .line 343
    goto :goto_0
.end method
