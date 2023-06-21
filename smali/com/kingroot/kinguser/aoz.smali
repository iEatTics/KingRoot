.class public interface abstract Lcom/kingroot/kinguser/aoz;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract Ky()Ljava/util/List;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract Kz()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract hN(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
