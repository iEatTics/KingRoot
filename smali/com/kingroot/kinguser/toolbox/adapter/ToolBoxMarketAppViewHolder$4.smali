.class public Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bff;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bff;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$3;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$4;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Br()V

    .line 210
    :cond_0
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$5;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$7;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$1;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$6;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$2;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method
