.class public final Lcom/kingroot/kinguser/bpr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bpr$a;
    }
.end annotation


# static fields
.field private static bHH:Lcom/kingroot/kinguser/bpr;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private bHF:Lcom/kingroot/kinguser/bpp;

.field private bHG:Lcom/kingroot/kinguser/bpp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kingroot/kinguser/bpr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bpr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bpr;->bHH:Lcom/kingroot/kinguser/bpr;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpr;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpr;->b:Ljava/util/Map;

    return-void
.end method

.method public static ahd()Lcom/kingroot/kinguser/bpr;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/bpr;->bHH:Lcom/kingroot/kinguser/bpr;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/kingroot/kinguser/bon;)Lcom/kingroot/kinguser/bpl;
    .locals 12

    const/4 v1, 0x5

    const/4 v9, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    sget-object v0, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_0
    const/4 v2, 0x1

    sget-object v3, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    if-ne p1, v3, :cond_0

    const/16 v1, 0xa

    :cond_0
    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bok;->j(III)I

    move-result v3

    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpl;

    if-nez v0, :cond_5

    new-instance v7, Lcom/kingroot/kinguser/bpk;

    const/16 v0, 0x40

    invoke-direct {v7, v0}, Lcom/kingroot/kinguser/bpk;-><init>(I)V

    new-instance v1, Lcom/kingroot/kinguser/bpl;

    const/4 v2, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/kingroot/kinguser/bpr$a;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bon;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/bpr$a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/bpl;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-virtual {v7, v1}, Lcom/kingroot/kinguser/bpk;->a(Lcom/kingroot/kinguser/bpl;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHF:Lcom/kingroot/kinguser/bpp;

    if-nez v1, :cond_7

    new-instance v7, Lcom/kingroot/kinguser/bpn;

    const/16 v1, 0x10

    invoke-direct {v7, v1}, Lcom/kingroot/kinguser/bpn;-><init>(I)V

    if-gtz v0, :cond_6

    move v3, v9

    :goto_2
    new-instance v1, Lcom/kingroot/kinguser/bpp;

    const/4 v2, 0x1

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/kingroot/kinguser/bpr$a;

    const-string v11, "HallyDownload-DirectPool"

    invoke-direct {v8, v11}, Lcom/kingroot/kinguser/bpr$a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/bpp;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHF:Lcom/kingroot/kinguser/bpp;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHF:Lcom/kingroot/kinguser/bpp;

    invoke-virtual {v7, v1}, Lcom/kingroot/kinguser/bpn;->a(Lcom/kingroot/kinguser/bpp;)V

    :goto_3
    sget-object v1, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHG:Lcom/kingroot/kinguser/bpp;

    if-nez v1, :cond_8

    new-instance v7, Lcom/kingroot/kinguser/bpn;

    const/16 v1, 0x10

    invoke-direct {v7, v1}, Lcom/kingroot/kinguser/bpn;-><init>(I)V

    if-gtz v0, :cond_1

    move v0, v9

    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/bpp;

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/kingroot/kinguser/bpr$a;

    const-string v0, "HallyDownload-SchedulePool"

    invoke-direct {v8, v0}, Lcom/kingroot/kinguser/bpr$a;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Lcom/kingroot/kinguser/bpp;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHG:Lcom/kingroot/kinguser/bpp;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->bHG:Lcom/kingroot/kinguser/bpp;

    invoke-virtual {v7, v0}, Lcom/kingroot/kinguser/bpn;->a(Lcom/kingroot/kinguser/bpp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_4
    monitor-exit p0

    return-object v10

    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpl;->getMaximumPoolSize()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bpl;->setMaximumPoolSize(I)V

    move-object v10, v0

    move v0, v1

    goto :goto_1

    :cond_6
    move v3, v0

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHF:Lcom/kingroot/kinguser/bpp;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpp;->getMaximumPoolSize()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpr;->bHF:Lcom/kingroot/kinguser/bpp;

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bpp;->setMaximumPoolSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/bpr;->bHG:Lcom/kingroot/kinguser/bpp;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bpp;->getMaximumPoolSize()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bpr;->bHG:Lcom/kingroot/kinguser/bpp;

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bpp;->setMaximumPoolSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;Lcom/kingroot/kinguser/bon;)Lcom/kingroot/kinguser/bpj;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpl;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/bpr;->b(Lcom/kingroot/kinguser/bon;)Lcom/kingroot/kinguser/bpl;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bpl;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bpj;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bpj;-><init>(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/kingroot/kinguser/bon;I)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    if-ne p1, v0, :cond_2

    const/16 v0, 0xa

    :goto_1
    invoke-static {p2, v1, v0}, Lcom/kingroot/kinguser/bok;->j(III)I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpr;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpl;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bpr;->b(Lcom/kingroot/kinguser/bon;)Lcom/kingroot/kinguser/bpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public final i(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bpj;
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->bHF:Lcom/kingroot/kinguser/bpp;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bpp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bpj;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bpj;-><init>(Ljava/util/concurrent/Future;)V

    return-object v1
.end method

.method public final j(Ljava/lang/Runnable;)Lcom/kingroot/kinguser/bpj;
    .locals 2

    iget-object v0, p0, Lcom/kingroot/kinguser/bpr;->bHG:Lcom/kingroot/kinguser/bpp;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bpp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bpj;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/bpj;-><init>(Ljava/util/concurrent/Future;)V

    return-object v1
.end method
