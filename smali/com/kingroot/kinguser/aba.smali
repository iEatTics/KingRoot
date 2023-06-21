.class public Lcom/kingroot/kinguser/aba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final YF:Ljava/lang/Object;

.field private static final YG:Ljava/lang/String;

.field private static final YH:Ljava/lang/String;

.field private static final YI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static YJ:Lcom/kingroot/kinguser/wo;

.field private static YK:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aba;->YF:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data-lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ktools"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aba;->YG:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ktools"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/aba;->YI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/aba$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aba$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aba;->YJ:Lcom/kingroot/kinguser/wo;

    .line 324
    new-instance v0, Lcom/kingroot/kinguser/aba$3;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aba$3;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aba;->YK:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/aba;->YG:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 157
    new-instance v0, Lcom/kingroot/kinguser/aba$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aba$2;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 157
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/aba;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static ee(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v1, Lcom/kingroot/kinguser/aba;->YK:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/wo;->I(Ljava/util/List;)Z

    .line 322
    :cond_0
    return-void
.end method

.method private static ef(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/16 v0, 0xf

    const/4 v5, 0x0

    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object p0

    .line 390
    :cond_0
    :goto_0
    return-object p0

    .line 353
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object v2

    .line 354
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    invoke-static {v2, p0}, Lcom/kingroot/kinguser/zn;->H(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 362
    new-instance v3, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 363
    iput v5, v3, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 364
    iput v5, v3, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 365
    const/16 v1, 0x1ed

    iput v1, v3, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 366
    const-string v1, "u:object_r:system_file:s0"

    iput-object v1, v3, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " zls"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v3}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v1

    or-int/2addr v1, v5

    .line 369
    if-ne v1, v6, :cond_4

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " zls"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, v3}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v1

    .line 371
    if-ne v1, v6, :cond_4

    .line 384
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 385
    invoke-static {v2, p0, v0}, Lcom/kingroot/kinguser/aba;->c(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static synthetic eg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/kingroot/kinguser/aba;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static qA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "ktools"

    return-object v0
.end method

.method public static qB()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ktools"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static qC()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qB()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    new-instance v2, Lcom/kingroot/kinguser/zm$a;

    const-string v3, "ktools"

    invoke-direct {v2, v0, v3, v6}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z

    .line 82
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v1, v6, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 88
    :cond_0
    return-object v0

    .line 74
    :cond_1
    sget-object v2, Lcom/kingroot/kinguser/aba;->YI:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 75
    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/aba;->YI:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    new-instance v3, Lcom/kingroot/kinguser/zm$a;

    const-string v4, "ktools"

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v5}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3}, Lcom/kingroot/kinguser/zm;->a(Lcom/kingroot/kinguser/zm$d;)Z

    .line 78
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static qD()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qE()V

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aba;->ee(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private static qE()V
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/kingroot/kinguser/aba;->YJ:Lcom/kingroot/kinguser/wo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wo;->ny()Z

    .line 100
    return-void
.end method

.method public static qF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    sget-object v1, Lcom/kingroot/kinguser/aba;->YF:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static qG()Ljava/lang/String;
    .locals 6

    .prologue
    .line 283
    sget-object v1, Lcom/kingroot/kinguser/aba;->YF:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    monitor-exit v1

    .line 292
    :goto_0
    return-object v0

    .line 291
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aba;->ee(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static qH()Ljava/lang/String;
    .locals 6

    .prologue
    .line 303
    sget-object v1, Lcom/kingroot/kinguser/aba;->YF:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qC()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    monitor-exit v1

    .line 310
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aba;->YH:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aba;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
