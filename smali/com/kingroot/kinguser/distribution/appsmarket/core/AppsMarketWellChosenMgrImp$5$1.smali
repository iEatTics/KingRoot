.class Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->onReceive(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->val$appModels:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$ret:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->val$appModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 263
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v2

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/apv;->id(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$ret:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x51

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$fetchTime:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->this$0:Lcom/kingroot/kinguser/aly;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$fetchTime:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$listener:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$fetchOffset:I

    add-int/lit8 v3, v3, 0x51

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$ret:Ljava/util/List;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget v5, v5, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$cid:I

    iget-object v6, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v6, v6, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/aly;->a(Lcom/kingroot/kinguser/aly;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V

    .line 285
    :cond_1
    :goto_1
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$ret:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$listener:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;

    if-eqz v0, :cond_1

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$listener:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;->azn:Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;->onFinish(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
