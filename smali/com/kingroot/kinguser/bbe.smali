.class public Lcom/kingroot/kinguser/bbe;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# static fields
.field public static final beB:Ljava/lang/String;

.field public static final beC:Ljava/lang/String;

.field public static final beD:Ljava/lang/String;

.field private static final beI:Lcom/kingroot/kinguser/bed;

.field private static beJ:Lcom/kingroot/kinguser/bed;


# instance fields
.field private beE:Lcom/kingroot/kinguser/bed;

.field private beF:Lcom/kingroot/kinguser/bed;

.field private beG:Lcom/kingroot/kinguser/bed;

.field private beH:Lcom/kingroot/kinguser/bed;

.field private beK:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    const-string v0, "ia2"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbe;->beB:Ljava/lang/String;

    .line 105
    const-string v0, "ia1"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbe;->beC:Ljava/lang/String;

    .line 106
    const-string v0, "ia3"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbe;->beD:Ljava/lang/String;

    .line 529
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbe$6;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bbe$6;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/bbe;->beI:Lcom/kingroot/kinguser/bed;

    .line 565
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbe$7;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bbe$7;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/bbe;->beJ:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 102
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    .line 135
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbe$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bbe$2;-><init>(Lcom/kingroot/kinguser/bbe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbe;->beE:Lcom/kingroot/kinguser/bed;

    .line 207
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbe$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bbe$3;-><init>(Lcom/kingroot/kinguser/bbe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbe;->beF:Lcom/kingroot/kinguser/bed;

    .line 431
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbe$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bbe$4;-><init>(Lcom/kingroot/kinguser/bbe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbe;->beG:Lcom/kingroot/kinguser/bed;

    .line 442
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bbe$5;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bbe$5;-><init>(Lcom/kingroot/kinguser/bbe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbe;->beH:Lcom/kingroot/kinguser/bed;

    .line 586
    new-instance v0, Lcom/kingroot/kinguser/bbe$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bbe$8;-><init>(Lcom/kingroot/kinguser/bbe;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bbe;->beK:Ljava/lang/Runnable;

    return-void
.end method

.method private Wh()V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/akw;->Gx()Lcom/kingroot/kinguser/akw;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lcom/kingroot/kinguser/akw;->GB()Z

    move-result v0

    .line 316
    if-eqz v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbe;->Wi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {v2}, Lcom/kingroot/kinguser/akw;->GA()I

    move-result v3

    .line 327
    packed-switch v3, :pswitch_data_0

    .line 393
    invoke-virtual {v2}, Lcom/kingroot/kinguser/akw;->GC()V

    goto :goto_0

    .line 330
    :pswitch_0
    invoke-virtual {v2}, Lcom/kingroot/kinguser/akw;->GD()J

    move-result-wide v4

    const-wide/32 v6, 0x337f9800

    invoke-static {v4, v5, v6, v7}, Lcom/kingroot/kinguser/adk;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ayl;->Ve()Z
    :try_end_0
    .catch Lcom/kingroot/kinguser/ayi; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/kingroot/kinguser/ayh; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kingroot/kinguser/ayk; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/kingroot/kinguser/akw;->bO(J)V

    .line 354
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v0

    const v5, 0x40301

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/aye;->bi(I)V

    .line 357
    if-eqz v4, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/akw;->eT(I)V

    .line 358
    if-eqz v4, :cond_0

    .line 361
    if-nez v3, :cond_2

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/baj;->Vv()Lcom/kingroot/kinguser/baj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/baj;->pullPluginOrderSync(Z)I

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/baj;->Vv()Lcom/kingroot/kinguser/baj;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/baj;->processLocalOrderSync(I)I

    .line 373
    :cond_2
    :pswitch_2
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    .line 374
    const/16 v1, 0x138c

    invoke-interface {v0, v1}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/ayv;->Vm()Z
    :try_end_1
    .catch Lcom/kingroot/kinguser/ayi; {:try_start_1 .. :try_end_1} :catch_3

    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/akw;->Gx()Lcom/kingroot/kinguser/akw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akw;->GC()V

    .line 388
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 357
    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    .line 381
    :catch_3
    move-exception v0

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private Wi()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 401
    .line 403
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    const-string v2, "com.tencent.qqpimsecure"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 405
    if-eqz v1, :cond_1

    .line 407
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 411
    :cond_0
    if-eqz v0, :cond_2

    .line 413
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    const v2, 0x40bdc

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aye;->bi(I)V

    .line 424
    :cond_1
    :goto_0
    return v0

    .line 416
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aye;->UP()Lcom/kingroot/kinguser/aye;

    move-result-object v1

    const v2, 0x40bdd

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aye;->bi(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static Wj()V
    .locals 6

    .prologue
    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 519
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ct()J

    move-result-wide v0

    .line 520
    const-wide/32 v4, 0x240c8400

    .line 521
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bbe;->beJ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 524
    :cond_0
    return-void
.end method

.method static synthetic Wk()Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/kingroot/kinguser/bbe;->beI:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bbe;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe;->beK:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bbe;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbe;->bj(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bbe;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/bbe;->beG:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bbe;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbe;->bh(Landroid/content/Context;)V

    return-void
.end method

.method private bh(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe;->beE:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 205
    return-void
.end method

.method private bi(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe;->beF:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 429
    return-void
.end method

.method private bj(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bbe;->beH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 489
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bbe;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/kingroot/kinguser/bbe;->Wh()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bbe;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bbe;->bi(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 110
    .line 112
    new-instance v0, Lcom/kingroot/kinguser/bbe$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/bbe$1;-><init>(Lcom/kingroot/kinguser/bbe;Landroid/content/Intent;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method
