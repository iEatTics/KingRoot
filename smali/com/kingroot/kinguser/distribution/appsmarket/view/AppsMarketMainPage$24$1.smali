.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->onReceive(IILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBL:Ljava/util/ArrayList;

.field final synthetic aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aBL:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Il()Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->A(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->A(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Il()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 981
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->A(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Il()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->A(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isExpand:Z

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->B(Lcom/kingroot/kinguser/anu;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->B(Lcom/kingroot/kinguser/anu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 987
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->B(Lcom/kingroot/kinguser/anu;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aBL:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 988
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1895e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 991
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->C(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alf;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24$1;->aEk:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0

    .line 988
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
