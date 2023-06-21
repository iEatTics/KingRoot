.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;->onShowDownloadCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBs:I

.field final synthetic aEl:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;I)V
    .locals 0

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;->aEl:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;

    iput p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;->aBs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;->aEl:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/anx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;->aBs:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fL(I)V

    .line 1006
    return-void
.end method
