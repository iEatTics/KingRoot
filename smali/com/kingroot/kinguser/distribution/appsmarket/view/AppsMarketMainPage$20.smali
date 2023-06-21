.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;
.super Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 879
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v2}, Lcom/kingroot/kinguser/anu;->g(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 880
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 887
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    .line 873
    return-void
.end method
