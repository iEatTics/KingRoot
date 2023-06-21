.class public Lcom/kingroot/kinguser/tw;
.super Lcom/kingroot/kinguser/th;
.source "SourceFile"


# static fields
.field private static HG:Lcom/kingroot/kinguser/tv;

.field private static HH:Lcom/kingroot/common/utils/system/ProcessUtils$a;

.field private static HI:J

.field private static HJ:Lcom/kingroot/common/utils/system/ProcessUtils$a;

.field private static HK:J

.field private static HL:Ljava/util/concurrent/ExecutorService;

.field private static final HM:Ljava/lang/Runnable;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/kingroot/kinguser/tw;->HG:Lcom/kingroot/kinguser/tv;

    .line 102
    sput-object v0, Lcom/kingroot/kinguser/tw;->HH:Lcom/kingroot/common/utils/system/ProcessUtils$a;

    .line 103
    sput-wide v2, Lcom/kingroot/kinguser/tw;->HI:J

    .line 105
    sput-object v0, Lcom/kingroot/kinguser/tw;->HJ:Lcom/kingroot/common/utils/system/ProcessUtils$a;

    .line 106
    sput-wide v2, Lcom/kingroot/kinguser/tw;->HK:J

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kingroot/kinguser/tw;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/wj;

    const-string v1, "KServiceStatisticReceiver"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wj;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/tw;->HL:Ljava/util/concurrent/ExecutorService;

    .line 114
    new-instance v0, Lcom/kingroot/kinguser/tw$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/tw$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/tw;->HM:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/th;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/common/utils/system/ProcessUtils$a;)Lcom/kingroot/common/utils/system/ProcessUtils$a;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/kingroot/kinguser/tw;->HJ:Lcom/kingroot/common/utils/system/ProcessUtils$a;

    return-object p0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/tv;)Lcom/kingroot/kinguser/tv;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/kingroot/kinguser/tw;->HG:Lcom/kingroot/kinguser/tv;

    return-object p0
.end method

.method public static a(JZ)V
    .locals 4

    .prologue
    .line 321
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 322
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 323
    const-string v2, "extra_proc_live_time"

    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 324
    const-string v2, "extra_proc_is_exit"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JI)V
    .locals 3

    .prologue
    .line 454
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 455
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 456
    const-string v2, "extra_task_tag"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v2, "extra_task_start_time"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 458
    const-string v2, "extra_proc_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static aU(I)V
    .locals 3

    .prologue
    .line 384
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 385
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 386
    const-string v2, "extra_thread_peak_size"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static aV(I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 492
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kingroot.master.action.NOTIFY_STATISTIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    const-string v1, "extra_type"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v1, "extra_proc_flag"

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v1, "extra_proc_id"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    return-object v0
.end method

.method static synthetic aW(I)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/common/utils/system/ProcessUtils$a;)Lcom/kingroot/common/utils/system/ProcessUtils$a;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/kingroot/kinguser/tw;->HH:Lcom/kingroot/common/utils/system/ProcessUtils$a;

    return-object p0
.end method

.method public static b(Ljava/lang/String;JI)V
    .locals 3

    .prologue
    .line 474
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 475
    const/16 v1, 0x13

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 476
    const-string v2, "extra_task_tag"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v2, "extra_task_start_time"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 478
    const-string v2, "extra_proc_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 339
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 340
    const-string v2, "extra_task_tag"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v2, "extra_task_max_live_time"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 342
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/tw$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/tw$2;-><init>(Lcom/kingroot/kinguser/tw;Landroid/content/Intent;)V

    .line 283
    sget-object v1, Lcom/kingroot/kinguser/tw;->HL:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public static ka()V
    .locals 3

    .prologue
    .line 291
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 292
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 293
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static kb()V
    .locals 3

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 307
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static kc()V
    .locals 3

    .prologue
    .line 423
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 424
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 425
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static kd()V
    .locals 3

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 438
    const/16 v1, 0x11

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 439
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic ke()Lcom/kingroot/common/utils/system/ProcessUtils$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/tw;->HH:Lcom/kingroot/common/utils/system/ProcessUtils$a;

    return-object v0
.end method

.method static synthetic kf()Lcom/kingroot/common/utils/system/ProcessUtils$a;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/tw;->HJ:Lcom/kingroot/common/utils/system/ProcessUtils$a;

    return-object v0
.end method

.method static synthetic kg()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/kingroot/kinguser/tw;->HI:J

    return-wide v0
.end method

.method static synthetic kh()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/kingroot/kinguser/tw;->HK:J

    return-wide v0
.end method

.method static synthetic ki()Lcom/kingroot/kinguser/tv;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/tw;->HG:Lcom/kingroot/kinguser/tv;

    return-object v0
.end method

.method static synthetic kj()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/tw;->HM:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic kk()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/tw;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static t(J)V
    .locals 4

    .prologue
    .line 355
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 356
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 357
    const-string v2, "extra_main_start_time"

    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 358
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static u(J)V
    .locals 4

    .prologue
    .line 396
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 397
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 398
    const-string v2, "extra_service_run_time"

    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static v(J)V
    .locals 4

    .prologue
    .line 408
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    .line 409
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/kingroot/kinguser/tw;->aV(I)Landroid/content/Intent;

    move-result-object v1

    .line 410
    const-string v2, "extra_service_pss"

    invoke-virtual {v1, v2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic w(J)J
    .locals 0

    .prologue
    .line 28
    sput-wide p0, Lcom/kingroot/kinguser/tw;->HK:J

    return-wide p0
.end method

.method static synthetic x(J)J
    .locals 0

    .prologue
    .line 28
    sput-wide p0, Lcom/kingroot/kinguser/tw;->HI:J

    return-wide p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.kingroot.master.action.NOTIFY_STATISTIC"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const/4 v1, 0x0

    .line 159
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    instance-of v2, v0, Lcom/kingroot/kinguser/rg;

    if-eqz v2, :cond_2

    .line 162
    check-cast v0, Lcom/kingroot/kinguser/rg;

    .line 163
    invoke-virtual {v0}, Lcom/kingroot/kinguser/rg;->hQ()Z

    move-result v0

    .line 166
    :goto_1
    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/tw;->d(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
