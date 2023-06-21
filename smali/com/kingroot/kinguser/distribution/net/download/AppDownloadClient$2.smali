.class Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;
.super Lcom/kingroot/kinguser/apa$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-direct {p0}, Lcom/kingroot/kinguser/apa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bom;)V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->a(Lcom/kingroot/kinguser/bom;)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 90
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/bom;)V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->b(Lcom/kingroot/kinguser/bom;)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 106
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/bom;)V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->d(Lcom/kingroot/kinguser/bom;)V

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 98
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/bom;)V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->e(Lcom/kingroot/kinguser/bom;)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 82
    return-void
.end method

.method public f(Lcom/kingroot/kinguser/bom;)V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->f(Lcom/kingroot/kinguser/bom;)V

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 114
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/bom;)V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->g(Lcom/kingroot/kinguser/bom;)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v2, p1, v1, v3, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 74
    return-void
.end method
