.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCA:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8$4;->aCA:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8$4;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 710
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8$4;->aCA:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8;->this$0:Lcom/kingroot/kinguser/ann;

    invoke-static {v1}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ann;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadTaskPage$8$4;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 712
    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 713
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 714
    const v1, 0x7f070152

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 716
    :cond_0
    return-void
.end method
