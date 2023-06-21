.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

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
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->k(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 573
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v2}, Lcom/kingroot/kinguser/aoj;->l(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v1}, Lcom/kingroot/kinguser/aoj;->m(Lcom/kingroot/kinguser/aoj;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;I)I

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->n(Lcom/kingroot/kinguser/aoj;)V

    .line 578
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$5;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoj;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 579
    return-void
.end method
