.class public final Lcom/kingroot/kinguser/fv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile qa:Lcom/kingroot/kinguser/fv;


# instance fields
.field private volatile h:Z

.field private i:I

.field private j:I

.field private qb:La/aq;

.field private qc:Lcom/tencent/tps/client/AbsTPSClientBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/fv;->qa:Lcom/kingroot/kinguser/fv;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v4, p0, Lcom/kingroot/kinguser/fv;->h:Z

    .line 38
    iput v2, p0, Lcom/kingroot/kinguser/fv;->i:I

    .line 39
    iput v2, p0, Lcom/kingroot/kinguser/fv;->j:I

    .line 42
    invoke-static {}, Lcom/tencent/tps/client/AbsTPSClientBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/kingroot/kinguser/fn;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 48
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/ey;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/kingroot/kinguser/fn;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/kingroot/kinguser/ey;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/fv;)La/aq;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/fv;->qb:La/aq;

    return-object v0
.end method

.method private a(La/at;)La/av;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/fv;->qb:La/aq;

    invoke-interface {v0, p1}, La/aq;->b(La/at;)La/av;

    move-result-object v6

    .line 331
    if-eqz v6, :cond_0

    .line 335
    new-instance v0, Lcom/kingroot/kinguser/ex;

    iget v1, v6, La/av;->pE:I

    iget-object v2, v6, La/av;->I:Ljava/lang/String;

    const/4 v3, 0x2

    iget v4, p1, La/at;->pU:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    .line 341
    iget v0, v6, La/av;->pE:I

    if-nez v0, :cond_1

    move-object v0, v6

    .line 356
    :goto_0
    return-object v0

    .line 345
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/ex;

    const/16 v1, 0x4a39

    const-string v2, "deamon response null"

    const/4 v3, 0x2

    iget v4, p1, La/at;->pU:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v7

    .line 356
    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Lcom/tencent/tps/client/TPSException;

    const-string v2, "TPS Service error occurred!"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/fv;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/fv;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/kingroot/kinguser/fv;->h:Z

    .line 365
    return-void
.end method

.method public static ai()Lcom/kingroot/kinguser/fv;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/fv;->qa:Lcom/kingroot/kinguser/fv;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/kingroot/kinguser/fv;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/fv;->qa:Lcom/kingroot/kinguser/fv;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/fv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/fv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/fv;->qa:Lcom/kingroot/kinguser/fv;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/fv;->qa:Lcom/kingroot/kinguser/fv;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private aj()La/aq;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 296
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 297
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 299
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "tps_service_"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 302
    check-cast v0, Landroid/os/IBinder;

    .line 303
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {v0}, La/ar;->a(Landroid/os/IBinder;)La/aq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Lcom/tencent/tps/client/TPSException;

    const-string v2, "TPS Service is not accessible"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/fv;)Lcom/tencent/tps/client/AbsTPSClientBase;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/fv;->qc:Lcom/tencent/tps/client/AbsTPSClientBase;

    return-object v0
.end method

