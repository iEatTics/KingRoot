.class Lcom/kingroot/kinguser/cfo$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cfo;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    .line 268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    .line 274
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 628
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 279
    :pswitch_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->e(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfw;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/kingroot/kinguser/cfo$f;

    move-object v8, v0

    .line 282
    if-eqz v8, :cond_1

    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    if-nez v2, :cond_2

    .line 284
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    .line 289
    const/4 v2, 0x0

    .line 290
    const-wide/16 v10, 0x0

    .line 291
    const/4 v9, 0x0

    .line 293
    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cff$d;->alO()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 295
    const/16 v2, -0x11

    move-wide v4, v10

    .line 439
    :cond_3
    :goto_1
    if-eqz v2, :cond_24

    const/16 v3, -0xb

    if-eq v2, v3, :cond_24

    .line 440
    const v3, -0x2625a00

    add-int/2addr v2, v3

    move v3, v2

    .line 445
    :goto_2
    if-eqz v9, :cond_4

    .line 446
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->m(Lcom/kingroot/kinguser/cfo;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/kingroot/kinguser/cfm;->ccN:Ljava/lang/String;

    .line 447
    iput-wide v4, v9, Lcom/kingroot/kinguser/cfm;->ccP:J

    .line 448
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->g(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfy;->amG()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/kingroot/kinguser/cfm;->bQX:Ljava/lang/String;

    .line 449
    iput v3, v9, Lcom/kingroot/kinguser/cfm;->errorCode:I

    .line 450
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->l(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/ceu;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/kingroot/kinguser/cfm;->g(Lcom/kingroot/kinguser/ceu;)V

    .line 453
    :cond_4
    if-eqz v3, :cond_5

    const/16 v2, -0xb

    if-ne v3, v2, :cond_13

    .line 457
    :cond_5
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cff$d;III)V

    .line 460
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 461
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->e(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfw;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 462
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    .line 464
    :cond_6
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v9

    throw v2

    .line 300
    :cond_7
    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cff$d;->alQ()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-nez v3, :cond_8

    const/4 v3, 0x1

    .line 309
    :goto_3
    if-eqz v3, :cond_b

    .line 310
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->f(Lcom/kingroot/kinguser/cfo;)B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 311
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->g(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cfy;->amM()Z

    move-result v3

    if-nez v3, :cond_c

    .line 312
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-nez v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cff$d;)V

    .line 319
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 320
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 321
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 322
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/16 v3, 0xb

    const-string v4, "conn_broken_didnt_monitored"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    goto/16 :goto_0

    .line 300
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 321
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 328
    :cond_9
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->f(Lcom/kingroot/kinguser/cfo;)B

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 329
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-nez v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cff$d;)V

    .line 336
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 337
    :try_start_3
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 338
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 339
    :cond_a
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->f(Lcom/kingroot/kinguser/cfo;)B

    move-result v3

    if-nez v3, :cond_c

    .line 341
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cff$d;)V

    .line 348
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 349
    :try_start_4
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 350
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 351
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/16 v3, 0xb

    const-string v4, "others_depend_on_fp"

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    goto/16 :goto_0

    .line 350
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 357
    :cond_b
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->i(Lcom/kingroot/kinguser/cfo;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 358
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Z)Z

    .line 360
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const-string v3, "disconnected_before_send"

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Ljava/lang/String;)I

    move-result v2

    .line 361
    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-nez v3, :cond_c

    .line 363
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;B)B

    .line 382
    :cond_c
    :goto_4
    if-nez v2, :cond_26

    .line 385
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 390
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/az;

    .line 391
    if-eqz v6, :cond_d

    .line 392
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    const-string v3, "TmsTcpManager"

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    iget v5, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    const/16 v7, 0xb

    invoke-virtual/range {v2 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    .line 397
    iget v2, v6, Lcom/kingroot/kinguser/az;->jX:I

    if-nez v2, :cond_d

    .line 398
    if-nez v9, :cond_25

    .line 401
    new-instance v2, Lcom/kingroot/kinguser/cfm;

    invoke-direct {v2}, Lcom/kingroot/kinguser/cfm;-><init>()V

    .line 403
    :goto_6
    iget v3, v6, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/cfm;->lo(I)V

    move-object v9, v2

    .line 404
    goto :goto_5

    .line 367
    :cond_e
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->g(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cfy;->amM()Z

    move-result v3

    if-nez v3, :cond_c

    .line 369
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->j(Lcom/kingroot/kinguser/cfo;)I

    move-result v2

    .line 370
    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-nez v3, :cond_c

    .line 372
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;B)B

    goto :goto_4

    .line 407
    :cond_f
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfo;->k(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cff;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/cff;->getGuid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v5}, Lcom/kingroot/kinguser/cfo;->l(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/ceu;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/ceq;->a(Lcom/kingroot/kinguser/cff$d;ZLjava/lang/String;Lcom/kingroot/kinguser/ceu;)[B

    move-result-object v2

    .line 408
    if-nez v2, :cond_10

    .line 410
    const/16 v2, -0x5dc

    move-wide v4, v10

    .line 411
    goto/16 :goto_1

    .line 415
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 416
    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->cdt:Lcom/kingroot/kinguser/ccn;

    .line 417
    if-nez v3, :cond_11

    .line 418
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->g(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfy;

    move-result-object v3

    iget-object v6, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v3, v6, v2}, Lcom/kingroot/kinguser/cfy;->a(Lcom/kingroot/kinguser/cff$d;[B)I

    move-result v2

    .line 429
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 432
    if-nez v2, :cond_3

    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    if-eqz v3, :cond_3

    .line 433
    iget-object v3, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/kingroot/kinguser/cff$d;->caT:Z

    goto/16 :goto_1

    .line 420
    :cond_11
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/kingroot/kinguser/ccn;->setState(I)V

    .line 421
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ccn;->akI()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 422
    const/16 v2, -0xb

    .line 423
    const/4 v9, 0x0

    move-wide v4, v10

    .line 424
    goto/16 :goto_1

    .line 426
    :cond_12
    iget-object v6, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v6}, Lcom/kingroot/kinguser/cfo;->g(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfy;

    move-result-object v6

    iget-object v7, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v6, v7, v2}, Lcom/kingroot/kinguser/cfy;->a(Lcom/kingroot/kinguser/cff$d;[B)I

    move-result v2

    .line 427
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/kingroot/kinguser/ccn;->setState(I)V

    goto :goto_7

    .line 469
    :cond_13
    iget-object v2, v8, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Lcom/kingroot/kinguser/cfl;->a(Lcom/kingroot/kinguser/cff$d;III)V

    .line 471
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2, v8, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cfo$f;I)V

    .line 474
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 475
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 477
    :goto_8
    :try_start_5
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->e(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfw;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfo$f;

    if-eqz v2, :cond_14

    .line 478
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_8

    .line 480
    :catchall_5
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_14
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 481
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 483
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfo$f;

    .line 484
    iget-object v5, v2, Lcom/kingroot/kinguser/cfo$f;->cdt:Lcom/kingroot/kinguser/ccn;

    .line 485
    if-eqz v5, :cond_15

    .line 486
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/ccn;->setState(I)V

    .line 488
    :cond_15
    iget-object v5, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v5, v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cfo$f;I)V

    goto :goto_9

    .line 497
    :pswitch_2
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfk;->amg()I

    move-result v2

    if-lez v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 505
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->c(Lcom/kingroot/kinguser/cfo;)I

    .line 506
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/16 v3, 0xb

    const-string v4, "delay_fp_network_connected"

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    iget-object v8, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v8}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfk;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v8

    iget v8, v8, Lcom/kingroot/kinguser/ap;->if:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    goto/16 :goto_0

    .line 514
    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4, v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4, v2, v3}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :pswitch_5
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 533
    :try_start_7
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gtz v2, :cond_17

    .line 534
    :cond_16
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/16 :goto_0

    .line 538
    :catchall_6
    move-exception v2

    monitor-exit v3

    throw v2

    .line 536
    :cond_17
    :try_start_8
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 537
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 538
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 541
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_18
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/kingroot/kinguser/cfo$f;

    .line 543
    if-eqz v10, :cond_18

    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    if-eqz v2, :cond_18

    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18

    .line 544
    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_19
    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/az;

    .line 549
    if-eqz v6, :cond_19

    .line 550
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    const-string v3, "TmsTcpManager"

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    iget v5, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    const/16 v7, 0xa

    const v8, -0x2625f14

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;IILjava/lang/String;)V

    goto :goto_b

    .line 556
    :cond_1a
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const v3, -0x2625f14

    invoke-static {v2, v10, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cfo$f;I)V

    goto :goto_a

    .line 562
    :pswitch_6
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;I)V

    .line 564
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 566
    :try_start_9
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gtz v2, :cond_1c

    .line 567
    :cond_1b
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto/16 :goto_0

    .line 571
    :catchall_7
    move-exception v2

    monitor-exit v3

    throw v2

    .line 569
    :cond_1c
    :try_start_a
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 570
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 571
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 572
    const-string v3, "TmsTcpManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fp failed, waiting tasks count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/kingroot/kinguser/cfe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 574
    iget v11, p1, Landroid/os/Message;->arg1:I

    .line 575
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1d
    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/kingroot/kinguser/cfo$f;

    .line 576
    if-eqz v10, :cond_1d

    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    if-eqz v2, :cond_1d

    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 577
    iget-object v2, v10, Lcom/kingroot/kinguser/cfo$f;->bYH:Lcom/kingroot/kinguser/cff$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1e
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/az;

    .line 582
    if-eqz v6, :cond_1e

    .line 583
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v2

    const-string v3, "TmsTcpManager"

    iget v4, v6, Lcom/kingroot/kinguser/az;->cmd:I

    iget v5, v6, Lcom/kingroot/kinguser/az;->seqNo:I

    const/16 v7, 0x9

    const v8, -0x29b92700

    add-int/2addr v8, v11

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;IILjava/lang/String;)V

    goto :goto_d

    .line 590
    :cond_1f
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const v3, -0x29b92700

    add-int/2addr v3, v11

    invoke-static {v2, v10, v3}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Lcom/kingroot/kinguser/cfo$f;I)V

    goto :goto_c

    .line 597
    :pswitch_7
    const/4 v2, 0x0

    .line 598
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 599
    :try_start_b
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_20

    .line 600
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 601
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfo;->h(Lcom/kingroot/kinguser/cfo;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 603
    :cond_20
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 604
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 606
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfo;->d(Lcom/kingroot/kinguser/cfo;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 607
    :try_start_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfo$f;

    .line 608
    if-eqz v2, :cond_21

    .line 609
    iget-object v5, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v5}, Lcom/kingroot/kinguser/cfo;->e(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfw;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/kingroot/kinguser/cfw;->add(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_e

    .line 612
    :catchall_8
    move-exception v2

    monitor-exit v3

    throw v2

    .line 603
    :catchall_9
    move-exception v2

    monitor-exit v3

    throw v2

    .line 612
    :cond_22
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 613
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    .line 621
    :cond_23
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->n(Lcom/kingroot/kinguser/cfo;)V

    goto/16 :goto_0

    .line 626
    :pswitch_8
    iget-object v2, p0, Lcom/kingroot/kinguser/cfo$e;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfo;->o(Lcom/kingroot/kinguser/cfo;)V

    goto/16 :goto_0

    :cond_24
    move v3, v2

    goto/16 :goto_2

    :cond_25
    move-object v2, v9

    goto/16 :goto_6

    :cond_26
    move-wide v4, v10

    goto/16 :goto_1

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
