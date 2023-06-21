.class Lcom/kingroot/kinguser/anb$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anb;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAd:Lcom/kingroot/kinguser/anb;

.field final synthetic aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

.field final synthetic aAf:I

.field final synthetic aAk:I

.field final synthetic aAl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anb;IILjava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    iput p2, p0, Lcom/kingroot/kinguser/anb$5;->aAf:I

    iput p3, p0, Lcom/kingroot/kinguser/anb$5;->aAk:I

    iput-object p4, p0, Lcom/kingroot/kinguser/anb$5;->aAl:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/anb$5;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 426
    iget v0, p0, Lcom/kingroot/kinguser/anb$5;->aAf:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/kingroot/kinguser/anb$5;->aAk:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v6

    monitor-enter v6

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 429
    iget-object v1, p0, Lcom/kingroot/kinguser/anb$5;->aAl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 430
    if-nez v1, :cond_9

    .line 431
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 432
    iget-object v2, p0, Lcom/kingroot/kinguser/anb$5;->aAl:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 434
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kingroot/kinguser/anb$5;->aAk:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/anb$5;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    monitor-exit v6

    .line 500
    :goto_1
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/anb$5;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/bge;->abw()Lcom/kingroot/kinguser/bge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bge;->aby()Ljava/lang/String;

    move-result-object v7

    .line 445
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 451
    if-eqz v2, :cond_1

    .line 455
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 456
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 457
    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    if-eqz v4, :cond_2

    .line 459
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 463
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 464
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 471
    :cond_4
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    iget v1, p0, Lcom/kingroot/kinguser/anb$5;->aAk:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 473
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 474
    iget-boolean v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->hadReportedForExposure:Z

    if-eqz v1, :cond_5

    .line 476
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 481
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->b(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 486
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 488
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v2

    monitor-enter v2

    .line 490
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/anb$5;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 491
    if-nez v0, :cond_8

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/kingroot/kinguser/anb$5;->aAe:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 495
    :cond_8
    iget v1, p0, Lcom/kingroot/kinguser/anb$5;->aAf:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/kingroot/kinguser/anb$5;->aAd:Lcom/kingroot/kinguser/anb;

    invoke-static {v0}, Lcom/kingroot/kinguser/anb;->c(Lcom/kingroot/kinguser/anb;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 497
    monitor-exit v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    move-object v5, v1

    goto/16 :goto_0
.end method
