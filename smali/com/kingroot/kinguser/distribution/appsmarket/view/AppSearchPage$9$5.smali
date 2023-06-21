.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;->aDt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;->aDt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;->aDt:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9$5;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 667
    monitor-exit v1

    .line 669
    :cond_0
    return-void

    .line 667
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
