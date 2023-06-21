.class Lcom/kingroot/kinguser/aoj$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj;->Jf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBR:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$2;->this$0:Lcom/kingroot/kinguser/aoj;

    iput-object p2, p0, Lcom/kingroot/kinguser/aoj$2;->aBR:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kinguser/aoj$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 811
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$2;->aBR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    move-object v1, v0

    .line 812
    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 813
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj$2;->this$0:Lcom/kingroot/kinguser/aoj;

    .line 814
    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj$2;->this$0:Lcom/kingroot/kinguser/aoj;

    .line 815
    invoke-static {v4}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v4

    .line 812
    invoke-static {v1, v0, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    goto :goto_0

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 818
    return-void
.end method
