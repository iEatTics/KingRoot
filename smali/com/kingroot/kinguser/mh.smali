.class Lcom/kingroot/kinguser/mh;
.super Lcom/kingroot/kinguser/mg$b;
.source "SourceFile"


# instance fields
.field final synthetic vM:Lcom/kingroot/kinguser/mg;

.field final synthetic vN:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/mg;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/mh;->vN:Z

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/mg$b;-><init>(Lcom/kingroot/kinguser/mg;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingroot/kinguser/mg$a;)V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg$a;)V

    .line 100
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-interface {p1}, Lcom/kingroot/kinguser/mg$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-static {v0}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_2
    iget-boolean v0, p0, Lcom/kingroot/kinguser/mh;->vN:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/mg;->eB()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-static {v2}, Lcom/kingroot/kinguser/mg;->b(Lcom/kingroot/kinguser/mg;)Lcom/kingroot/kinguser/mg$b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg;Lcom/kingroot/kinguser/mg$b;)Lcom/kingroot/kinguser/mg$b;

    .line 111
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 105
    invoke-interface {p1}, Lcom/kingroot/kinguser/mg$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-static {v0}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_6
    iget-boolean v0, p0, Lcom/kingroot/kinguser/mh;->vN:Z

    if-eqz v0, :cond_2

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/mg;->eB()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-static {v2}, Lcom/kingroot/kinguser/mg;->b(Lcom/kingroot/kinguser/mg;)Lcom/kingroot/kinguser/mg$b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg;Lcom/kingroot/kinguser/mg$b;)Lcom/kingroot/kinguser/mg$b;

    .line 111
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 105
    :catchall_3
    move-exception v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/mg$a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-static {v1}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_8
    iget-boolean v2, p0, Lcom/kingroot/kinguser/mh;->vN:Z

    if-eqz v2, :cond_3

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/mg;->eB()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    invoke-static {v3}, Lcom/kingroot/kinguser/mg;->b(Lcom/kingroot/kinguser/mg;)Lcom/kingroot/kinguser/mg$b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/mh;->vM:Lcom/kingroot/kinguser/mg;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/mg;->a(Lcom/kingroot/kinguser/mg;Lcom/kingroot/kinguser/mg$b;)Lcom/kingroot/kinguser/mg$b;

    .line 111
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_4
    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method
