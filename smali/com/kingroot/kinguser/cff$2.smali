.class Lcom/kingroot/kinguser/cff$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cay:Lcom/kingroot/kinguser/cff;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private b(ZLcom/kingroot/kinguser/cff$d;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->i(Lcom/kingroot/kinguser/cff;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingroot/kinguser/cff$2$1;-><init>(Lcom/kingroot/kinguser/cff$2;Lcom/kingroot/kinguser/cff$d;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 296
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 617
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/kingroot/kinguser/cff$2;->b(ZLcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_0

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/kingroot/kinguser/cff$2;->b(ZLcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->j(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cez;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v0

    .line 320
    iget-object v1, v0, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;I)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->l(Lcom/kingroot/kinguser/cff;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->m(Lcom/kingroot/kinguser/cff;)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-static {v2, v3, v4, v5, v0}, Lcom/kingroot/kinguser/ceh;->a(JJI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 327
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 329
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Z)Z

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;J)J

    .line 331
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->n(Lcom/kingroot/kinguser/cff;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0, v7}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;I)V

    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 342
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->l(Lcom/kingroot/kinguser/cff;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->m(Lcom/kingroot/kinguser/cff;)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-static {v2, v3, v4, v5, v0}, Lcom/kingroot/kinguser/ceh;->a(JJI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 344
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 348
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 346
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Z)Z

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;J)J

    .line 348
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->o(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cer;->alb()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;I)V

    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 359
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->p(Lcom/kingroot/kinguser/cff;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->q(Lcom/kingroot/kinguser/cff;)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-static {v2, v3, v4, v5, v0}, Lcom/kingroot/kinguser/ceh;->a(JJI)Z

    move-result v0

    if-nez v0, :cond_7

    .line 362
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    .line 366
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 364
    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;Z)Z

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;J)J

    .line 366
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 374
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 376
    :try_start_6
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_9

    .line 377
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_0

    .line 382
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 380
    :cond_9
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 381
    iget-object v2, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v2}, Lcom/kingroot/kinguser/cff;->r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 382
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 384
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cff$d;

    .line 385
    if-eqz v0, :cond_a

    .line 389
    iget-object v2, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v2}, Lcom/kingroot/kinguser/cff;->n(Lcom/kingroot/kinguser/cff;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0, v7}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;I)V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 395
    :try_start_8
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->l(Lcom/kingroot/kinguser/cff;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->m(Lcom/kingroot/kinguser/cff;)J

    move-result-wide v4

    const/4 v0, 0x3

    invoke-static {v2, v3, v4, v5, v0}, Lcom/kingroot/kinguser/ceh;->a(JJI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 397
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/16 :goto_0

    .line 401
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 399
    :cond_b
    :try_start_9
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Z)Z

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;J)J

    .line 401
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 408
    :cond_c
    iget-boolean v2, v0, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-eqz v2, :cond_d

    .line 409
    invoke-direct {p0, v4, v0}, Lcom/kingroot/kinguser/cff$2;->b(ZLcom/kingroot/kinguser/cff$d;)V

    goto :goto_1

    .line 411
    :cond_d
    invoke-direct {p0, v3, v0}, Lcom/kingroot/kinguser/cff$2;->b(ZLcom/kingroot/kinguser/cff$d;)V

    goto :goto_1

    .line 417
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->i(Lcom/kingroot/kinguser/cff;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$2$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cff$2$2;-><init>(Lcom/kingroot/kinguser/cff$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 537
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->i(Lcom/kingroot/kinguser/cff;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$2$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cff$2$3;-><init>(Lcom/kingroot/kinguser/cff$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 592
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->i(Lcom/kingroot/kinguser/cff;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$2$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cff$2$4;-><init>(Lcom/kingroot/kinguser/cff$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 605
    :pswitch_6
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->t(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cfq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfq;->amB()V

    goto/16 :goto_0

    .line 610
    :pswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->t(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cfq;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/kingroot/kinguser/cfq;->L(IZ)V

    goto/16 :goto_0

    .line 615
    :pswitch_8
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->u(Lcom/kingroot/kinguser/cff;)V

    goto/16 :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
