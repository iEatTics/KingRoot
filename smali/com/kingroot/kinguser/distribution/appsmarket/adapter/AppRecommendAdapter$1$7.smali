.class Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

.field final synthetic awx:Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;->awx:Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;->awx:Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v0}, Lcom/kingroot/kinguser/alf;->f(Lcom/kingroot/kinguser/alf;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 406
    :cond_0
    return-void
.end method
