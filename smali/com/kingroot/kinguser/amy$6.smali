.class Lcom/kingroot/kinguser/amy$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amy;->IG()V
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
    .line 867
    iput-object p1, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 870
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 871
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amy;->IC()Ljava/util/List;

    move-result-object v0

    .line 872
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 873
    iget-object v0, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 874
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-eqz v0, :cond_0

    :cond_1
    iget v0, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 880
    iget-object v0, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    iget v0, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->resumeDownloadTimes:I

    .line 882
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v5, v3

    .line 883
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 889
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 890
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 892
    :goto_1
    if-lez v0, :cond_3

    .line 893
    add-int/lit8 v1, v0, -0x1

    .line 895
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;

    invoke-interface {v0, v6}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;->onTriggerWifiAutoDownload(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 897
    goto :goto_1

    .line 896
    :catch_0
    move-exception v0

    move v0, v1

    .line 897
    goto :goto_1

    .line 899
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$6;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 900
    monitor-exit v2

    .line 902
    return-void

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
