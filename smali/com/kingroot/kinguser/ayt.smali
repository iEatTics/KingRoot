.class public Lcom/kingroot/kinguser/ayt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
    .locals 4
    .param p0    # Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-direct {v0}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KH()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->url:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/ayt;->b(Lcom/kingroot/kinguser/boq;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 46
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KG()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->currentSize:J

    .line 47
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KF()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileSize:J

    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v1

    iput v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->progress:I

    .line 50
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    .line 52
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    .line 53
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    .line 54
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    .line 55
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->businessStream:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    .line 56
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->cmsCategoryId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    .line 58
    return-object v0
.end method

.method public static a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;)Lcom/kingroot/kinguser/boq;
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/kingroot/kinguser/ayt$1;->bde:[I

    invoke-virtual {p0}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "covert to DownloaderTaskStatus failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    .line 90
    :goto_0
    return-object v0

    .line 80
    :pswitch_1
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFB:Lcom/kingroot/kinguser/boq;

    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    goto :goto_0

    .line 84
    :pswitch_3
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    goto :goto_0

    .line 86
    :pswitch_4
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    goto :goto_0

    .line 88
    :pswitch_5
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFF:Lcom/kingroot/kinguser/boq;

    goto :goto_0

    .line 90
    :pswitch_6
    sget-object v0, Lcom/kingroot/kinguser/boq;->bFG:Lcom/kingroot/kinguser/boq;

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;-><init>()V

    .line 15
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->apkMd5:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->pkgName:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->appName:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->channelId:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->businessStream:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->businessStream:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->cmsCategoryId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->cmsCategoryId:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->versionName:Ljava/lang/String;

    .line 23
    return-object v0
.end method

.method public static b(Lcom/kingroot/kinguser/boq;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;
    .locals 3

    .prologue
    .line 97
    sget-object v0, Lcom/kingroot/kinguser/ayt$1;->azW:[I

    invoke-virtual {p0}, Lcom/kingroot/kinguser/boq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "covert to TaskStatus failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PENDING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 111
    :goto_0
    return-object v0

    .line 101
    :pswitch_1
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->STARTED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    goto :goto_0

    .line 103
    :pswitch_2
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->DOWNLOADING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    goto :goto_0

    .line 105
    :pswitch_3
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->COMPLETE:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    goto :goto_0

    .line 107
    :pswitch_4
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->FAILED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    goto :goto_0

    .line 109
    :pswitch_5
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PAUSED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    goto :goto_0

    .line 111
    :pswitch_6
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->DELETED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static b(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 4
    .param p0    # Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->hT(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->hV(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setUrl(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayt;->a(Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;)Lcom/kingroot/kinguser/boq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->a(Lcom/kingroot/kinguser/boq;)V

    .line 32
    iget-wide v2, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->currentSize:J

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->bS(J)V

    .line 33
    iget-wide v2, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileSize:J

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->bR(J)V

    .line 34
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->hW(Ljava/lang/String;)V

    .line 35
    iget v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->progress:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setPercentage(I)V

    .line 36
    iget-object v1, p0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->hU(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public static f(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;
    .locals 4
    .param p0    # Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-direct {v0}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KH()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->uniqueKey:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/ayt;->b(Lcom/kingroot/kinguser/boq;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->state:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KG()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->currentSize:J

    .line 68
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KF()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileSize:J

    .line 69
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KK()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->fileName:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v1

    iput v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->progress:I

    .line 71
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->orignalUrl:Ljava/lang/String;

    .line 72
    return-object v0
.end method