.method private b(Lcom/tencent/tps/client/AbsTPSClientBase;)Z
    .locals 4

    .prologue
    .line 315
    new-instance v0, La/at;

    invoke-direct {v0}, La/at;-><init>()V

    .line 316
    const/4 v1, 0x6

    iput v1, v0, La/at;->pU:I

    .line 317
    invoke-static {}, La/m;->i()La/m;

    move-result-object v1

    .line 318
    invoke-virtual {v1, p1}, La/m;->c(Lcom/tencent/tps/client/AbsTPSClientBase;)V

    .line 319
    invoke-static {}, La/m;->i()La/m;

    move-result-object v1

    iput-object v1, v0, La/at;->pY:Landroid/os/IBinder;

    .line 320
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 321
    const/4 v0, -0x1

    .line 322
    if-eqz v1, :cond_0

    iget v2, v1, La/av;->as:I

    const/16 v3, 0x2716

    if-ne v2, v3, :cond_0

    .line 323
    iget v0, v1, La/av;->arg1:I

    .line 325
    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/fv;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/fv;->i:I

    return v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 211
    new-instance v1, La/at;

    invoke-direct {v1}, La/at;-><init>()V

    .line 212
    iput v0, v1, La/at;->pU:I

    .line 213
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    iget v2, v1, La/av;->as:I

    const/16 v3, 0x2711

    if-ne v2, v3, :cond_0

    iget v1, v1, La/av;->pE:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/fv;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/fv;->j:I

    return v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/kingroot/kinguser/fv;->h:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tencent/tps/client/AbsTPSClientBase;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    monitor-exit p0

    return v0

    .line 72
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/kingroot/kinguser/fv;->qc:Lcom/tencent/tps/client/AbsTPSClientBase;

    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->aj()La/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/fv;->qb:La/aq;

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/fv;->qb:La/aq;

    if-nez v0, :cond_1

    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->c()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/fv;->b(Lcom/tencent/tps/client/AbsTPSClientBase;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/fv;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/fv;->qb:La/aq;

    invoke-interface {v0}, La/aq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/fw;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/fw;-><init>(Lcom/kingroot/kinguser/fv;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :try_start_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(Z)V

    .line 132
    new-instance v1, Lcom/tencent/tps/client/TPSException;

    const-string v2, "connect TPS Service failed"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v1, La/at;

    invoke-direct {v1}, La/at;-><init>()V

    .line 224
    const/4 v2, 0x3

    iput v2, v1, La/at;->pU:I

    .line 225
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 226
    iput v0, p0, Lcom/kingroot/kinguser/fv;->j:I

    .line 227
    if-eqz v1, :cond_1

    iget v1, v1, La/av;->as:I

    const/16 v2, 0x2713

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableAutoPatch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    new-instance v1, La/at;

    invoke-direct {v1}, La/at;-><init>()V

    .line 203
    const/16 v2, 0xd

    iput v2, v1, La/at;->pU:I

    .line 204
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 205
    iput v0, p0, Lcom/kingroot/kinguser/fv;->i:I

    .line 206
    if-eqz v1, :cond_1

    iget v1, v1, La/av;->as:I

    const/16 v2, 0x271d

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v1, La/at;

    invoke-direct {v1}, La/at;-><init>()V

    .line 237
    const/4 v2, 0x4

    iput v2, v1, La/at;->pU:I

    .line 238
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 239
    iput v0, p0, Lcom/kingroot/kinguser/fv;->j:I

    .line 240
    if-eqz v1, :cond_1

    iget v1, v1, La/av;->as:I

    const/16 v2, 0x2714

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public enableAutoPatch()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 185
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v1, La/at;

    invoke-direct {v1}, La/at;-><init>()V

    .line 190
    const/16 v2, 0xc

    iput v2, v1, La/at;->pU:I

    .line 191
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 192
    iput v0, p0, Lcom/kingroot/kinguser/fv;->i:I

    .line 193
    if-eqz v1, :cond_1

    iget v1, v1, La/av;->as:I

    const/16 v2, 0x271c

    if-ne v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 245
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    new-instance v1, La/at;

    invoke-direct {v1}, La/at;-><init>()V

    .line 250
    const/4 v2, 0x5

    iput v2, v1, La/at;->pU:I

    .line 251
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_1

    iget v2, v1, La/av;->as:I

    const/16 v3, 0x2715

    if-ne v2, v3, :cond_1

    iget v1, v1, La/av;->arg1:I

    if-ne v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public querySupportedAsync(Lcom/tencent/tps/client/kr/OnQuerySupportedListener;)Z
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    invoke-static {}, La/m;->i()La/m;

    move-result-object v0

    invoke-virtual {v0, p1}, La/m;->a(Lcom/tencent/tps/client/kr/OnQuerySupportedListener;)V

    .line 266
    new-instance v0, La/at;

    invoke-direct {v0}, La/at;-><init>()V

    .line 267
    const/16 v1, 0xb

    iput v1, v0, La/at;->pU:I

    .line 268
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    iget v0, v0, La/av;->as:I

    const/16 v1, 0x271b

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public querySupportedSync()I
    .locals 3

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    new-instance v0, La/at;

    invoke-direct {v0}, La/at;-><init>()V

    .line 283
    const/16 v1, 0xe

    iput v1, v0, La/at;->pU:I

    .line 284
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/fv;->a(La/at;)La/av;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1

    iget v1, v0, La/av;->as:I

    const/16 v2, 0x271e

    if-ne v1, v2, :cond_1

    .line 286
    iget v0, v0, La/av;->arg1:I

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_1
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public stopTPSService()Z
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-direct {p0}, Lcom/kingroot/kinguser/fv;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/tencent/tps/client/TPSException;

    const-string v1, "TPS Service has not been initialized yet!"

    invoke-direct {v0, v1}, Lcom/tencent/tps/client/TPSException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v4, La/at;

    invoke-direct {v4}, La/at;-><init>()V

    .line 158
    const/16 v0, 0xa

    iput v0, v4, La/at;->pU:I

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/fv;->qb:La/aq;

    invoke-interface {v0, v4}, La/aq;->b(La/at;)La/av;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 165
    :goto_0
    if-eqz v2, :cond_1

    .line 166
    new-instance v0, Lcom/kingroot/kinguser/ex;

    iget v1, v2, La/av;->pE:I

    iget-object v2, v2, La/av;->I:Ljava/lang/String;

    iget v4, v4, La/at;->pU:I

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    move v0, v6

    .line 180
    :goto_1
    return v0

    .line 162
    :catch_0
    move-exception v0

    move-object v2, v5

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/ex;

    iget v4, v4, La/at;->pU:I

    move v1, v6

    move-object v2, v5

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ex;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/gb;->d(Lcom/kingroot/kinguser/ew;)V

    .line 180
    const/4 v0, 0x1

    goto :goto_1
.end method
