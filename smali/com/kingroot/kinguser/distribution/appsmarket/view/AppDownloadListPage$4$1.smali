.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;->onReceive(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBN:Ljava/util/List;

.field final synthetic aBO:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBO:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBN:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBO:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBO:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v1, v1, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBN:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBO:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;->this$0:Lcom/kingroot/kinguser/anl;

    iget v1, v0, Lcom/kingroot/kinguser/anl;->aon:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, v0, Lcom/kingroot/kinguser/anl;->aon:I

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4$1;->aBO:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    return-void
.end method
