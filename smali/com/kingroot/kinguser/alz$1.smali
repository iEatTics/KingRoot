.class Lcom/kingroot/kinguser/alz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azv:Lcom/kingroot/kinguser/alz$a;

.field final synthetic azw:Lcom/kingroot/kinguser/alz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alz;Lcom/kingroot/kinguser/alz$a;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    iput-object p2, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-static {v0}, Lcom/kingroot/kinguser/alz;->c(Lcom/kingroot/kinguser/alz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    return-void

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->Ha()Ljava/io/File;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/alz;->Hc()Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    check-cast v0, Ljava/io/Serializable;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-static {v0}, Lcom/kingroot/kinguser/alz;->d(Lcom/kingroot/kinguser/alz;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    iget-object v2, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/alz;->Hc()Ljava/io/Serializable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz;Ljava/io/Serializable;)Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 54
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz;Z)Z

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/alz$a;->HU()V

    .line 60
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :goto_1
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 60
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 51
    :catch_0
    move-exception v0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 55
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz;Z)Z

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/alz$a;->HU()V

    .line 60
    :cond_4
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    .line 54
    :catchall_3
    move-exception v0

    iget-object v2, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 55
    :try_start_9
    iget-object v3, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz;Z)Z

    .line 56
    iget-object v3, p0, Lcom/kingroot/kinguser/alz$1;->azw:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 57
    iget-object v3, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    if-eqz v3, :cond_5

    .line 58
    iget-object v3, p0, Lcom/kingroot/kinguser/alz$1;->azv:Lcom/kingroot/kinguser/alz$a;

    invoke-interface {v3}, Lcom/kingroot/kinguser/alz$a;->HU()V

    .line 60
    :cond_5
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method
