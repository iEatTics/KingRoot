.class Lcom/kingroot/kinguser/amy$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amy;->ID()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/amy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/amy;)V
    .locals 0

    .prologue
    .line 653
    iput-object p1, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x5

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 656
    .line 659
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v7

    move v8, v7

    move v9, v7

    .line 661
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 662
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 663
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 665
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-nez v1, :cond_0

    .line 666
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 668
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    move v0, v6

    move v1, v8

    move v2, v9

    :goto_1
    move v6, v0

    move v8, v1

    move v9, v2

    .line 689
    goto :goto_0

    .line 670
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v2}, Lcom/kingroot/kinguser/anf;->fH(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    iput v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 676
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v1}, Lcom/kingroot/kinguser/anf;->fI(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    iput v7, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 680
    :cond_2
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v1}, Lcom/kingroot/kinguser/anf;->fH(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 681
    add-int/lit8 v9, v9, 0x1

    .line 682
    iget v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    if-eq v0, v10, :cond_c

    .line 683
    add-int/lit8 v8, v8, 0x1

    move v0, v6

    move v1, v8

    move v2, v9

    goto :goto_1

    .line 685
    :cond_3
    iget v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    if-ne v0, v4, :cond_c

    .line 686
    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move v1, v8

    move v2, v9

    goto :goto_1

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 697
    if-nez v9, :cond_6

    if-nez v8, :cond_6

    .line 698
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 700
    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bz()J

    move-result-wide v0

    .line 702
    const-wide/32 v4, 0xf731400

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 703
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amu;->Hx()Ljava/util/List;

    move-result-object v0

    .line 704
    if-gtz v6, :cond_5

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v7, v10

    .line 709
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 711
    :goto_2
    if-lez v0, :cond_b

    .line 712
    add-int/lit8 v1, v0, -0x1

    .line 713
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    if-eqz v0, :cond_7

    .line 716
    if-le v9, v8, :cond_8

    .line 717
    :try_start_1
    invoke-interface {v0, v9}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;->onShowDownloadCount(I)V

    :cond_7
    :goto_3
    move v0, v1

    .line 729
    goto :goto_2

    .line 718
    :cond_8
    if-lez v8, :cond_9

    .line 719
    invoke-interface {v0, v8}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;->onShowWaitDownloadCount(I)V

    goto :goto_3

    .line 725
    :catch_0
    move-exception v0

    goto :goto_3

    .line 720
    :cond_9
    if-eqz v7, :cond_a

    .line 721
    invoke-interface {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;->onShowDot()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 731
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 723
    :cond_a
    :try_start_3
    invoke-interface {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;->onShowNormal()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 730
    :cond_b
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$4;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 731
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 732
    return-void

    :cond_c
    move v0, v6

    move v1, v8

    move v2, v9

    goto/16 :goto_1
.end method
