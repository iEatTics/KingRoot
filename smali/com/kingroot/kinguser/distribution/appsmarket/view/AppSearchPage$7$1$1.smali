.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;->this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchDiffResult(Ljava/util/List;Z)V
    .locals 0
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
    .line 570
    return-void
.end method

.method public onFetchResult(Ljava/util/List;Z)V
    .locals 3
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
    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;->this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;->this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->val$appModels:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;->this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;->this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v2}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;->this$2:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->p(Lcom/kingroot/kinguser/anq;)V

    .line 565
    return-void

    .line 563
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
