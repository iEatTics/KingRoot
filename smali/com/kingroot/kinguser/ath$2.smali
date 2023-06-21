.class Lcom/kingroot/kinguser/ath$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ath;->d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

.field final synthetic this$0:Lcom/kingroot/kinguser/ath;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ath;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingroot/kinguser/ath$2;->this$0:Lcom/kingroot/kinguser/ath;

    iput-object p2, p0, Lcom/kingroot/kinguser/ath$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/ath$2;->this$0:Lcom/kingroot/kinguser/ath;

    invoke-static {v0}, Lcom/kingroot/kinguser/ath;->a(Lcom/kingroot/kinguser/ath;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ath$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ady;->eL(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ath$2;->this$0:Lcom/kingroot/kinguser/ath;

    invoke-static {v0}, Lcom/kingroot/kinguser/ath;->a(Lcom/kingroot/kinguser/ath;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ath$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
