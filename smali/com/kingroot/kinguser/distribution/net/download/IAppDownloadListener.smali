.class public interface abstract Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method

.method public abstract onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method

.method public abstract onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method

.method public abstract onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method

.method public abstract onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method

.method public abstract onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method

.method public abstract onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end method
