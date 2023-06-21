.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->onReceive(ILjava/lang/String;IIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 549
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->this$1:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;->val$appModels:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;Ljava/util/List;Ljava/util/List;)V

    .line 554
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;)V

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/amu;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V

    .line 572
    return-void
.end method
