.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 1251
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v2}, Lcom/kingroot/kinguser/atm;->y(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 1252
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$3;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1260
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 1265
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$4;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1276
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 1280
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$5;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 1304
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$7;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1312
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 1222
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1231
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 1292
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$6;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1300
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 1236
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$2;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1245
    return-void
.end method
