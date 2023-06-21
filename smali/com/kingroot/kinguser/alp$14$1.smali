.class Lcom/kingroot/kinguser/alp$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$14;->run()V
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
.field final synthetic ayN:Lcom/kingroot/kinguser/alp$14;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$14;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 8
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
    .line 262
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 263
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18909

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$14;->ayM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    if-eqz v0, :cond_1

    .line 268
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/anf;->aC(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$14;->ayM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    iget-object v2, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    iget-object v2, v2, Lcom/kingroot/kinguser/alp$14;->ayL:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    iget v3, v3, Lcom/kingroot/kinguser/alp$14;->val$fetchSize:I

    iget-object v4, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    iget v4, v4, Lcom/kingroot/kinguser/alp$14;->val$fetchOffset:I

    iget-object v5, p0, Lcom/kingroot/kinguser/alp$14$1;->ayN:Lcom/kingroot/kinguser/alp$14;

    iget v5, v5, Lcom/kingroot/kinguser/alp$14;->val$cid:I

    const-wide/16 v6, -0x1

    invoke-static {v1, v6, v7}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v6

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;->onReceive(ILjava/lang/String;IIILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method
