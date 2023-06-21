.class Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGb:Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;->aGb:Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;->aGb:Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$6$7;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 675
    :cond_0
    return-void
.end method
