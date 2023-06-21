.class public Lcom/kingroot/kinguser/cfx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfx$a;
    }
.end annotation


# instance fields
.field protected bYu:Lcom/kingroot/kinguser/cfu;

.field private cdL:B

.field private cdM:Z

.field private cdN:Ljava/lang/String;

.field private cdO:Ljava/lang/Thread;

.field private final cdP:Ljava/lang/Object;

.field private cdQ:Ljava/net/Socket;

.field private cdR:Ljava/io/DataOutputStream;

.field private cdS:Ljava/io/DataInputStream;

.field private cdT:Lcom/kingroot/kinguser/cfx$a;

.field private cdU:Z

.field private mContext:Landroid/content/Context;

.field private volatile mStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;BZLcom/kingroot/kinguser/cfx$a;Lcom/kingroot/kinguser/cfu;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-byte v1, p0, Lcom/kingroot/kinguser/cfx;->cdL:B

    .line 67
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfx;->cdM:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    .line 71
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdP:Ljava/lang/Object;

    .line 80
    iput-boolean v1, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/cfx;->mContext:Landroid/content/Context;

    .line 95
    iput-byte p2, p0, Lcom/kingroot/kinguser/cfx;->cdL:B

    .line 96
    iput-boolean p3, p0, Lcom/kingroot/kinguser/cfx;->cdM:Z

    .line 97
    iput-object p4, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    .line 98
    iput-object p5, p0, Lcom/kingroot/kinguser/cfx;->bYu:Lcom/kingroot/kinguser/cfu;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cfx$a;Lcom/kingroot/kinguser/cfu;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 102
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/cfx;-><init>(Landroid/content/Context;BZLcom/kingroot/kinguser/cfx$a;Lcom/kingroot/kinguser/cfu;)V

    .line 103
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/cfu;)I
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 564
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/cfu;->eR(Z)V

    .line 565
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/cfu;->eU(Z)I

    move-result v5

    .line 566
    const/4 v6, 0x0

    .line 567
    const-wide/16 v0, 0x0

    move v8, v4

    move v2, v4

    .line 568
    :goto_0
    if-ge v8, v5, :cond_7

    .line 570
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/cfu;->eP(Z)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v6

    .line 571
    if-nez v6, :cond_0

    .line 569
    :goto_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 576
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 577
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/cfx;->b(Lcom/kingroot/kinguser/cfv$b;)I

    move-result v2

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v0

    .line 583
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/kingroot/kinguser/cen;->kZ(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 584
    if-nez v8, :cond_2

    const-string v7, "tcp connect"

    invoke-static {v7}, Lcom/kingroot/kinguser/cfd;->nS(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 588
    const v2, -0x27100

    move-wide v12, v0

    move-object v1, v6

    move-wide v6, v12

    .line 594
    :goto_2
    if-nez v2, :cond_3

    move v0, v3

    :goto_3
    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/cfu;->eS(Z)V

    .line 597
    if-eqz v1, :cond_1

    .line 598
    new-instance v9, Lcom/kingroot/kinguser/cfm;

    invoke-direct {v9}, Lcom/kingroot/kinguser/cfm;-><init>()V

    .line 599
    invoke-virtual {v1}, Lcom/kingroot/kinguser/cfv$b;->amE()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/kingroot/kinguser/cfm;->ccK:Ljava/lang/String;

    .line 600
    invoke-virtual {v1}, Lcom/kingroot/kinguser/cfv$b;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/kingroot/kinguser/cfm;->ccL:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/kingroot/kinguser/cfm;->ccN:Ljava/lang/String;

    .line 602
    iput-wide v6, v9, Lcom/kingroot/kinguser/cfm;->ccP:J

    .line 603
    iput v2, v9, Lcom/kingroot/kinguser/cfm;->errorCode:I

    .line 604
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    iput-object v0, v9, Lcom/kingroot/kinguser/cfm;->bQX:Ljava/lang/String;

    .line 605
    if-ge v8, v5, :cond_4

    add-int/lit8 v0, v8, 0x1

    :goto_4
    iput v0, v9, Lcom/kingroot/kinguser/cfm;->ccM:I

    .line 606
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/cfu;->eT(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/kingroot/kinguser/cfm;->J(Ljava/util/ArrayList;)V

    .line 608
    if-ne v8, v5, :cond_5

    .line 609
    :goto_5
    if-eqz v3, :cond_6

    .line 611
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cfx$3;

    invoke-direct {v1, p0, v9}, Lcom/kingroot/kinguser/cfx$3;-><init>(Lcom/kingroot/kinguser/cfx;Lcom/kingroot/kinguser/cfm;)V

    const-string v3, "uploadConnectInfo"

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 641
    :cond_1
    :goto_6
    return v2

    .line 592
    :cond_2
    invoke-interface {p1, v3}, Lcom/kingroot/kinguser/cfu;->eQ(Z)V

    goto :goto_1

    :cond_3
    move v0, v4

    .line 594
    goto :goto_3

    :cond_4
    move v0, v5

    .line 605
    goto :goto_4

    :cond_5
    move v3, v4

    .line 608
    goto :goto_5

    .line 629
    :cond_6
    iput-boolean v4, v9, Lcom/kingroot/kinguser/cfm;->ccT:Z

    .line 630
    const-string v0, "false"

    iput-object v0, v9, Lcom/kingroot/kinguser/cfm;->ccQ:Ljava/lang/String;

    .line 633
    const-class v0, Lcom/kingroot/kinguser/cfh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfh;

    .line 634
    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfh;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/kingroot/kinguser/cfm;->d(Lcom/kingroot/kinguser/ceu;)V

    goto :goto_6

    :cond_7
    move-wide v12, v0

    move-object v1, v6

    move-wide v6, v12

    goto :goto_2
.end method

.method private a(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 463
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 464
    invoke-virtual {v0, v1, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 465
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 467
    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfx;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amJ()V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/cfv$b;)Z
    .locals 2

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amK()I

    .line 437
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cfv$b;->amE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 439
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cfv$b;->getPort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/cfx;->a(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    .line 442
    iget-byte v0, p0, Lcom/kingroot/kinguser/cfx;->cdL:B

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfx;->amM()Z

    move-result v0

    return v0

    .line 444
    :pswitch_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdR:Ljava/io/DataOutputStream;

    .line 446
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdS:Ljava/io/DataInputStream;

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ah([B)I
    .locals 2

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdR:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdR:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 319
    :catch_0
    move-exception v0

    const v0, -0x4baf0

    goto :goto_0
.end method

.method private amI()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Lcom/kingroot/kinguser/cfx$1;

    const-string v1, "RcvThread"

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfx$1;-><init>(Lcom/kingroot/kinguser/cfx;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdO:Ljava/lang/Thread;

    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdO:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdO:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 337
    return-void
.end method

.method private amJ()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 342
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    if-nez v0, :cond_2

    .line 345
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfx;->cdM:Z

    if-eqz v0, :cond_7

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdS:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 348
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdS:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 349
    const v3, 0xf4240

    if-lt v2, v3, :cond_1

    .line 412
    :goto_2
    return-void

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/cfx;->cdS:Ljava/io/DataInputStream;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Lcom/kingroot/kinguser/cfv;->a(Ljava/io/InputStream;IILcom/kingroot/kinguser/cfv$a;)[B

    move-result-object v2

    .line 356
    if-eqz v2, :cond_0

    .line 360
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/cfx;->d(I[B)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 365
    iget-boolean v2, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    if-nez v2, :cond_4

    .line 366
    invoke-direct {p0, v6, v1}, Lcom/kingroot/kinguser/cfx;->m(ZZ)I

    .line 367
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/16 v3, 0xa

    invoke-interface {v2, v3, v0}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 400
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    if-nez v0, :cond_3

    .line 406
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfx;->stop()I

    .line 409
    :cond_3
    iput-boolean v1, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    goto :goto_2

    .line 372
    :cond_4
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    goto :goto_3

    .line 375
    :catch_1
    move-exception v0

    .line 378
    iget-boolean v2, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    if-nez v2, :cond_5

    .line 379
    invoke-direct {p0, v6, v1}, Lcom/kingroot/kinguser/cfx;->m(ZZ)I

    .line 380
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/16 v3, 0xb

    invoke-interface {v2, v3, v0}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    goto :goto_3

    .line 385
    :cond_5
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    goto :goto_3

    .line 388
    :catch_2
    move-exception v0

    .line 391
    iget-boolean v2, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    if-nez v2, :cond_6

    .line 392
    invoke-direct {p0, v6, v1}, Lcom/kingroot/kinguser/cfx;->m(ZZ)I

    .line 393
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/16 v3, 0xc

    invoke-interface {v2, v3, v0}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    goto :goto_3

    .line 398
    :cond_6
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method private amK()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 474
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdP:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    if-nez v2, :cond_1

    .line 477
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    monitor-exit v1

    .line 482
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amL()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdP:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 493
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 500
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdS:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 508
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-nez v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    :cond_3
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdR:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 520
    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 525
    :try_start_6
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdP:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 527
    :try_start_7
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 528
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    .line 530
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 533
    const-wide/16 v2, 0x7d0

    :try_start_8
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 534
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 536
    const v0, -0x41eb0

    .line 538
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 520
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 530
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 539
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 540
    const v0, -0x222e0

    .line 542
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    .line 543
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 544
    const v0, -0xdbba0

    .line 546
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_1
.end method

.method private amL()Z
    .locals 2

    .prologue
    .line 714
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdP:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x1

    monitor-exit v1

    .line 722
    :goto_0
    return v0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    .line 722
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/kingroot/kinguser/cff$d;[B)I
    .locals 16

    .prologue
    .line 267
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    monitor-enter v9
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/cfx;->amM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    const v1, -0x2bf20

    monitor-exit v9

    .line 310
    :goto_0
    return v1

    .line 272
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 273
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    move-object/from16 v0, p2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 275
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 276
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/cfx;->cdR:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 281
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 282
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 283
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kingroot/kinguser/az;

    .line 284
    if-eqz v5, :cond_1

    .line 285
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v1

    const-string v2, "TcpNetwork"

    iget v3, v5, Lcom/kingroot/kinguser/az;->cmd:I

    iget v4, v5, Lcom/kingroot/kinguser/az;->seqNo:I

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v8, "%d/%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    array-length v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;IILjava/lang/String;)V

    .line 290
    iget v1, v5, Lcom/kingroot/kinguser/az;->jX:I

    if-nez v1, :cond_1

    .line 292
    new-instance v1, Lcom/kingroot/kinguser/cfm;

    invoke-direct {v1}, Lcom/kingroot/kinguser/cfm;-><init>()V

    .line 293
    iget v2, v5, Lcom/kingroot/kinguser/az;->seqNo:I

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/cfm;->a(Lcom/kingroot/kinguser/cfm;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 297
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v9

    throw v1
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 300
    :catch_0
    move-exception v1

    .line 301
    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    .line 303
    const v1, -0x50910

    goto/16 :goto_0

    .line 297
    :cond_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    :try_start_4
    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 310
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 304
    :catch_1
    move-exception v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    .line 307
    const v1, -0x4e200

    goto/16 :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/cfv$b;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x9

    .line 646
    if-nez p1, :cond_1

    .line 647
    const/16 v0, -0xa

    .line 709
    :cond_0
    :goto_0
    return v0

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfx;->amM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfx;->a(Lcom/kingroot/kinguser/cfv$b;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    .line 664
    :goto_1
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 666
    const v0, -0x11170

    .line 668
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v3, 0x7

    invoke-interface {v2, v3, p1}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 671
    :cond_2
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    .line 662
    :cond_3
    const v0, -0x53020

    goto :goto_1

    .line 672
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 673
    const v0, -0x1fbd0

    .line 675
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_4

    .line 676
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/16 v3, 0x8

    invoke-interface {v2, v3, p1}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 678
    :cond_4
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    .line 679
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 680
    invoke-virtual {v1}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, -0x7a120

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cen;->X(Ljava/lang/String;I)I

    move-result v0

    .line 682
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_5

    .line 683
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    invoke-interface {v2, v3, p1}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 685
    :cond_5
    invoke-virtual {v1}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    .line 686
    :catch_3
    move-exception v0

    move-object v1, v0

    .line 687
    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, -0x668a0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cen;->X(Ljava/lang/String;I)I

    move-result v0

    .line 689
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_6

    .line 690
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    invoke-interface {v2, v3, p1}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 692
    :cond_6
    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto :goto_0

    .line 693
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 694
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, -0x6b6c0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cen;->X(Ljava/lang/String;I)I

    move-result v0

    .line 696
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_7

    .line 697
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    invoke-interface {v2, v3, p1}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 699
    :cond_7
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto/16 :goto_0

    .line 700
    :catch_5
    move-exception v0

    move-object v1, v0

    .line 701
    const v0, -0xdbba0

    .line 703
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v2, :cond_8

    .line 704
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    invoke-interface {v2, v3, p1}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V

    .line 706
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfx;)Lcom/kingroot/kinguser/cfx$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    return-object v0
.end method

.method private d(I[B)V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cfx$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/cfx$2;-><init>(Lcom/kingroot/kinguser/cfx;I[B)V

    const-string v2, "shark-onreceive-callback"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method

.method private getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 760
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 764
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isStarted()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized j(Landroid/content/Context;Z)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->isStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 143
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfx;->amN()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    const v0, -0x35b60

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cfx$a;->lr(I)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->bYu:Lcom/kingroot/kinguser/cfu;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cfx;->a(Lcom/kingroot/kinguser/cfu;)I

    move-result v1

    .line 153
    if-eqz v1, :cond_4

    move v0, v1

    .line 155
    goto :goto_0

    .line 159
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    .line 160
    iget-byte v1, p0, Lcom/kingroot/kinguser/cfx;->cdL:B

    if-nez v1, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amI()V

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v1, :cond_0

    .line 167
    if-eqz p2, :cond_6

    .line 168
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cfx$a;->lr(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 170
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cfx$a;->lr(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized m(ZZ)I
    .locals 5

    .prologue
    .line 189
    monitor-enter p0

    if-nez p1, :cond_0

    .line 191
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfx;->cdU:Z

    .line 194
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfx;->mStopped:Z

    .line 195
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amK()I

    move-result v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stop socket failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/cfx$a;->d(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 201
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    if-eqz v1, :cond_1

    .line 202
    if-eqz p1, :cond_3

    .line 203
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cfx$a;->lr(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_3
    if-eqz p2, :cond_4

    .line 206
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cfx$a;->lr(I)V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdT:Lcom/kingroot/kinguser/cfx$a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/cfx$a;->lr(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cff$d;[B)I
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const v0, -0x2e630

    .line 256
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cfx;->amM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    const v0, -0x2bf20

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cff$d;->alO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    const/16 v0, -0x11

    goto :goto_0

    .line 247
    :cond_2
    const/4 v0, -0x1

    .line 248
    iget-byte v1, p0, Lcom/kingroot/kinguser/cfx;->cdL:B

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfx;->b(Lcom/kingroot/kinguser/cff$d;[B)I

    move-result v0

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/cfx;->ah([B)I

    move-result v0

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public amG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->cdN:Ljava/lang/String;

    return-object v0
.end method

.method protected amH()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/cfx;->m(ZZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const v0, -0x33450

    .line 222
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/cfx;->j(Landroid/content/Context;Z)I

    move-result v0

    goto :goto_0
.end method

.method protected amM()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 728
    iget-object v1, p0, Lcom/kingroot/kinguser/cfx;->cdP:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 731
    monitor-exit v1

    .line 737
    :goto_0
    return v0

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->amL()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/cfx;->cdQ:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 737
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public amN()Z
    .locals 1

    .prologue
    .line 748
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfx;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 751
    if-nez v0, :cond_0

    .line 752
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public amq()Lcom/kingroot/kinguser/cfu;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/cfx;->bYu:Lcom/kingroot/kinguser/cfu;

    return-object v0
.end method

.method public cu(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/cfx;->j(Landroid/content/Context;Z)I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, v0, v0}, Lcom/kingroot/kinguser/cfx;->m(ZZ)I

    move-result v0

    return v0
.end method
