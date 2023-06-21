.class public abstract Lcom/kingroot/kinguser/ans;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketBasePage$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketBasePage$1;-><init>(Lcom/kingroot/kinguser/ans;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ans;->aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

    .line 34
    return-void
.end method


# virtual methods
.method public abstract ah(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ans;->aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V

    .line 41
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 42
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ans;->aDx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V

    .line 48
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 49
    return-void
.end method
