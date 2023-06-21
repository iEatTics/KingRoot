.class public Lcom/kingroot/kinguser/beg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ben$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/beg$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/beg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anQ:Lcom/kingroot/kinguser/tk;

.field private final bkT:Lcom/kingroot/kinguser/ben;

.field private final bkU:Lcom/kingroot/kinguser/ben;

.field private final bkV:Lcom/kingroot/kinguser/beg$a;

.field private final bkW:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bkX:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_KJobManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/beg;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/beg$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/beg$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/beg;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x3

    const/16 v8, 0xa

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/beg;->bkW:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    const-string v0, "KJobManager"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/beg;->anQ:Lcom/kingroot/kinguser/tk;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/beg;->bkX:Ljava/lang/Object;

    .line 58
    new-instance v1, Lcom/kingroot/kinguser/ben;

    sget v2, Lcom/kingroot/kinguser/bdz;->CORE_POOL_SIZE:I

    sget v3, Lcom/kingroot/kinguser/bdz;->MAXIMUM_POOL_SIZE:I

    new-instance v6, Lcom/kingroot/kinguser/ben$b;

    invoke-direct {v6}, Lcom/kingroot/kinguser/ben$b;-><init>()V

    sget-object v7, Lcom/kingroot/kinguser/bdz;->bkh:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/ben;-><init>(IIJLcom/kingroot/kinguser/ben$b;Ljava/util/concurrent/TimeUnit;ILcom/kingroot/kinguser/bec;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    .line 66
    new-instance v1, Lcom/kingroot/kinguser/ben;

    sget v2, Lcom/kingroot/kinguser/bdz;->bkf:I

    sget v3, Lcom/kingroot/kinguser/bdz;->bkg:I

    new-instance v6, Lcom/kingroot/kinguser/ben$b;

    invoke-direct {v6}, Lcom/kingroot/kinguser/ben$b;-><init>()V

    sget-object v7, Lcom/kingroot/kinguser/bdz;->bkh:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/ben;-><init>(IIJLcom/kingroot/kinguser/ben$b;Ljava/util/concurrent/TimeUnit;ILcom/kingroot/kinguser/bec;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ben;->a(Lcom/kingroot/kinguser/ben$a;)V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ben;->a(Lcom/kingroot/kinguser/ben$a;)V

    .line 76
    new-instance v0, Lcom/kingroot/kinguser/beg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/beg$a;-><init>(Lcom/kingroot/kinguser/beg$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/beg;->bkV:Lcom/kingroot/kinguser/beg$a;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/beg$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/beg;-><init>()V

    return-void
.end method

.method public static Zj()Lcom/kingroot/kinguser/beg;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/beg;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/beg;

    return-object v0
.end method

.method private Zk()V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 316
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/beg;->Zm()I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->anQ:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    goto :goto_0
.end method

.method private Zl()V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkW:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 334
    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/kingroot/kinguser/beg;->Zm()I

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->anQ:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->jN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->anQ:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->lock()V

    goto :goto_0
.end method

.method private e(Lcom/kingroot/kinguser/bed;)Z
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/bed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 242
    iget-object v1, p0, Lcom/kingroot/kinguser/beg;->bkX:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/beg;->f(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    monitor-exit v1

    .line 268
    :goto_0
    return v0

    .line 246
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/beg$3;->bla:[I

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Zd()Lcom/kingroot/kinguser/bec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_1
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 248
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/kingroot/kinguser/bef;->b(Lcom/kingroot/kinguser/bed;)Lcom/kingroot/kinguser/bee;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ben;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bee;->a(Ljava/util/concurrent/Future;)Lcom/kingroot/kinguser/bee;

    .line 250
    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bee;->ct(J)V

    .line 251
    sget-object v0, Lcom/kingroot/kinguser/beb;->bkm:Lcom/kingroot/kinguser/beb;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bed;->a(Lcom/kingroot/kinguser/beb;)V

    .line 252
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Zf()V

    goto :goto_1

    .line 256
    :pswitch_1
    invoke-static {p1}, Lcom/kingroot/kinguser/bef;->b(Lcom/kingroot/kinguser/bed;)Lcom/kingroot/kinguser/bee;

    move-result-object v0

    .line 257
    iget-object v2, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ben;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bee;->a(Ljava/util/concurrent/Future;)Lcom/kingroot/kinguser/bee;

    .line 258
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bee;->ct(J)V

    .line 259
    sget-object v0, Lcom/kingroot/kinguser/beb;->bkm:Lcom/kingroot/kinguser/beb;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bed;->a(Lcom/kingroot/kinguser/beb;)V

    .line 260
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Zf()V

    goto :goto_1

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkV:Lcom/kingroot/kinguser/beg$a;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Zc()Lcom/kingroot/kinguser/bek;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg$a;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f(Lcom/kingroot/kinguser/bed;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Ze()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ben;->j(Lcom/kingroot/kinguser/bed;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    .line 279
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/ben;->j(Lcom/kingroot/kinguser/bed;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method Zm()I
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ben;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ben;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method a(Lcom/kingroot/kinguser/bec;)I
    .locals 2

    .prologue
    .line 360
    sget-object v0, Lcom/kingroot/kinguser/beg$3;->bla:[I

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 367
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ben;->getCorePoolSize()I

    move-result v0

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ben;->getCorePoolSize()I

    move-result v0

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/kingroot/kinguser/bed;Z)V
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/beg;->bkX:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    sget-object v2, Lcom/kingroot/kinguser/beg$3;->bla:[I

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Zd()Lcom/kingroot/kinguser/bec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 198
    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    monitor-exit v1

    .line 211
    :goto_1
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ben;->k(Lcom/kingroot/kinguser/bed;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ben;->k(Lcom/kingroot/kinguser/bed;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v2, p0, Lcom/kingroot/kinguser/beg;->bkV:Lcom/kingroot/kinguser/beg$a;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bed;->Zc()Lcom/kingroot/kinguser/bek;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/beg$a;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 201
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bee;

    .line 202
    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bee;->Zh()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 210
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/kingroot/kinguser/bek;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/bek;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bek;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lcom/kingroot/kinguser/bej;->c(Lcom/kingroot/kinguser/bek;)Lcom/kingroot/kinguser/bed;

    move-result-object v0

    .line 115
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 116
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ben;Lcom/kingroot/kinguser/bee;)V
    .locals 4

    .prologue
    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/beh;->Zo()Lcom/kingroot/kinguser/bea;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bed;->Zd()Lcom/kingroot/kinguser/bec;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/beh;->c(Lcom/kingroot/kinguser/bec;)Lcom/kingroot/kinguser/bea$a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bee;->Zi()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bea;->a(Lcom/kingroot/kinguser/bea$a;J)V

    .line 292
    invoke-static {}, Lcom/kingroot/kinguser/beh;->Zo()Lcom/kingroot/kinguser/bea;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bed;->Zd()Lcom/kingroot/kinguser/bec;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/beh;->c(Lcom/kingroot/kinguser/bec;)Lcom/kingroot/kinguser/bea$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bea;->a(Lcom/kingroot/kinguser/bea$a;)V

    .line 294
    invoke-static {}, Lcom/kingroot/kinguser/beh;->Zo()Lcom/kingroot/kinguser/bea;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bed;->Zd()Lcom/kingroot/kinguser/bec;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/beh;->c(Lcom/kingroot/kinguser/bec;)Lcom/kingroot/kinguser/bea$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ben;->Zu()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bea;->a(Lcom/kingroot/kinguser/bea$a;I)V

    .line 296
    invoke-direct {p0}, Lcom/kingroot/kinguser/beg;->Zk()V

    .line 297
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/bed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bed;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/kingroot/kinguser/beg$2;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/beg$2;-><init>(Lcom/kingroot/kinguser/beg;Ljava/util/List;)V

    iput-object v0, p1, Lcom/kingroot/kinguser/bed;->bkC:Lcom/kingroot/kinguser/bed$a;

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/beg;->e(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    return v0
.end method

.method public varargs a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/bed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method

.method b(Lcom/kingroot/kinguser/bec;)I
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/kingroot/kinguser/beg$3;->bla:[I

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 406
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 401
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkT:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ben;->getMaximumPoolSize()I

    move-result v0

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/beg;->bkU:Lcom/kingroot/kinguser/ben;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ben;->getMaximumPoolSize()I

    move-result v0

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lcom/kingroot/kinguser/bek;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/bek;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-static {p1}, Lcom/kingroot/kinguser/bej;->c(Lcom/kingroot/kinguser/bek;)Lcom/kingroot/kinguser/bed;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 89
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/ben;Lcom/kingroot/kinguser/bee;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/kingroot/kinguser/beg;->Zl()V

    .line 306
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/bed;)Z
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/bed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/beg;->e(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    return v0
.end method

.method public d(Lcom/kingroot/kinguser/bed;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Z)V

    .line 169
    return-void
.end method
