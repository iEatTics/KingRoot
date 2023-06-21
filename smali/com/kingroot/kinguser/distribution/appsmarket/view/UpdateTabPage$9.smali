.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 776
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->r(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 781
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 782
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 783
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->pkgName:Ljava/lang/String;

    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 785
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V

    goto :goto_0

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoj;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 792
    return-void
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 741
    if-eqz p1, :cond_4

    .line 743
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/amu;->Hy()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;Ljava/util/List;)Ljava/util/List;

    .line 744
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 745
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->o(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->d(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-result-object v2

    .line 749
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->r(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->d(Lcom/kingroot/kinguser/aoj;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->k(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 753
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->k(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_1
    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/amz;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_0

    .line 760
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto :goto_0

    .line 764
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto/16 :goto_0

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->s(Lcom/kingroot/kinguser/aoj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$9;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->t(Lcom/kingroot/kinguser/aoj;)V

    .line 772
    :cond_4
    return-void
.end method
