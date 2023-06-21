.class public final Lcom/kingroot/kinguser/ne;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hO:Ljava/lang/String;

.field private final wW:Ljava/util/Properties;

.field private final wX:Z

.field private wY:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/ne;->hO:Ljava/lang/String;

    .line 37
    iput-boolean p2, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wY:Z

    .line 39
    return-void
.end method

.method private bF(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 162
    :try_start_0
    const-string v0, "Uranus"

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/jo;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 167
    :cond_0
    :goto_0
    return-object p1

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private bG(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    const-string v0, "Uranus"

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/jo;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 178
    :cond_0
    :goto_0
    return-object p1

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getProperties()Ljava/util/Properties;
    .locals 5

    .prologue
    .line 42
    iget-object v2, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-enter v2

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wY:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 46
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/kingroot/kinguser/ne;->hO:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :try_start_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 51
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 54
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wY:Z

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 49
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 51
    :try_start_5
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 51
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 48
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private save()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 84
    .line 86
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/kingroot/kinguser/ne;->hO:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 93
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 91
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    .line 88
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v2, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-enter v2

    .line 116
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 118
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    iget-boolean v5, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v5, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    invoke-virtual {v3, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->save()V

    .line 131
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-enter v1

    .line 136
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    iget-boolean v3, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 140
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->save()V

    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    return-void
.end method

.method public final bE(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->save()V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    iget-object v3, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-enter v3

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-boolean v5, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v5, :cond_0

    .line 104
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ne;->bG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ne;->bG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_0
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-boolean v1, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ne;->bG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ne;->wX:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/ne;->bF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ne;->wW:Ljava/util/Properties;

    monitor-enter v1

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Lcom/kingroot/kinguser/ne;->save()V

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
