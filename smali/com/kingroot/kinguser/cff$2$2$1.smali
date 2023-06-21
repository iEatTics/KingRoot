.class Lcom/kingroot/kinguser/cff$2$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cez$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caC:Lcom/kingroot/kinguser/cff$2$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff$2$2;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(III)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v8, -0x35a4e900

    const/4 v7, 0x0

    .line 443
    invoke-static {p3}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v6

    .line 446
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkNetwork"

    const/4 v4, 0x0

    const/16 v5, 0x1e

    move v2, p2

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 447
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Z)Z

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    if-nez v6, :cond_6

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;J)J

    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0, v7}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;Z)Z

    .line 459
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 460
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->p(Lcom/kingroot/kinguser/cff;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;Z)Z

    .line 464
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v2

    monitor-enter v2

    .line 479
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cff$d;

    .line 481
    iget-boolean v4, v0, Lcom/kingroot/kinguser/cff$d;->caG:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/kingroot/kinguser/cff$d;->caH:Z

    if-nez v4, :cond_1

    .line 483
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 451
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 464
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 488
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 490
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 493
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cff$d;

    .line 494
    iget-object v3, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v3, v3, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v3, v3, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v3, v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;)V

    goto :goto_1

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 497
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 519
    :goto_2
    return-void

    .line 498
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    .line 509
    :cond_6
    if-lez v6, :cond_7

    .line 511
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v6

    .line 516
    :goto_3
    iget-object v1, p0, Lcom/kingroot/kinguser/cff$2$2$1;->caC:Lcom/kingroot/kinguser/cff$2$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/cff$2$2;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v1, v7, v9, v0}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZZI)V

    goto :goto_2

    .line 513
    :cond_7
    add-int v0, v6, v8

    goto :goto_3
.end method
