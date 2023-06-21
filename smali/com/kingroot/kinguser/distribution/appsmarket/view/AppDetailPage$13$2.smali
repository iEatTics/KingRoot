.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;->onShowWaitDownloadCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBs:I

.field final synthetic aBt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;I)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;->aBt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;

    iput p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;->aBs:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;->aBt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->w(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/ano;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;->aBs:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fM(I)V

    .line 822
    return-void
.end method
