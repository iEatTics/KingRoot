.class Lcom/kingroot/kinguser/anb$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAd:Lcom/kingroot/kinguser/anb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v3

    monitor-enter v3

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :try_start_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 294
    const/4 v2, 0x0

    .line 295
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 299
    iget-object v8, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v8, v1}, Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v1

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 301
    new-instance v9, Lcom/kingroot/kinguser/bux;

    invoke-direct {v9}, Lcom/kingroot/kinguser/bux;-><init>()V

    .line 302
    iput-object v1, v9, Lcom/kingroot/kinguser/bux;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v9, Lcom/kingroot/kinguser/bux;->bON:I

    .line 304
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v2, v2, 0x1

    .line 307
    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 313
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 315
    iget-boolean v9, v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    if-nez v9, :cond_3

    .line 319
    new-instance v9, Lcom/kingroot/kinguser/bux;

    invoke-direct {v9}, Lcom/kingroot/kinguser/bux;-><init>()V

    .line 320
    iget-object v10, p0, Lcom/kingroot/kinguser/anb$4;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v10, v1}, Lcom/kingroot/kinguser/anb;->a(Lcom/kingroot/kinguser/anb;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v1

    iput-object v1, v9, Lcom/kingroot/kinguser/bux;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 321
    const/16 v1, 0x28

    iput v1, v9, Lcom/kingroot/kinguser/bux;->bON:I

    .line 322
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 325
    goto :goto_1

    .line 329
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 330
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    :goto_2
    return-void

    .line 335
    :cond_5
    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/anb$4$1;

    invoke-direct {v1, p0, v2, v5}, Lcom/kingroot/kinguser/anb$4$1;-><init>(Lcom/kingroot/kinguser/anb$4;ILjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v6, v1}, Lcom/kingroot/kinguser/btx;->a(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 365
    :try_start_4
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 370
    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 371
    :try_start_6
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 370
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 367
    :catch_0
    move-exception v0

    goto :goto_3
.end method
