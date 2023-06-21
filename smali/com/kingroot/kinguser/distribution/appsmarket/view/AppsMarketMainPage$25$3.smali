.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;->onShowDot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEl:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$3;->aEl:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$3;->aEl:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fK(I)V

    .line 1027
    return-void
.end method
