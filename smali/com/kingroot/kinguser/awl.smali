.class public Lcom/kingroot/kinguser/awl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/awl$a;
    }
.end annotation


# direct methods
.method private static G(Ljava/io/File;)J
    .locals 8

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 103
    const-wide/16 v2, 0x0

    .line 104
    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 111
    cmp-long v7, v0, v2

    if-lez v7, :cond_0

    .line 104
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 111
    goto :goto_1

    .line 113
    :cond_1
    return-wide v2
.end method

.method public static declared-synchronized SV()V
    .locals 10

    .prologue
    .line 35
    const-class v1, Lcom/kingroot/kinguser/awl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/awl;->SW()Ljava/util/ArrayList;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 38
    :cond_0
    const/16 v0, 0x8d

    const/16 v2, 0x3e9

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/awj;->f(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit v1

    return-void

    .line 41
    :cond_1
    :try_start_1
    new-instance v2, Lcom/kingroot/kinguser/k;

    invoke-direct {v2}, Lcom/kingroot/kinguser/k;-><init>()V

    .line 42
    const/16 v3, 0x8d

    iput v3, v2, Lcom/kingroot/kinguser/k;->ev:I

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingroot/kinguser/k;->ew:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awl$a;

    .line 46
    new-instance v4, Lcom/kingroot/kinguser/l;

    invoke-direct {v4}, Lcom/kingroot/kinguser/l;-><init>()V

    .line 47
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    .line 48
    iget-object v5, v4, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v0, Lcom/kingroot/kinguser/awl$a;->kF:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v5, v4, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v8, v0, Lcom/kingroot/kinguser/awl$a;->time:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, v2, Lcom/kingroot/kinguser/k;->ew:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 54
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    const/16 v3, 0xfdc

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/awl$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/awl$1;-><init>()V

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static SW()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/awl$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/ru;->iY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tencent/MicroMsg/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 82
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 83
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    .line 84
    new-instance v5, Lcom/kingroot/kinguser/awl$a;

    invoke-direct {v5}, Lcom/kingroot/kinguser/awl$a;-><init>()V

    .line 85
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kingroot/kinguser/awl$a;->kF:Ljava/lang/String;

    .line 86
    invoke-static {v4}, Lcom/kingroot/kinguser/awl;->G(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v5, Lcom/kingroot/kinguser/awl$a;->time:J

    .line 93
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method
