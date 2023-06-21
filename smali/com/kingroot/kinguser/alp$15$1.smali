.class Lcom/kingroot/kinguser/alp$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$15;->run()V
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
.field final synthetic ayO:J

.field final synthetic ayP:Lcom/kingroot/kinguser/alp$15;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$15;J)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iput-wide p2, p0, Lcom/kingroot/kinguser/alp$15$1;->ayO:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V
    .locals 4
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
    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$15;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    if-eqz v0, :cond_0

    .line 302
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/anf;->aC(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget-object v3, v0, Lcom/kingroot/kinguser/alp$15;->ayg:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    if-eqz p4, :cond_1

    iget-wide v0, p4, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;->onReceive(ILjava/util/List;)V

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$15;->ayh:Lcom/kingroot/kinguser/alp;

    invoke-static {v0}, Lcom/kingroot/kinguser/alp;->a(Lcom/kingroot/kinguser/alp;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget v1, v1, Lcom/kingroot/kinguser/alp$15;->aye:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 313
    if-nez p4, :cond_2

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 309
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 317
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p4, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$15;->ayh:Lcom/kingroot/kinguser/alp;

    invoke-static {v0}, Lcom/kingroot/kinguser/alp;->a(Lcom/kingroot/kinguser/alp;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget v1, v1, Lcom/kingroot/kinguser/alp$15;->aye:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p4, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$15$1;->ayP:Lcom/kingroot/kinguser/alp$15;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$15;->ayh:Lcom/kingroot/kinguser/alp;

    invoke-static {v0}, Lcom/kingroot/kinguser/alp;->a(Lcom/kingroot/kinguser/alp;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    goto :goto_1
.end method
