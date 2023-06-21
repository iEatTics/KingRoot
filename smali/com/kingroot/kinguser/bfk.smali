.class Lcom/kingroot/kinguser/bfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bfi;


# static fields
.field private static final bmP:J

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bfk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/kingroot/kinguser/bfk;->bmP:J

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/bfk$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfk$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfk;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfk;->init()V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bfk$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfk;-><init>()V

    return-void
.end method

.method private declared-synchronized a(ILcom/kingroot/kinguser/byi;Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
    .locals 8

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bfk;->a(Lcom/kingroot/kinguser/byi;)V

    .line 186
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 190
    instance-of v2, p3, Lcom/kingroot/kinguser/byq;

    if-eqz v2, :cond_1

    .line 191
    move-object v0, p3

    check-cast v0, Lcom/kingroot/kinguser/byq;

    move-object v2, v0

    const/16 v5, -0x270f

    iput v5, v2, Lcom/kingroot/kinguser/byq;->errorCode:I

    .line 196
    :cond_0
    :goto_0
    invoke-virtual {v4, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v2

    new-instance v5, Lcom/kingroot/kinguser/bfk$5;

    invoke-direct {v5, p0, v4, v3}, Lcom/kingroot/kinguser/bfk$5;-><init>(Lcom/kingroot/kinguser/bfk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, p3, v5}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 216
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    const-wide/16 v6, 0x1388

    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    :try_start_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/taf/jce/JceStruct;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 192
    :cond_1
    :try_start_4
    instance-of v2, p3, Lcom/kingroot/kinguser/byp;

    if-eqz v2, :cond_0

    .line 193
    move-object v0, p3

    check-cast v0, Lcom/kingroot/kinguser/byp;

    move-object v2, v0

    const/16 v5, -0x270f

    iput v5, v2, Lcom/kingroot/kinguser/byp;->errCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 223
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 220
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfk;ILcom/kingroot/kinguser/byi;Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bfk;->a(ILcom/kingroot/kinguser/byi;Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/byi;)V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p1, Lcom/kingroot/kinguser/byi;->bUj:Lcom/kingroot/kinguser/byh;

    iget-object v0, v0, Lcom/kingroot/kinguser/byh;->bTU:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byj;

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/byi;->bUi:Lcom/kingroot/kinguser/bym;

    .line 249
    iget-object v0, p1, Lcom/kingroot/kinguser/byi;->bUl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byl;

    goto :goto_1

    .line 253
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byr;

    .line 254
    iget-object v2, v0, Lcom/kingroot/kinguser/byr;->bUL:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 256
    iget-object v0, v0, Lcom/kingroot/kinguser/byr;->bUL:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byu;

    .line 261
    if-eqz v0, :cond_3

    .line 267
    iget-object v0, v0, Lcom/kingroot/kinguser/byu;->bUU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byv;

    goto :goto_2

    .line 274
    :cond_4
    return-void
.end method

.method public static aae()Lcom/kingroot/kinguser/bfk;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/bfk;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfk;

    return-object v0
.end method

.method private declared-synchronized f(IIJ)V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aaa()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfj;->ix(I)I

    move-result v1

    .line 108
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aab()I

    move-result v0

    .line 114
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/kingroot/kinguser/bwk;->b(Landroid/content/Context;II)Lcom/kingroot/kinguser/bwk$a;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p3, p4}, Lcom/kingroot/kinguser/bwk$a;->cJ(J)Lcom/kingroot/kinguser/bwk$a;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bwk$a;->kK(I)Lcom/kingroot/kinguser/bwk$a;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwk$a;->aiN()Lcom/kingroot/kinguser/bwk;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/bwl;->aiO()Lcom/kingroot/kinguser/bwl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwk;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/bwl;->aiO()Lcom/kingroot/kinguser/bwl;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/kingroot/kinguser/bfk$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfk$2;-><init>(Lcom/kingroot/kinguser/bfk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwi;)V

    .line 84
    new-instance v1, Lcom/kingroot/kinguser/bfk$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfk$3;-><init>(Lcom/kingroot/kinguser/bfk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwp;)V

    .line 92
    return-void
.end method


# virtual methods
.method public declared-synchronized ZU()V
    .locals 6

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aaa()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->ZY()J

    move-result-wide v0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/kingroot/kinguser/bfk;->bmP:J

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->ZZ()V

    .line 287
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfk;->aaf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ZV()Z
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aab()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ZW()V
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->bU(Landroid/content/Context;)V

    .line 324
    return-void
.end method

.method public declared-synchronized aaf()V
    .locals 4

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aaa()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/oi;->fu()Lcom/kingroot/kinguser/oi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fE()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    const-string v0, "000"

    .line 154
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bwl;->aiO()Lcom/kingroot/kinguser/bwl;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/bfk$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bfk$4;-><init>(Lcom/kingroot/kinguser/bfk;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/kingroot/kinguser/bwl;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/bwq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ai(II)V
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/kingroot/kinguser/bfk;->f(IIJ)V

    .line 97
    return-void
.end method

.method public dN(Z)V
    .locals 1

    .prologue
    .line 296
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfj;->dN(Z)V

    .line 299
    if-nez p1, :cond_0

    .line 301
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aac()V

    .line 303
    :cond_0
    return-void
.end method

.method public iw(I)V
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/bfj;->ZX()Lcom/kingroot/kinguser/bfj;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfj;->aac()V

    .line 312
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bfj;->iy(I)V

    .line 313
    return-void
.end method
