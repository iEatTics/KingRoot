.class Lcom/kingroot/kinguser/alp$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/buc",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayK:Lcom/kingroot/kinguser/alp$13;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$13;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1890b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$13;->ayJ:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

    if-eqz v0, :cond_1

    .line 213
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$13;->ayJ:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;->onReceive(ILcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;-><init>(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$13;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$13;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v0, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$13;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;->categoryid:I

    iput v0, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->categoryId:I

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$13$1;->ayK:Lcom/kingroot/kinguser/alp$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$13;->ayJ:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;->onReceive(ILcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    goto :goto_0
.end method
