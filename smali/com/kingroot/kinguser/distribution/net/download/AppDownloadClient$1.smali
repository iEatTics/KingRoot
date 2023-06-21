.class Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aox$a;


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
    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnIntoMobileNetwork()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 56
    :goto_0
    if-lez v0, :cond_0

    .line 57
    add-int/lit8 v1, v0, -0x1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    invoke-interface {v0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;->onTurnIntoMobileNetwork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 61
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 64
    return-void
.end method
