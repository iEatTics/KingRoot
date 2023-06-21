.class Lcom/kingroot/kinguser/alp$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bun;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/bun",
        "<",
        "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayA:Lcom/kingroot/kinguser/alp$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$10;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$10$1;->ayA:Lcom/kingroot/kinguser/alp$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$10$1;->ayA:Lcom/kingroot/kinguser/alp$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$10;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$10$1;->ayA:Lcom/kingroot/kinguser/alp$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$10;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    const-wide/16 v2, -0x1

    invoke-static {p2, v2, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;->onReceive(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method
