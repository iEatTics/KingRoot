.class public final Lcom/kingroot/kinguser/bph;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bph$a;
    }
.end annotation


# instance fields
.field public bGL:Lcom/kingroot/kinguser/bpg;

.field private bGM:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bGn:Lcom/kingroot/kinguser/bpg;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph;->bGM:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/kingroot/kinguser/bpg;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGA:Lcom/kingroot/kinguser/bpg$a;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bpg;-><init>(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    iget-object v1, p0, Lcom/kingroot/kinguser/bph;->bGM:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpg;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bph;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->bGM:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private mN(Ljava/lang/String;)Lcom/kingroot/kinguser/bph$a;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bph$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kingroot/kinguser/bph$a;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bph$a;-><init>(Lcom/kingroot/kinguser/bph;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/kingroot/kinguser/bpg;)Lcom/kingroot/kinguser/bpg;
    .locals 2

    iget-object v0, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGA:Lcom/kingroot/kinguser/bpg$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGB:Lcom/kingroot/kinguser/bpg$a;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bph;->mN(Ljava/lang/String;)Lcom/kingroot/kinguser/bph$a;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGD:Lcom/kingroot/kinguser/bpg$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bph$a;->d(Lcom/kingroot/kinguser/bpg$a;)Lcom/kingroot/kinguser/bpg;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    return-object p2
.end method

.method public final a(Ljava/lang/String;Lcom/kingroot/kinguser/bpg;ZZ)Lcom/kingroot/kinguser/bpg;
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    iget-object v1, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    if-nez p4, :cond_0

    iget-object v0, p2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/bpg;->b(Lcom/kingroot/kinguser/bpg$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bph$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bph$a;->a(Lcom/kingroot/kinguser/bpg;)Lcom/kingroot/kinguser/bpg;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v2

    :cond_0
    move-object v0, v1

    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bpg$a;->agR()[Lcom/kingroot/kinguser/bpg$a;

    move-result-object v1

    array-length v1, v1

    move v3, v1

    move-object v1, v2

    :goto_2
    if-nez v1, :cond_3

    if-lez v3, :cond_3

    invoke-static {v0, p3}, Lcom/kingroot/kinguser/bpg;->a(Lcom/kingroot/kinguser/bpg$a;Z)Lcom/kingroot/kinguser/bpg$a;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bpg;->a(Lcom/kingroot/kinguser/bpg$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bph$a;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bph$a;->d(Lcom/kingroot/kinguser/bpg$a;)Lcom/kingroot/kinguser/bpg;

    move-result-object v0

    :goto_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGG:Lcom/kingroot/kinguser/bpg$a;

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->bGn:Lcom/kingroot/kinguser/bpg;

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    if-eqz v0, :cond_0

    const-string v0, "0,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->bGn:Lcom/kingroot/kinguser/bpg;

    if-eqz v0, :cond_1

    const-string v0, "1,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bph;->bGn:Lcom/kingroot/kinguser/bpg;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bph$a;

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bph;->mN(Ljava/lang/String;)Lcom/kingroot/kinguser/bph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bph;->mN(Ljava/lang/String;)Lcom/kingroot/kinguser/bph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bph;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bph$a;

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/kingroot/kinguser/bph$a;->b:Z

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v0, v0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final aP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bph;->mN(Ljava/lang/String;)Lcom/kingroot/kinguser/bph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bph$a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bph;->mN(Ljava/lang/String;)Lcom/kingroot/kinguser/bph$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/bph$a;->b:Z

    goto :goto_0
.end method
