.class Lcom/kingroot/kinguser/alp$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/bue",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayi:Lcom/kingroot/kinguser/alp$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$2;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$2$1;->ayi:Lcom/kingroot/kinguser/alp$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$2$1;->ayi:Lcom/kingroot/kinguser/alp$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$2;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    if-eqz v0, :cond_0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$2$1;->ayi:Lcom/kingroot/kinguser/alp$2;

    iget-object v2, v0, Lcom/kingroot/kinguser/alp$2;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    if-eqz p4, :cond_1

    iget-wide v0, p4, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    :goto_0
    invoke-static {p2, v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;->onReceive(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_1
    return-void

    .line 412
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    goto :goto_1
.end method
