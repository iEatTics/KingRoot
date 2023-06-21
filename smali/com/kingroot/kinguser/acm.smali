.class public Lcom/kingroot/kinguser/acm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbw;


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/acm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile ZL:Z

.field private final aaA:Ljava/lang/Object;

.field private final aaB:Ljava/lang/Object;

.field private aaC:I

.field private final aaD:Ljava/lang/Object;

.field private volatile aaa:Lcom/kingroot/kinguser/abm;

.field private final aax:Ljava/util/concurrent/atomic/AtomicInteger;

.field private aay:Lcom/kingroot/kinguser/vr;

.field private final aaz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/cbw$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/acm$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/acm$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/acm;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aaa:Lcom/kingroot/kinguser/abm;

    .line 48
    iput-boolean v1, p0, Lcom/kingroot/kinguser/acm;->ZL:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aax:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/vt;->lT()Lcom/kingroot/kinguser/vt;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aay:Lcom/kingroot/kinguser/vr;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aaz:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aaA:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aaB:Ljava/lang/Object;

    .line 580
    iput v1, p0, Lcom/kingroot/kinguser/acm;->aaC:I

    .line 581
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aaD:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/acm$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;-><init>()V

    return-void
.end method

.method private declared-synchronized an(Z)V
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaz:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aaz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cbw$a;

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/cbw$a;->ad(Z)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    monitor-exit p0

    return-void
.end method

.method private b(Lcom/kingroot/kinguser/abs;)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/abv;->ry()Lcom/kingroot/kinguser/abv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abv;->a(Lcom/kingroot/kinguser/abs;)V

    .line 127
    return-void
.end method

.method private ch(I)V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 583
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 585
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaD:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/acm;->aaC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/acm;->aaC:I

    if-ge v0, v2, :cond_1

    .line 588
    monitor-exit v1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/acm;->aaC:I

    .line 591
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aay:Lcom/kingroot/kinguser/vr;

    const v1, 0x61580

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/vr;->w(II)V

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 593
    :cond_2
    if-nez p1, :cond_0

    .line 594
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aay:Lcom/kingroot/kinguser/vr;

    const v1, 0x6157f

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/vr;->bi(I)V

    goto :goto_0
.end method

.method private d(Lcom/kingroot/kinguser/abm;)V
    .locals 2

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaB:Ljava/lang/Object;

    monitor-enter v1

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->closeShell()V

    .line 218
    iput-object p1, p0, Lcom/kingroot/kinguser/acm;->aaa:Lcom/kingroot/kinguser/abm;

    .line 219
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    if-eqz p1, :cond_1

    .line 546
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/acm;->ch(I)V

    .line 551
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aax:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->closeShell()V

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aax:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 557
    :cond_1
    return-void
.end method

.method public static rL()Lcom/kingroot/kinguser/acm;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/acm;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acm;

    return-object v0
.end method

