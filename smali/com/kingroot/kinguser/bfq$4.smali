.class Lcom/kingroot/kinguser/bfq$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnh:Lcom/kingroot/kinguser/bfq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfq;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 10
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 399
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 406
    new-instance v6, Lcom/kingroot/kinguser/bfq$a;

    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-direct {v6, v0}, Lcom/kingroot/kinguser/bfq$a;-><init>(Lcom/kingroot/kinguser/bfq;)V

    .line 409
    :try_start_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v5

    .line 410
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 411
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_10

    .line 412
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 416
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaF()Ljava/util/Map;

    move-result-object v0

    const-string v2, "imei"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/aay;->al(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;)Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    if-eqz v0, :cond_4

    .line 421
    if-eqz v3, :cond_0

    .line 422
    const/4 v0, 0x3

    :try_start_3
    iput v0, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    invoke-static {}, Lcom/kingroot/kinguser/bfq;->aaF()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->enable(ZLjava/util/Map;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    .line 426
    if-eqz v3, :cond_1

    .line 427
    :try_start_4
    iput v0, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_1
    move v9, v0

    .line 437
    :goto_1
    if-nez v9, :cond_a

    .line 439
    if-nez v3, :cond_5

    .line 481
    if-eqz v3, :cond_2

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v2

    iget v3, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    iget v4, v6, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    iget v5, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I

    iget-wide v6, v6, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/ady;->a(ZIIIJ)V

    .line 485
    :cond_2
    if-eqz v8, :cond_3

    .line 487
    :try_start_5
    invoke-interface {v8, v9}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->onCallback(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 497
    :cond_3
    :goto_2
    return-void

    .line 429
    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    move v9, v0

    .line 431
    goto :goto_1

    .line 433
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0, v3, v6}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;ZLcom/kingroot/kinguser/bfq$a;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v0

    move v9, v0

    goto :goto_1

    .line 444
    :cond_5
    const/4 v0, 0x4

    :try_start_7
    iput v0, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;Lcom/kingroot/kinguser/bfq$a;)Z

    move-result v0

    .line 449
    if-nez v0, :cond_6

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;Lcom/kingroot/kinguser/bfq$a;)Z

    move-result v0

    .line 453
    :cond_6
    if-eqz v0, :cond_8

    .line 454
    const/4 v0, 0x5

    iput v0, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 458
    :try_start_8
    invoke-static {}, Lcom/kingroot/kinguser/bfr;->aaH()Lcom/kingroot/kinguser/bfr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bfr;->dO(Z)V

    .line 461
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfs;->aaJ()Ljava/util/List;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bfq;->bQ(Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 481
    :goto_4
    if-eqz v3, :cond_7

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v2

    iget v3, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    iget v4, v6, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    iget v5, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I

    iget-wide v6, v6, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/ady;->a(ZIIIJ)V

    .line 485
    :cond_7
    if-eqz v8, :cond_3

    .line 487
    :try_start_9
    invoke-interface {v8, v9}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->onCallback(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 488
    :catch_1
    move-exception v0

    goto :goto_2

    .line 470
    :cond_8
    const/4 v9, -0x3

    .line 472
    :try_start_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->a(Lcom/kingroot/kinguser/bfq;)Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfq;->bne:Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/urlcheck/aidl/IDaemonService;->enable(ZLjava/util/Map;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 481
    if-eqz v3, :cond_9

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v2

    iget v3, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    iget v4, v6, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    iget v5, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I

    iget-wide v6, v6, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/ady;->a(ZIIIJ)V

    .line 485
    :cond_9
    if-eqz v8, :cond_3

    .line 487
    :try_start_b
    invoke-interface {v8, v9}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->onCallback(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 488
    :catch_2
    move-exception v0

    goto/16 :goto_2

    .line 481
    :cond_a
    if-eqz v3, :cond_b

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v2

    iget v3, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    iget v4, v6, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    iget v5, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I

    iget-wide v6, v6, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/ady;->a(ZIIIJ)V

    .line 485
    :cond_b
    if-eqz v8, :cond_c

    .line 487
    :try_start_c
    invoke-interface {v8, v9}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->onCallback(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 495
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bfq$4;->bnh:Lcom/kingroot/kinguser/bfq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfq;->b(Lcom/kingroot/kinguser/bfq;)V

    goto/16 :goto_2

    .line 477
    :catch_3
    move-exception v0

    move-object v0, v2

    move v1, v4

    .line 479
    :goto_6
    const/4 v8, -0x4

    .line 481
    if-eqz v1, :cond_d

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v2

    iget v3, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    iget v4, v6, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    iget v5, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I

    iget-wide v6, v6, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/ady;->a(ZIIIJ)V

    .line 485
    :cond_d
    if-eqz v0, :cond_c

    .line 487
    :try_start_d
    invoke-interface {v0, v8}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->onCallback(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_5

    .line 488
    :catch_4
    move-exception v0

    goto :goto_5

    .line 481
    :catchall_0
    move-exception v0

    move-object v8, v2

    move v3, v4

    move v9, v1

    :goto_7
    if-eqz v3, :cond_e

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v2

    iget v3, v6, Lcom/kingroot/kinguser/bfq$a;->bni:I

    iget v4, v6, Lcom/kingroot/kinguser/bfq$a;->bnj:I

    iget v5, v6, Lcom/kingroot/kinguser/bfq$a;->bnk:I

    iget-wide v6, v6, Lcom/kingroot/kinguser/bfq$a;->bnl:J

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/ady;->a(ZIIIJ)V

    .line 485
    :cond_e
    if-eqz v8, :cond_f

    .line 487
    :try_start_e
    invoke-interface {v8, v9}, Lcom/kingroot/kinguser/urlcheck/aidl/ICallback;->onCallback(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 490
    :cond_f
    :goto_8
    throw v0

    .line 488
    :catch_5
    move-exception v0

    goto/16 :goto_2

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_8

    .line 481
    :catchall_1
    move-exception v0

    move-object v8, v2

    move v9, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move v9, v1

    goto :goto_7

    :catchall_3
    move-exception v1

    move v9, v0

    move-object v0, v1

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    .line 477
    :catch_8
    move-exception v0

    move-object v0, v2

    move v1, v3

    goto :goto_6

    :catch_9
    move-exception v0

    move-object v0, v8

    move v1, v3

    goto :goto_6

    .line 463
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 429
    :catch_b
    move-exception v1

    goto/16 :goto_3

    :cond_10
    move-object v8, v2

    goto/16 :goto_0
.end method
