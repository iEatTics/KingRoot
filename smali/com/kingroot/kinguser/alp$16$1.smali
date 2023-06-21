.class Lcom/kingroot/kinguser/alp$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bui;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/bui",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
        "Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayS:Lcom/kingroot/kinguser/alp$16;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$16;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$16$1;->ayS:Lcom/kingroot/kinguser/alp$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$16$1;->ayS:Lcom/kingroot/kinguser/alp$16;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$16;->ayR:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/anf;->aC(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$16$1;->ayS:Lcom/kingroot/kinguser/alp$16;

    iget-object v3, v0, Lcom/kingroot/kinguser/alp$16;->ayR:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    iget-object v0, p0, Lcom/kingroot/kinguser/alp$16$1;->ayS:Lcom/kingroot/kinguser/alp$16;

    iget v4, v0, Lcom/kingroot/kinguser/alp$16;->aye:I

    iget-object v0, p0, Lcom/kingroot/kinguser/alp$16$1;->ayS:Lcom/kingroot/kinguser/alp$16;

    iget-object v5, v0, Lcom/kingroot/kinguser/alp$16;->anx:Ljava/lang/String;

    if-eqz p5, :cond_1

    iget-wide v0, p5, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, p1, v4, v5, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;->onReceive(IILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_1
    return-void

    .line 359
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    goto :goto_1
.end method
