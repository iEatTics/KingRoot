.class public Lcom/kingroot/kinguser/alw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/amu;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/alw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ayV:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ayW:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ayX:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketUpdateMgrService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/alw;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/alw$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alw$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alw;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/kingroot/kinguser/alw$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alw$2;-><init>(Lcom/kingroot/kinguser/alw;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alw;->ayV:Lcom/kingroot/kinguser/alz;

    .line 80
    new-instance v0, Lcom/kingroot/kinguser/alw$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alw$3;-><init>(Lcom/kingroot/kinguser/alw;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alw;->ayW:Lcom/kingroot/kinguser/alz;

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/alw$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/alw$4;-><init>(Lcom/kingroot/kinguser/alw;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayV:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayW:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HQ()V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/alw$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/alw;-><init>()V

    return-void
.end method

.method public static Hs()Lcom/kingroot/kinguser/alw;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lcom/kingroot/kinguser/alw;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/alw;

    return-object v0
.end method

.method private declared-synchronized Hv()Ljava/util/Map;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 309
    const-string v3, "com.kingroot.kinguser"

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 312
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    invoke-direct {v4, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 314
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayV:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/alw;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/alw;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 283
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 285
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 286
    iget-object v6, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iget-object v7, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/anf;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 299
    return-void
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayW:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/alw;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/kingroot/kinguser/alw;->Hv()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 198
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 202
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 207
    :cond_2
    return-void
.end method

.method private j(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v2, p0, Lcom/kingroot/kinguser/alw;->ayV:Lcom/kingroot/kinguser/alz;

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayV:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 358
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 360
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 362
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    .line 363
    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 368
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 369
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 370
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayV:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 373
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method private k(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v2, p0, Lcom/kingroot/kinguser/alw;->ayW:Lcom/kingroot/kinguser/alz;

    monitor-enter v2

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayW:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 383
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 385
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 387
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    .line 388
    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 389
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 394
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-eq v1, v4, :cond_2

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 396
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 397
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayW:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 400
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method


# virtual methods
.method public Ht()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/asy;->GU()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/anf;->IV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/alw;->Hv()Ljava/util/Map;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alw;->j(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 124
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alw;->k(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 125
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->BA()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/alw;->i(Ljava/util/Map;)V

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v7

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 136
    const/4 v8, 0x4

    if-ne v1, v8, :cond_4

    .line 143
    :cond_2
    if-eqz v1, :cond_0

    .line 149
    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 150
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 152
    if-eqz v1, :cond_3

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iget-wide v10, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteSize:J

    iget-wide v0, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteDiffPkgSize:J

    sub-long v0, v10, v0

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_2

    .line 139
    :cond_4
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 141
    goto :goto_1

    .line 159
    :cond_5
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v7

    new-instance v0, Lcom/kingroot/kinguser/alw$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/alw$5;-><init>(Lcom/kingroot/kinguser/alw;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {v7, v2, v0}, Lcom/kingroot/kinguser/apv;->b(Ljava/util/List;Lcom/kingroot/kinguser/apv$b;)V

    goto/16 :goto_0

    .line 184
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sO()V

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sN()V

    goto/16 :goto_0
.end method

.method public Hu()V
    .locals 7

    .prologue
    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->BB()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/alw$6;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/alw$6;-><init>(Lcom/kingroot/kinguser/alw;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 273
    return-void
.end method

.method public Hw()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/kingroot/kinguser/alw;->Hv()Ljava/util/Map;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alw;->k(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public Hx()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/kingroot/kinguser/alw;->Hv()Ljava/util/Map;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alw;->j(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public Hy()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v1, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 421
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Z)V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 408
    if-eqz p2, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 414
    monitor-exit v1

    .line 416
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V
    .locals 3

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/kingroot/kinguser/alw;->Hv()Ljava/util/Map;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alw;->j(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 327
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/alw;->k(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 330
    if-eqz p1, :cond_0

    .line 332
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    invoke-interface {p1, v2, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;->onFetchResult(Ljava/util/List;Z)V

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;->onFetchDiffResult(Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw;->ayX:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 430
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    const/4 v0, 0x1

    monitor-exit v1

    .line 434
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
