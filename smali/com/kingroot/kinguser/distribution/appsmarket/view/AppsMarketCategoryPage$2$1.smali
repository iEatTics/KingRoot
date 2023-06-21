.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;->onReceive(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDC:Ljava/util/List;

.field final synthetic aDE:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDE:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDC:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDE:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;->this$0:Lcom/kingroot/kinguser/ant;

    invoke-static {v0}, Lcom/kingroot/kinguser/ant;->d(Lcom/kingroot/kinguser/ant;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDC:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDE:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;->this$0:Lcom/kingroot/kinguser/ant;

    invoke-static {v0}, Lcom/kingroot/kinguser/ant;->d(Lcom/kingroot/kinguser/ant;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDE:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;->this$0:Lcom/kingroot/kinguser/ant;

    invoke-static {v0}, Lcom/kingroot/kinguser/ant;->b(Lcom/kingroot/kinguser/ant;)I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2$1;->aDE:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;->this$0:Lcom/kingroot/kinguser/ant;

    invoke-static {v0}, Lcom/kingroot/kinguser/ant;->c(Lcom/kingroot/kinguser/ant;)V

    .line 102
    :cond_1
    return-void
.end method