.method private rM()Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 157
    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    .line 161
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 162
    const-string v0, "ku.sud"

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abf;->qP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/abu;->ZV:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 174
    if-nez v0, :cond_0

    .line 180
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/kingroot/kinguser/abu;->ZW:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 188
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/ikm/ikmsu"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 191
    if-nez v0, :cond_0

    .line 196
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rN()Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaB:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aaa:Lcom/kingroot/kinguser/abm;

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private rO()Z
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Lcom/kingroot/kinguser/abv;->ry()Lcom/kingroot/kinguser/abv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abv;->rr()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_1

    .line 296
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acm;->d(Lcom/kingroot/kinguser/abm;)V

    .line 299
    iget-boolean v1, p0, Lcom/kingroot/kinguser/acm;->ZL:Z

    if-nez v1, :cond_0

    .line 300
    invoke-static {v0}, Lcom/kingroot/kinguser/aco;->e(Lcom/kingroot/kinguser/abm;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/acm;->ZL:Z

    .line 303
    :cond_0
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized rP()Z
    .locals 2

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rM()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acm;->d(Lcom/kingroot/kinguser/abm;)V

    .line 337
    iget-boolean v1, p0, Lcom/kingroot/kinguser/acm;->ZL:Z

    if-nez v1, :cond_0

    .line 338
    invoke-static {v0}, Lcom/kingroot/kinguser/aco;->e(Lcom/kingroot/kinguser/abm;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/acm;->ZL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_0
    const/4 v0, 0x1

    .line 343
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rQ()V
    .locals 2

    .prologue
    .line 560
    invoke-static {}, Lcom/kingroot/kinguser/zj;->pt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 564
    const-string v0, "Root Shell Run In Main Thread"

    .line 565
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 568
    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected U(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->hK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/kingroot/kinguser/abk;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public synthetic a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/acm;->c(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/KmVTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/cbw$a;)V
    .locals 2

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaz:Ljava/util/List;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aaz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit v1

    .line 89
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/KmVTCmdResult;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 390
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rQ()V

    .line 392
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/kingroot/common/utils/system/KmVTCmdResult;

    iget-object v1, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Root Cmd Permission Denied"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/common/utils/system/KmVTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    return-object v0

    .line 397
    :cond_0
    const/4 v0, 0x0

    .line 400
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rN()Lcom/kingroot/kinguser/abm;

    move-result-object v1

    .line 401
    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/acm;->d(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCommand;

    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 404
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aax:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 405
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/acm;->ch(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v1, v0

    .line 412
    :goto_1
    if-nez v1, :cond_2

    .line 413
    new-instance v0, Lcom/kingroot/common/utils/system/KmVTCmdResult;

    iget-object v1, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Root Cmd Exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/common/utils/system/KmVTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 408
    :goto_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acm;->d(Ljava/lang/Exception;)V

    goto :goto_1

    .line 416
    :cond_2
    new-instance v0, Lcom/kingroot/common/utils/system/KmVTCmdResult;

    invoke-direct {v0, v1}, Lcom/kingroot/common/utils/system/KmVTCmdResult;-><init>(Lcom/kingroot/common/utils/system/VTCmdResult;)V

    goto :goto_0

    .line 407
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public closeShell()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaB:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aaa:Lcom/kingroot/kinguser/abm;

    if-nez v0, :cond_0

    monitor-exit v1

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aaa:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/acm;->aaa:Lcom/kingroot/kinguser/abm;

    .line 208
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCommand;
    .locals 6

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->hK()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kingroot/common/utils/system/VTCommand;

    iget-object v1, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/common/utils/system/VTCommand;->mCmdValue:Ljava/lang/String;

    .line 531
    invoke-static {v2}, Lcom/kingroot/kinguser/abk;->ev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/kingroot/common/utils/system/VTCommand;->mTimeout:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object p1, v0

    .line 530
    :cond_0
    return-object p1
.end method

.method public e(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rQ()V

    .line 445
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    :cond_0
    :goto_0
    return-object v0

    .line 449
    :cond_1
    const/4 v0, 0x0

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rN()Lcom/kingroot/kinguser/abm;

    move-result-object v1

    .line 452
    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/acm;->U(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2, p2}, Lcom/kingroot/kinguser/abm;->h(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aax:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 456
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/acm;->ch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/acm;->d(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->closeShell()V

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void
.end method

.method protected hK()Z
    .locals 3

    .prologue
    .line 469
    const/4 v1, 0x0

    .line 470
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hV()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 471
    instance-of v2, v0, Lcom/kingroot/kinguser/re;

    if-eqz v2, :cond_0

    .line 472
    check-cast v0, Lcom/kingroot/kinguser/re;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/re;->hK()Z

    move-result v0

    .line 474
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isRootPermition()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/acm;->isRootPermition(Z)Z

    move-result v0

    return v0
.end method

.method public isRootPermition(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rQ()V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rN()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->qR()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 257
    :goto_0
    if-eqz v0, :cond_3

    .line 280
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acm;->an(Z)V

    .line 283
    invoke-static {v0}, Lcom/kingroot/kinguser/wb;->V(Z)V

    .line 285
    return v0

    :cond_2
    move v0, v2

    .line 256
    goto :goto_0

    .line 259
    :cond_3
    if-eqz p1, :cond_1

    .line 260
    iget-object v3, p0, Lcom/kingroot/kinguser/acm;->aaA:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rN()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->qR()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 265
    :goto_2
    if-nez v0, :cond_4

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/acm;->aay:Lcom/kingroot/kinguser/vr;

    const v1, 0x61573

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/vr;->bi(I)V

    .line 271
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rO()Z

    move-result v0

    .line 272
    if-eqz v0, :cond_4

    .line 273
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aay:Lcom/kingroot/kinguser/vr;

    const v2, 0x61572

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/vr;->bi(I)V

    .line 276
    :cond_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v2

    .line 263
    goto :goto_2
.end method

.method public isRootPermitionInBackupSu()Z
    .locals 2

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rQ()V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/acm;->isRootPermition(Z)Z

    move-result v0

    .line 318
    if-nez v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aaA:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rP()Z

    move-result v0

    .line 321
    monitor-exit v1

    .line 323
    :cond_0
    return v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCommand;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 521
    :cond_0
    :goto_0
    return-object v0

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rQ()V

    .line 492
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acm;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_2

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 496
    :cond_2
    const/4 v1, 0x0

    .line 498
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/acm;->rN()Lcom/kingroot/kinguser/abm;

    move-result-object v2

    .line 499
    if-eqz v2, :cond_5

    .line 500
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCommand;

    .line 503
    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/acm;->d(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCommand;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    :goto_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acm;->d(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 517
    :goto_3
    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 508
    :cond_4
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/abm;->R(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 509
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/acm;->aax:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 510
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/acm;->ch(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 512
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public registerRootHolder(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 137
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/abs;

    check-cast v0, Lcom/kingroot/kinguser/abs;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :goto_1
    if-nez v0, :cond_1

    .line 150
    :cond_1
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/acm;->b(Lcom/kingroot/kinguser/abs;)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 144
    goto :goto_1

    .line 140
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 144
    goto :goto_1

    .line 142
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public runRootCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 3

    .prologue
    .line 377
    if-eqz p3, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 379
    :goto_0
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/acm;->c(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/KmVTCmdResult;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public runRootCommands(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/acm;->e(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
