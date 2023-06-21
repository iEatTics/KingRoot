.class public Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aek;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aek;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 692
    invoke-static {}, Lcom/kingroot/kinguser/aek;->us()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 693
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 694
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kinguser/ve;)Lcom/kingroot/kinguser/ve;

    .line 696
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    monitor-enter v3

    .line 697
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 698
    :goto_0
    if-lez v0, :cond_0

    .line 699
    add-int/lit8 v1, v0, -0x1

    .line 701
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 703
    goto :goto_0

    .line 694
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 702
    :catch_0
    move-exception v0

    move v0, v1

    .line 703
    goto :goto_0

    .line 705
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 706
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 709
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v1}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Z)Z

    .line 712
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sw()V

    .line 715
    :cond_1
    iget v0, p1, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->mErrorCode:I

    const/16 v1, -0x1b5f

    if-ne v0, v1, :cond_2

    .line 729
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aeh;->un()I

    move-result v0

    .line 730
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v2}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v2

    invoke-static {v1, v4, v2, v0}, Lcom/kingroot/kinguser/aeh;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;III)V

    .line 731
    return-void

    .line 706
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 718
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CH()I

    move-result v0

    .line 719
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->el(I)V

    .line 721
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v1}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 722
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 723
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18751

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 725
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1875a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method public onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 736
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vh;

    .line 737
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Lcom/kingroot/kinguser/ve;)Lcom/kingroot/kinguser/ve;

    .line 739
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    monitor-enter v3

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 741
    :goto_0
    if-lez v0, :cond_0

    .line 742
    add-int/lit8 v1, v0, -0x1

    .line 744
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 746
    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    move v0, v1

    .line 746
    goto :goto_0

    .line 748
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 749
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 752
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->el(I)V

    .line 753
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v1}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    .line 754
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1874f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 757
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    iget-object v3, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v3}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 759
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;Z)Z

    .line 760
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adm;->sw()V

    .line 763
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v2}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/aiv;->s(Ljava/lang/String;I)V

    .line 777
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v1}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->EO()I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Lcom/kingroot/kinguser/aeh;->a(Lcom/kingroot/kingmaster/network/updata/CheckResult;III)V

    .line 778
    return-void

    .line 749
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 767
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aek;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    .line 768
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 769
    iget-object v0, v1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 770
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 771
    invoke-static {v1}, Lcom/kingroot/kinguser/aei;->e(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    .line 774
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18750

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1
.end method

.method public onPaused(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 3

    .prologue
    .line 648
    invoke-super {p0, p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;->onPaused(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V

    .line 649
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 651
    :goto_0
    if-lez v0, :cond_0

    .line 652
    add-int/lit8 v1, v0, -0x1

    .line 654
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onPaused(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 656
    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    move v0, v1

    .line 656
    goto :goto_0

    .line 658
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 659
    monitor-exit v2

    .line 661
    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 669
    :goto_0
    if-lez v0, :cond_0

    .line 670
    add-int/lit8 v1, v0, -0x1

    .line 672
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 674
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    move v0, v1

    .line 674
    goto :goto_0

    .line 676
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 677
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    iget-object v1, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v1}, Lcom/kingroot/kinguser/aek;->b(Lcom/kingroot/kinguser/aek;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget v0, p1, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;->BH:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 683
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_1

    .line 684
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adm;->cw(I)V

    .line 687
    :cond_1
    return-void

    .line 677
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onWaiting(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 632
    :goto_0
    if-lez v0, :cond_0

    .line 633
    add-int/lit8 v1, v0, -0x1

    .line 635
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-interface {v0, p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onWaiting(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 637
    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    move v0, v1

    .line 637
    goto :goto_0

    .line 639
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/impl/KuUpdateEngineViaConch$6;->this$0:Lcom/kingroot/kinguser/aek;

    invoke-static {v0}, Lcom/kingroot/kinguser/aek;->a(Lcom/kingroot/kinguser/aek;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 640
    monitor-exit v2

    .line 642
    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
