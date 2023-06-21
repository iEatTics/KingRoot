.class Lcom/kingroot/kinguser/bxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aie:I

.field private bSW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/byj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bxb;->bSW:Ljava/util/Map;

    .line 24
    iput p1, p0, Lcom/kingroot/kinguser/bxb;->aie:I

    .line 25
    return-void
.end method


# virtual methods
.method public ajl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/byj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/bxb;->bSW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized kN(I)V
    .locals 4

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/byj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byj;-><init>()V

    .line 30
    iput p1, v0, Lcom/kingroot/kinguser/byj;->bUr:I

    .line 31
    iget v1, p0, Lcom/kingroot/kinguser/bxb;->aie:I

    iput v1, v0, Lcom/kingroot/kinguser/byj;->bJE:I

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/byj;->bUs:J

    .line 34
    iget-object v1, p0, Lcom/kingroot/kinguser/bxb;->bSW:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/kingroot/kinguser/bxb;->bSW:Ljava/util/Map;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bxb;->bSW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
