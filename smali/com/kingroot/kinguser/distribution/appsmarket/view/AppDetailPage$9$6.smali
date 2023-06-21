.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBx:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9$6;->aBx:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9$6;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 665
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9$6;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9$6;->aBx:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9$6;->aBx:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;->this$0:Lcom/kingroot/kinguser/ank;

    iget-object v1, v1, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 667
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method
