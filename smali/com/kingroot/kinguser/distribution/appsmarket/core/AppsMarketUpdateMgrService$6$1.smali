.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alw$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/alw$6;

.field final synthetic val$apps:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alw$6;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->val$apps:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 246
    if-eqz p2, :cond_1

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->b(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 250
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 251
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v1}, Lcom/kingroot/kinguser/alw;->b(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->val$apps:Ljava/util/Map;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->b(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 257
    return-void
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 231
    if-eqz p2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 235
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 236
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v1}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->val$apps:Ljava/util/Map;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v1, v0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->ayY:Lcom/kingroot/kinguser/alw;

    invoke-static {v0}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/alw;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/alw;->a(Lcom/kingroot/kinguser/alw;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketUpdateMgrService$6$1;->this$1:Lcom/kingroot/kinguser/alw$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/alw$6;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 242
    return-void
.end method
