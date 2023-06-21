.class Lcom/kingroot/kinguser/anu$20;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->Jf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEm:Ljava/util/List;

.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$20;->this$0:Lcom/kingroot/kinguser/anu;

    iput-object p2, p0, Lcom/kingroot/kinguser/anu$20;->aEm:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$20;->aEm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 342
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anu$20;->this$0:Lcom/kingroot/kinguser/anu;

    .line 345
    invoke-static {v3}, Lcom/kingroot/kinguser/anu;->f(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/anu$20;->this$0:Lcom/kingroot/kinguser/anu;

    .line 346
    invoke-static {v4}, Lcom/kingroot/kinguser/anu;->g(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v4

    .line 343
    invoke-static {v0, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    goto :goto_0

    .line 349
    :cond_1
    return-void
.end method
