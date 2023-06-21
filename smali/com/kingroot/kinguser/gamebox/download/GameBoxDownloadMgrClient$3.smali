.class public Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ath;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ath;

.field final synthetic val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ath;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;->this$0:Lcom/kingroot/kinguser/ath;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->eJ(Ljava/lang/String;)V

    goto :goto_0
.end method
