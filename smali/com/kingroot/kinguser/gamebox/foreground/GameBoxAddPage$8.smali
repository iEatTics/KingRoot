.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atj;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 479
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v2}, Lcom/kingroot/kinguser/atj;->e(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 481
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$3;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 496
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 515
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$5;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 545
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$7;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 449
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 459
    return-void
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 530
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 464
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$2;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method
