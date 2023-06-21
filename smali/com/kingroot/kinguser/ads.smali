.class public Lcom/kingroot/kinguser/ads;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/adn;


# instance fields
.field private adu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/adq;",
            ">;",
            "Lcom/kingroot/kinguser/adq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ads;->adu:Ljava/util/HashMap;

    return-void
.end method

.method private varargs a([Lcom/kingroot/kinguser/adq;)V
    .locals 5

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 43
    :cond_0
    return-void

    .line 35
    :cond_1
    array-length v1, p1

    .line 36
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ads;->adu:Ljava/util/HashMap;

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/adq;->cB(I)Lcom/kingroot/kinguser/adq;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private declared-synchronized sX()V
    .locals 3

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ads;->adu:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 28
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Lcom/kingroot/kinguser/adq;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/bjs;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bjs;-><init>()V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ads;->a([Lcom/kingroot/kinguser/adq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public f(Ljava/lang/Class;)Lcom/kingroot/kinguser/adq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/kingroot/kinguser/adq;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/kingroot/kinguser/ads;->sX()V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/ads;->adu:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adq;

    return-object v0
.end method

.method public sP()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/adq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kingroot/kinguser/ads;->sX()V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/ads;->adu:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adq;

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    return-object v1
.end method
