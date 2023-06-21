.class Lcom/kingroot/kinguser/atj$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atj;->bf(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atj;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/kingroot/kinguser/atj$4;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/atj$4;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v0}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atj$4;->this$0:Lcom/kingroot/kinguser/atj;

    .line 263
    invoke-static {v1}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atj$4;->this$0:Lcom/kingroot/kinguser/atj;

    .line 264
    invoke-static {v2}, Lcom/kingroot/kinguser/atj;->a(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atj$4;->this$0:Lcom/kingroot/kinguser/atj;

    .line 265
    invoke-static {v3}, Lcom/kingroot/kinguser/atj;->e(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    .line 262
    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 266
    return-void
.end method
