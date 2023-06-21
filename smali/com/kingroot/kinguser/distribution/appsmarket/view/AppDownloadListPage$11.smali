.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anl;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anl;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 566
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-static {v0}, Lcom/kingroot/kinguser/anl;->d(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-static {v0}, Lcom/kingroot/kinguser/anl;->d(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 572
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;->this$0:Lcom/kingroot/kinguser/anl;

    .line 573
    invoke-static {v4}, Lcom/kingroot/kinguser/anl;->d(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 574
    new-instance v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-direct {v4, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11$1;

    invoke-direct {v0, p0, p3, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 600
    :cond_2
    return-void
.end method
