.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService;->startPrepareRootMgrListWhenInstall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 482
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 483
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/avm;->bx(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {v0}, Lcom/kingroot/kinguser/awd;->jH(Ljava/lang/String;)V

    .line 497
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/avm;->RL()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 498
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    invoke-static {v1}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->access$200(Lcom/kingroot/kinguser/root/mgr/RootManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 505
    :try_start_0
    new-instance v2, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3$1;-><init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
