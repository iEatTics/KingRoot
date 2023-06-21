.class Lcom/kingroot/kinguser/axd$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axd;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axd;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/kingroot/kinguser/axd$1;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 175
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/axd$1;->this$0:Lcom/kingroot/kinguser/axd;

    invoke-static {v0}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axd$1;->this$0:Lcom/kingroot/kinguser/axd;

    .line 181
    invoke-static {v1}, Lcom/kingroot/kinguser/axd;->a(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axd$1;->this$0:Lcom/kingroot/kinguser/axd;

    .line 182
    invoke-static {v2}, Lcom/kingroot/kinguser/axd;->b(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/axd$1;->this$0:Lcom/kingroot/kinguser/axd;

    .line 183
    invoke-static {v3}, Lcom/kingroot/kinguser/axd;->c(Lcom/kingroot/kinguser/axd;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0700d6

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Ljava/lang/String;)V

    .line 185
    return-void
.end method
