.class public final Lcom/kingroot/kinguser/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/lo;


# static fields
.field private static qJ:Lcom/kingroot/kinguser/hb;


# instance fields
.field private final qK:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/king/uranus/i;",
            ">;"
        }
    .end annotation
.end field

.field private qL:Lcom/kingroot/kinguser/ib;

.field private qM:Lcom/kingroot/kinguser/lp;

.field private qN:Lcom/kingroot/kinguser/mg;

.field private qO:Lcom/kingroot/kinguser/mg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/hb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/hb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/hb;->qJ:Lcom/kingroot/kinguser/hb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/hb;->qK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 110
    new-instance v0, Lcom/kingroot/kinguser/hc;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/hc;-><init>(Lcom/kingroot/kinguser/hb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/hb;->qN:Lcom/kingroot/kinguser/mg;

    .line 477
    new-instance v0, Lcom/kingroot/kinguser/hs;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/hs;-><init>(Lcom/kingroot/kinguser/hb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/hb;->qO:Lcom/kingroot/kinguser/mg;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/hb;)Lcom/king/uranus/A;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/hb;->aR()Lcom/king/uranus/A;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/king/uranus/i;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/uranus/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 313
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return-object v4

    .line 318
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/hu;->e(Lcom/king/uranus/i;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p1, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    iget-object v0, v0, Lcom/king/uranus/c;->f:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v5, 0x2

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIILjava/util/ArrayList;I)Lcom/king/uranus/j;

    move-result-object v0

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->b(Lcom/king/uranus/i;)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/hb;Lcom/king/uranus/i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->c(Lcom/king/uranus/i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/king/uranus/g;Lcom/king/uranus/i;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/king/uranus/g;",
            "Lcom/king/uranus/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 378
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 379
    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 384
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 387
    iget v0, p2, Lcom/king/uranus/g;->at:I

    sparse-switch v0, :sswitch_data_0

    .line 431
    iget v1, p2, Lcom/king/uranus/g;->av:I

    move-object v0, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIIII)Lcom/king/uranus/j;

    move-result-object v0

    .line 438
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    move-object v0, v6

    .line 443
    goto :goto_0

    .line 393
    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/hb;->qL:Lcom/kingroot/kinguser/ib;

    invoke-static {p2, p1, v0}, Lcom/kingroot/kinguser/hy;->a(Lcom/king/uranus/g;Ljava/lang/String;Lcom/kingroot/kinguser/ib;)Lcom/kingroot/kinguser/il;

    move-result-object v0

    .line 394
    invoke-static {p2}, Lcom/kingroot/kinguser/hx;->a(Lcom/king/uranus/g;)Lcom/king/uranus/cS;

    move-result-object v1

    .line 396
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/il;->a(Lcom/king/uranus/cS;)I
    :try_end_0
    .catch Lcom/king/uranus/R; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/king/uranus/P; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 403
    :goto_2
    iget v1, p2, Lcom/king/uranus/g;->av:I

    move-object v0, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIIII)Lcom/king/uranus/j;

    move-result-object v0

    .line 410
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :sswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/hb;->aS()Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/hb;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_2

    .line 423
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 399
    :catch_0
    move-exception v0

    goto :goto_2

    .line 397
    :catch_1
    move-exception v0

    goto :goto_2

    .line 387
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x18 -> :sswitch_1
        0x149 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/kingroot/kinguser/hb;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/i;

    .line 208
    iget-object v0, v0, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    iget-object v0, v0, Lcom/king/uranus/c;->f:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIILjava/util/ArrayList;I)Lcom/king/uranus/j;

    move-result-object v0

    .line 215
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 218
    :cond_2
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/hb;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static aQ()Lcom/kingroot/kinguser/hb;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/hb;->qJ:Lcom/kingroot/kinguser/hb;

    return-object v0
.end method

