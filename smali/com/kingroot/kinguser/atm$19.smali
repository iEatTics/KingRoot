.class Lcom/kingroot/kinguser/atm$19;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atm;->Jf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBR:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atm;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/kingroot/kinguser/atm$19;->this$0:Lcom/kingroot/kinguser/atm;

    iput-object p2, p0, Lcom/kingroot/kinguser/atm$19;->aBR:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1472
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1473
    iget-object v0, p0, Lcom/kingroot/kinguser/atm$19;->aBR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 1474
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1475
    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 1476
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/atm$19;->this$0:Lcom/kingroot/kinguser/atm;

    .line 1477
    invoke-static {v3}, Lcom/kingroot/kinguser/atm;->B(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/atm$19;->this$0:Lcom/kingroot/kinguser/atm;

    .line 1478
    invoke-static {v4}, Lcom/kingroot/kinguser/atm;->y(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v4

    .line 1475
    invoke-static {v1, v0, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    goto :goto_0

    .line 1482
    :cond_1
    return-void
.end method
