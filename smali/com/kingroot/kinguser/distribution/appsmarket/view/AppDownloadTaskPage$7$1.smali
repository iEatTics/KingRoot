.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->onComplete(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCx:Ljava/util/ArrayList;

.field final synthetic aCy:Ljava/util/ArrayList;

.field final synthetic aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCx:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 629
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 630
    if-lez v0, :cond_0

    .line 631
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v2}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 632
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v2}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCx:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 634
    :cond_0
    if-lez v1, :cond_1

    .line 635
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v2}, Lcom/kingroot/kinguser/ann;->g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 636
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v2}, Lcom/kingroot/kinguser/ann;->g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCy:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 638
    :cond_1
    if-gtz v0, :cond_2

    if-lez v1, :cond_3

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->n(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->n(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v1}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 641
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v0}, Lcom/kingroot/kinguser/ann;->n(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v1}, Lcom/kingroot/kinguser/ann;->g(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7$1;->aCz:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$7;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ann;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 644
    return-void
.end method
