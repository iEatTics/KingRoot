.class final Lcom/kingroot/kinguser/bph$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field b:Z

.field private bFP:Ljava/util/List;

.field bFl:Ljava/util/List;

.field private bGN:Lcom/kingroot/kinguser/bpg;

.field private bGO:Ljava/util/List;

.field private bGP:Lcom/kingroot/kinguser/bpg;

.field private synthetic bGQ:Lcom/kingroot/kinguser/bph;

.field private c:Ljava/lang/String;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bph;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/kingroot/kinguser/bph$a;->bGQ:Lcom/kingroot/kinguser/bph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bph$a;->b:Z

    iput-object p2, p0, Lcom/kingroot/kinguser/bph$a;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_2

    monitor-enter p1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpg;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void
.end method

.method private c(Lcom/kingroot/kinguser/bpg$a;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFP:Ljava/util/List;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->e:Ljava/util/List;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v1, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->f:Ljava/util/List;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGO:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/kingroot/kinguser/bpg;)Lcom/kingroot/kinguser/bpg;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_0
    iget-object v1, p1, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bph$a;->c(Lcom/kingroot/kinguser/bpg$a;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kingroot/kinguser/bpg;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGD:Lcom/kingroot/kinguser/bpg$a;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bpg;-><init>(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGQ:Lcom/kingroot/kinguser/bph;

    invoke-static {v1}, Lcom/kingroot/kinguser/bph;->a(Lcom/kingroot/kinguser/bph;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpg;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;

    iput-object p1, v0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGC:Lcom/kingroot/kinguser/bpg$a;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFP:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFP:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFP:Ljava/util/List;

    move-object v1, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpg;

    iget-object v0, v0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    move-object v1, v0

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->e:Ljava/util/List;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->e:Ljava/util/List;

    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->e:Ljava/util/List;

    move-object v1, v0

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->f:Ljava/util/List;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->f:Ljava/util/List;

    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->f:Ljava/util/List;

    move-object v1, v0

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGH:Lcom/kingroot/kinguser/bpg$a;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGO:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGO:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGO:Ljava/util/List;

    move-object v1, v0

    goto :goto_1

    :cond_c
    new-instance v0, Lcom/kingroot/kinguser/bpg;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/bpg;-><init>(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/bph$a;->bGQ:Lcom/kingroot/kinguser/bph;

    invoke-static {v2}, Lcom/kingroot/kinguser/bph;->a(Lcom/kingroot/kinguser/bph;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bpg;->a(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kingroot/kinguser/bpg;

    sget-object v1, Lcom/kingroot/kinguser/bpg$a;->bGI:Lcom/kingroot/kinguser/bpg$a;

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bpg;-><init>(Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGQ:Lcom/kingroot/kinguser/bph;

    invoke-static {v1}, Lcom/kingroot/kinguser/bph;->a(Lcom/kingroot/kinguser/bph;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bpg;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    iput-object p1, v0, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized d(Lcom/kingroot/kinguser/bpg$a;)Lcom/kingroot/kinguser/bpg;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGD:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/bpg$a;->bGI:Lcom/kingroot/kinguser/bpg$a;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/bpg;->b(Lcom/kingroot/kinguser/bpg$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bph$a;->c(Lcom/kingroot/kinguser/bpg$a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bpg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/bok;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bFP:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bFl:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGN:Lcom/kingroot/kinguser/bpg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGO:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bph$a;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/bph$a;->bGP:Lcom/kingroot/kinguser/bpg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
