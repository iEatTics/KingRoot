.class Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

.field final synthetic bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    iput-object p2, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setPercentage(I)V

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v0}, Lcom/kingroot/kinguser/bff;->a(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v1}, Lcom/kingroot/kinguser/bff;->e(Lcom/kingroot/kinguser/bff;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->gR(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method
