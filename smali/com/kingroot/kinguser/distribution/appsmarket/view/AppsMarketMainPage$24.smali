.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 957
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

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
    .line 962
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 965
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 966
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

    .line 968
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    .line 969
    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v4

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 970
    new-instance v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-direct {v4, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 973
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;

    invoke-direct {v0, p0, p3, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 995
    :cond_2
    return-void
.end method
