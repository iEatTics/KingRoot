.class public Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/amy;

.field final synthetic val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

.field final synthetic val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/amy;Lcom/kingroot/kinguser/amy$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->this$0:Lcom/kingroot/kinguser/amy;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iput-object p4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 506
    if-nez p2, :cond_2

    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;->onState(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$savePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    .line 515
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$savePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$savePath:Ljava/lang/String;

    .line 518
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    invoke-static {v1, p1}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Ljava/lang/String;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 532
    :goto_0
    return-void

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->appName:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;->onState(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->this$0:Lcom/kingroot/kinguser/amy;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$finalInfo4merge:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Z)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->this$0:Lcom/kingroot/kinguser/amy;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v3, v3, Lcom/kingroot/kinguser/amy$a;->azZ:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;->val$downloadInfo:Lcom/kingroot/kinguser/amy$a;

    iget-object v5, v4, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 528
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    goto :goto_0
.end method
