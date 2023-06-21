.class public Lcom/kingroot/kinguser/aqd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aLb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;"
        }
    .end annotation
.end field

.field private static final aLc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    return-void
.end method

.method public static MA()Ljava/util/List;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    monitor-enter v1

    .line 31
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static MB()I
    .locals 2

    .prologue
    .line 36
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static MC()Ljava/util/HashMap;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    monitor-enter v1

    .line 44
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/aqc;)V
    .locals 6

    .prologue
    .line 49
    sget-object v3, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    monitor-enter v3

    .line 50
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    :goto_0
    monitor-exit v3

    .line 70
    return-void

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/aqc;

    .line 58
    invoke-static {v1, p1}, Lcom/kingroot/kinguser/aqc;->a(Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqc;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/aqc;->e(Lcom/kingroot/kinguser/aqc;)V

    .line 60
    const/4 v1, 0x1

    .line 64
    :goto_1
    if-nez v1, :cond_0

    .line 65
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static ba(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 22
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    sget-object v0, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 76
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aqd;->aLb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v1, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    monitor-enter v1

    .line 80
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/aqd;->aLc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    return-void

    .line 78
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 81
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
