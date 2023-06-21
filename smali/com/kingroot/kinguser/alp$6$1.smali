.class Lcom/kingroot/kinguser/alp$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$6;->run()V
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
        "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayv:Lcom/kingroot/kinguser/alp$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$6;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$6$1;->ayv:Lcom/kingroot/kinguser/alp$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$6$1;->ayv:Lcom/kingroot/kinguser/alp$6;

    iget-object v2, v0, Lcom/kingroot/kinguser/alp$6;->ayu:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;

    if-eqz p3, :cond_0

    iget-wide v0, p3, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->groupId:J

    :goto_0
    invoke-static {p2, v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;->onReceive(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_1
    return-void

    .line 527
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    goto :goto_1
.end method
