.class public final Lcom/kingroot/kinguser/bpf;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public volatile b:J

.field volatile c:J

.field volatile d:J

.field public e:Z

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/kingroot/kinguser/bpf;->a:J

    iput-wide v4, p0, Lcom/kingroot/kinguser/bpf;->f:J

    iput-wide v4, p0, Lcom/kingroot/kinguser/bpf;->b:J

    iput-wide v4, p0, Lcom/kingroot/kinguser/bpf;->c:J

    iput-wide v4, p0, Lcom/kingroot/kinguser/bpf;->d:J

    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/bpf;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/bpf;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpf;->e:Z

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpf;->e:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v2, v1, v0

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v1

    if-lt v2, v7, :cond_0

    const/4 v2, 0x1

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/bpf;->a:J

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/bpf;->b:J

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/bpf;->c:J

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/bpf;->d:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    aget-object v2, v1, v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    new-instance v5, Lcom/kingroot/kinguser/boz;

    invoke-direct {v5, p0, v4}, Lcom/kingroot/kinguser/boz;-><init>(Lcom/kingroot/kinguser/bpf;Ljava/lang/String;)V

    iget-boolean v4, v5, Lcom/kingroot/kinguser/boz;->a:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    array-length v0, v1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    aget-object v0, v1, v7

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bpf;->a(Ljava/lang/String;)V

    const/16 v0, 0x8

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bpf;->b(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/bpf;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpf;->f:J

    iput-boolean v6, p0, Lcom/kingroot/kinguser/bpf;->e:Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private h()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;

    iget-wide v6, v0, Lcom/kingroot/kinguser/boz;->e:J

    iget-wide v0, v0, Lcom/kingroot/kinguser/boz;->d:J

    sub-long v0, v6, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpf;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpf;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/kingroot/kinguser/boz;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    iget v0, p1, Lcom/kingroot/kinguser/boz;->b:I

    if-ne v0, v1, :cond_8

    iget-object v4, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget v0, p1, Lcom/kingroot/kinguser/boz;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput v0, p1, Lcom/kingroot/kinguser/boz;->b:I

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpf;->a:J

    iput-wide v0, p1, Lcom/kingroot/kinguser/boz;->g:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/kingroot/kinguser/boz;->c:I

    iget-object v1, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;

    iget v6, v0, Lcom/kingroot/kinguser/boz;->b:I

    iget v7, p1, Lcom/kingroot/kinguser/boz;->c:I

    if-ne v6, v7, :cond_2

    iget-wide v6, v0, Lcom/kingroot/kinguser/boz;->f:J

    iget-wide v8, v0, Lcom/kingroot/kinguser/boz;->g:J

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    monitor-exit v4

    move v0, v3

    goto :goto_0

    :cond_1
    iget-wide v6, v0, Lcom/kingroot/kinguser/boz;->f:J

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->c()I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-wide v8, p1, Lcom/kingroot/kinguser/boz;->d:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    monitor-exit v4

    move v0, v3

    goto :goto_0

    :cond_2
    iget-wide v6, v0, Lcom/kingroot/kinguser/boz;->g:J

    iget-wide v8, p1, Lcom/kingroot/kinguser/boz;->d:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    iget-wide v6, v0, Lcom/kingroot/kinguser/boz;->d:J

    iget-wide v8, p1, Lcom/kingroot/kinguser/boz;->g:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    monitor-exit v4

    move v0, v3

    goto :goto_0

    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Lcom/kingroot/kinguser/boz;->b:I

    iget-wide v6, p1, Lcom/kingroot/kinguser/boz;->d:J

    iput-wide v6, v1, Lcom/kingroot/kinguser/boz;->g:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0

    :cond_7
    monitor-exit v4

    :cond_8
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final agQ()Lcom/kingroot/kinguser/boz;
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    iget-object v11, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/kingroot/kinguser/boz;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/boz;-><init>(Lcom/kingroot/kinguser/bpf;JJJJ)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/boz;->h:Z

    :cond_1
    monitor-exit v11

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v10, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;

    iget-boolean v3, v0, Lcom/kingroot/kinguser/boz;->h:Z

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/kingroot/kinguser/bpf;->a:J

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/boz;->cD(J)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    :goto_2
    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpf;->a:J

    invoke-virtual {v10, v2, v3}, Lcom/kingroot/kinguser/boz;->cD(J)J

    move-result-wide v2

    iget-wide v4, v10, Lcom/kingroot/kinguser/boz;->f:J

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->c()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    const-wide/16 v0, 0x2

    div-long v0, v2, v0

    add-long v2, v4, v0

    new-instance v0, Lcom/kingroot/kinguser/boz;

    iget-wide v8, v10, Lcom/kingroot/kinguser/boz;->g:J

    move-object v1, p0

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/boz;-><init>(Lcom/kingroot/kinguser/bpf;JJJJ)V

    iget v1, v10, Lcom/kingroot/kinguser/boz;->b:I

    iput v1, v0, Lcom/kingroot/kinguser/boz;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_3
    :try_start_1
    iget-wide v4, p0, Lcom/kingroot/kinguser/bpf;->a:J

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/boz;->cD(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/kingroot/kinguser/bpf;->a:J

    invoke-virtual {v10, v6, v7}, Lcom/kingroot/kinguser/boz;->cD(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_5

    :goto_3
    move-object v10, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v10

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "3.0"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpf;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpf;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpf;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpf;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/boz;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpf;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpf;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpf;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpf;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/bpf;->a:J

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpf;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;

    iget-wide v6, v0, Lcom/kingroot/kinguser/boz;->f:J

    iget-wide v0, v0, Lcom/kingroot/kinguser/boz;->d:J

    sub-long v0, v6, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final g()J
    .locals 4

    invoke-direct {p0}, Lcom/kingroot/kinguser/bpf;->h()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpf;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final ka(I)Lcom/kingroot/kinguser/boz;
    .locals 2

    iget-object v1, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpf;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/boz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bpf;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
