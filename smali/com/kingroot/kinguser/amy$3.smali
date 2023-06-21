.class Lcom/kingroot/kinguser/amy$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azV:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

.field final synthetic this$0:Lcom/kingroot/kinguser/amy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/amy;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/kingroot/kinguser/amy$3;->this$0:Lcom/kingroot/kinguser/amy;

    iput-object p2, p0, Lcom/kingroot/kinguser/amy$3;->azV:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$3;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 606
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 609
    iget-boolean v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-nez v3, :cond_0

    .line 612
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    .line 614
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 617
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    goto :goto_0

    .line 619
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v3

    .line 621
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v4}, Lcom/kingroot/kinguser/anf;->fH(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    const/4 v4, 0x5

    iput v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 625
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v3}, Lcom/kingroot/kinguser/anf;->fI(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    const/4 v3, 0x0

    iput v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 629
    :cond_3
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$3;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 634
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$3;->azV:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

    if-eqz v0, :cond_5

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$3;->azV:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;->onComplete(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_5
    :goto_1
    return-void

    .line 637
    :catch_0
    move-exception v0

    goto :goto_1
.end method
