.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEj:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22$1;->aEj:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 929
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 930
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22$1;->aEj:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;->this$0:Lcom/kingroot/kinguser/anu;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22$1;->val$pkg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    .line 931
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 932
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22$1;->aEj:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->o(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alj;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alj;->fg(I)V

    .line 934
    :cond_0
    return-void
.end method
