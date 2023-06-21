.class Lcom/kingroot/kinguser/avv$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cbn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/avv;->t(Ljava/util/ArrayList;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEd:Ljava/util/List;

.field final synthetic aUj:Ljava/lang/Object;

.field final synthetic aUk:Lcom/kingroot/kinguser/avv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avv;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kingroot/kinguser/avv$2;->aUk:Lcom/kingroot/kinguser/avv;

    iput-object p2, p0, Lcom/kingroot/kinguser/avv$2;->aEd:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/avv$2;->aUj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/kingroot/kinguser/g;)V
    .locals 4

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aR(J)V

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/avv$2;->aEd:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/avv$2;->aUk:Lcom/kingroot/kinguser/avv;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/avv;->a(Lcom/kingroot/kinguser/avv;Lcom/kingroot/kinguser/g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/avv$2;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avv$2;->aUj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v1

    .line 152
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/avv$2;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/avv$2;->aUj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
