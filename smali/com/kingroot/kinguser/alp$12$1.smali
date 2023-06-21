.class Lcom/kingroot/kinguser/alp$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bud;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/bud",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayH:Lcom/kingroot/kinguser/alp$12;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$12;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$12$1;->ayH:Lcom/kingroot/kinguser/alp$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$12$1;->ayH:Lcom/kingroot/kinguser/alp$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$12;->ayG:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$12$1;->ayH:Lcom/kingroot/kinguser/alp$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$12;->ayG:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

    const-wide/16 v2, -0x1

    invoke-static {p2, v2, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;->onReceive(ILjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method