.method private aR()Lcom/king/uranus/A;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I

    move-result v2

    .line 156
    if-eqz v2, :cond_0

    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/A;

    .line 164
    if-nez v0, :cond_1

    move-object v0, v1

    .line 166
    goto :goto_0

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/hb;->qM:Lcom/kingroot/kinguser/lp;

    const-string v3, "cloud_cmd_last_pull_timed"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/kingroot/kinguser/lp;->b(Ljava/lang/String;J)V

    .line 173
    iget-object v2, v0, Lcom/king/uranus/A;->bU:Ljava/lang/String;

    .line 174
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 176
    goto :goto_0

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/hb;->qM:Lcom/kingroot/kinguser/lp;

    const-string v4, "cloud_cmd_last_tips_id"

    invoke-interface {v3, v4}, Lcom/kingroot/kinguser/lp;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 188
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/hb;->qM:Lcom/kingroot/kinguser/lp;

    const-string v3, "cloud_cmd_last_tips_id"

    invoke-interface {v1, v3, v2}, Lcom/kingroot/kinguser/lp;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static aS()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 452
    new-instance v1, Lcom/king/uranus/b;

    invoke-direct {v1}, Lcom/king/uranus/b;-><init>()V

    .line 453
    const/16 v2, 0x8

    iput v2, v1, Lcom/king/uranus/b;->d:I

    .line 454
    new-instance v2, Lcom/king/uranus/F;

    invoke-direct {v2}, Lcom/king/uranus/F;-><init>()V

    iput-object v2, v1, Lcom/king/uranus/b;->c:Lcom/king/uranus/F;

    .line 456
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v3

    invoke-static {v2, v1, v0, v3}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/king/uranus/b;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I

    move-result v1

    .line 457
    if-nez v1, :cond_0

    .line 458
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/a;

    .line 459
    if-eqz v0, :cond_0

    .line 460
    iget-object v0, v0, Lcom/king/uranus/a;->a:Ljava/util/ArrayList;

    .line 464
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/king/uranus/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/uranus/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    iget-object v1, p1, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    iget-object v2, v1, Lcom/king/uranus/c;->f:Ljava/lang/String;

    .line 348
    iget-object v3, p1, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    .line 349
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/g;

    .line 358
    :try_start_0
    invoke-direct {p0, v2, v0, p1}, Lcom/kingroot/kinguser/hb;->a(Ljava/lang/String;Lcom/king/uranus/g;Lcom/king/uranus/i;)Ljava/util/List;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_2

    .line 360
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 362
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 366
    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/hb;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/hb;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/hb;->qK:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private c(Lcom/king/uranus/i;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/uranus/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 518
    if-nez p1, :cond_0

    .line 538
    :goto_0
    return-object v4

    .line 524
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/hu;->e(Lcom/king/uranus/i;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 526
    iget-object v0, p1, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    iget-object v0, v0, Lcom/king/uranus/c;->f:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v5, 0x2

    move v3, v1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIILjava/util/ArrayList;I)Lcom/king/uranus/j;

    move-result-object v0

    .line 533
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 534
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->d(Lcom/king/uranus/i;)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/hb;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v0, Lcom/king/uranus/k;

    invoke-direct {v0}, Lcom/king/uranus/k;-><init>()V

    .line 231
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    .line 233
    invoke-static {v0}, Lcom/king/uranus/N;->a(Lcom/king/uranus/k;)V

    goto :goto_0
.end method

.method private d(Lcom/king/uranus/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/uranus/i;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 548
    if-nez p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-object v0

    .line 553
    :cond_1
    iget-object v1, p1, Lcom/king/uranus/i;->ay:Lcom/king/uranus/c;

    iget-object v2, v1, Lcom/king/uranus/c;->f:Ljava/lang/String;

    .line 554
    iget-object v3, p1, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    .line 555
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/g;

    .line 563
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/hb;->a(Ljava/lang/String;Lcom/king/uranus/g;)Lcom/king/uranus/j;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_2

    .line 565
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 567
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 571
    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/hb;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/hb;->c(Ljava/util/List;)V

    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    iget-object v2, p0, Lcom/kingroot/kinguser/hb;->qM:Lcom/kingroot/kinguser/lp;

    const-string v3, "cloud_cmd_last_pull_timed"

    invoke-interface {v2, v3}, Lcom/kingroot/kinguser/lp;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/i;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 275
    :goto_0
    return-object v0

    .line 250
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_5

    .line 251
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/i;

    .line 253
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 254
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    :cond_3
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    .line 259
    :cond_4
    iget-object v1, v0, Lcom/king/uranus/i;->aB:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/king/uranus/g;

    .line 260
    if-eqz v1, :cond_3

    .line 264
    iget v1, v1, Lcom/king/uranus/g;->at:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 268
    :sswitch_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 275
    goto :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x15e -> :sswitch_0
    .end sparse-switch
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/i;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    .line 290
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/i;

    .line 294
    :try_start_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/hb;->a(Lcom/king/uranus/i;)Ljava/util/List;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 299
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 303
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/king/uranus/g;)Lcom/king/uranus/j;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 580
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object v0

    .line 584
    :cond_1
    const-string v1, "CloudEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---> execute cloudCmd:cmdid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/king/uranus/g;->at:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :try_start_0
    invoke-static {p2, p1}, Lcom/kingroot/kinguser/hy;->a(Lcom/king/uranus/g;Ljava/lang/String;)Lcom/kingroot/kinguser/il;

    move-result-object v1

    .line 590
    invoke-static {p2}, Lcom/kingroot/kinguser/hx;->a(Lcom/king/uranus/g;)Lcom/king/uranus/cS;

    move-result-object v3

    .line 592
    invoke-interface {v1, v3}, Lcom/kingroot/kinguser/il;->a(Lcom/king/uranus/cS;)I
    :try_end_0
    .catch Lcom/king/uranus/R; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/king/uranus/P; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 601
    :goto_1
    iget v1, p2, Lcom/king/uranus/g;->at:I

    const/16 v3, 0x15e

    if-eq v1, v3, :cond_0

    .line 608
    iget v1, p2, Lcom/king/uranus/g;->av:I

    const/4 v3, 0x3

    move-object v0, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIIII)Lcom/king/uranus/j;

    move-result-object v0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    goto :goto_1

    .line 594
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Lcom/kingroot/kinguser/ib;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kingroot/kinguser/hb;->qL:Lcom/kingroot/kinguser/ib;

    .line 65
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/lp;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/hb;->qM:Lcom/kingroot/kinguser/lp;

    .line 69
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingroot/kinguser/hb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/king/uranus/N;->bi()V

    .line 82
    invoke-virtual {p0}, Lcom/kingroot/kinguser/hb;->d()V

    .line 84
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/hb;->qN:Lcom/kingroot/kinguser/mg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mg;->n(Z)Z

    .line 91
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/hb;->qO:Lcom/kingroot/kinguser/mg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mg;->n(Z)Z

    .line 472
    return-void
.end method
