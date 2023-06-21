.class Lcom/kingroot/kinguser/aoj$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj;->JW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$3;->this$0:Lcom/kingroot/kinguser/aoj;

    iput-object p2, p0, Lcom/kingroot/kinguser/aoj$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 836
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$3;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->l(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 839
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj$3;->this$0:Lcom/kingroot/kinguser/aoj;

    .line 840
    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj$3;->this$0:Lcom/kingroot/kinguser/aoj;

    .line 841
    invoke-static {v4}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v4

    .line 838
    invoke-static {v0, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 836
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 844
    return-void
.end method
