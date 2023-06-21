.class public Lcom/kingroot/kinguser/apu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppDownloadUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/apu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static LM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    const-string v0, "download"

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static LN()J
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v2, v0

    .line 206
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amz;->Ky()Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 210
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v1

    .line 211
    sget-object v5, Lcom/kingroot/kinguser/boq;->bFA:Lcom/kingroot/kinguser/boq;

    if-ne v1, v5, :cond_1

    .line 212
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KO()J

    move-result-wide v0

    sub-long v0, v2, v0

    :goto_2
    move-wide v2, v0

    .line 219
    goto :goto_1

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v2, v0

    goto :goto_0

    .line 214
    :cond_1
    sget-object v5, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v1, v5, :cond_3

    .line 215
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KO()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KG()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    sub-long v0, v6, v0

    .line 216
    sub-long v0, v2, v0

    goto :goto_2

    .line 222
    :catch_0
    move-exception v0

    .line 225
    const-wide v2, 0x7fffffffffffffffL

    :cond_2
    return-wide v2

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/apu;->LM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p1, p2, p3}, Lcom/kingroot/kinguser/apu;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->j(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/kingroot/kinguser/apu;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, ""

    .line 178
    :goto_0
    return-object v0

    .line 168
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tencent"

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-static {p3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-static {v1}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/kingroot/kinguser/aag;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Z
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersion:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteVersionCode:I

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->remoteNewPkgMd5:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/apu;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;
    .locals 3
    .param p0    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/apu;->LM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/kingroot/kinguser/apu;->i(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const-string v0, ""

    .line 72
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/apu;->k(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-static {p0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    const-string v0, ""

    .line 159
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->version:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->versionCode:I

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/apu;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->version:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->versioncode:I

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->apkMd5:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/apu;->b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static l(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".patch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
