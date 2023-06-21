.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bfI:Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;)V
    .locals 0

    .prologue
    .line 694
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4$1;->bfI:Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 698
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 699
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 700
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 702
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 708
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 709
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 710
    invoke-static {}, Lcom/kingroot/kinguser/avm;->RK()Lcom/kingroot/kinguser/avm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/avm;->RL()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 713
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 715
    invoke-static {v0}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 722
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4$1;->bfI:Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;

    iget-object v3, v3, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    const/4 v4, -0x1

    invoke-static {v3, v0, v1, v4}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->access$300(Lcom/kingroot/kinguser/root/mgr/RootManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 723
    :catch_0
    move-exception v0

    goto :goto_1

    .line 728
    :cond_3
    const-string v0, "com.android.kinguser.console"

    .line 729
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070274

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 731
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4$1;->bfI:Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;

    iget-object v2, v2, Lcom/kingroot/kinguser/root/mgr/RootManagerService$4;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    const/16 v3, 0x7d0

    invoke-static {v2, v0, v1, v3}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->access$300(Lcom/kingroot/kinguser/root/mgr/RootManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 734
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 732
    :catch_1
    move-exception v0

    goto :goto_2
.end method
