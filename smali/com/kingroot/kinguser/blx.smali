.class public final Lcom/kingroot/kinguser/blx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bAE:Ljava/lang/String;

.field private bAF:Lcom/kingroot/kinguser/bly;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bly;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/blx;->bAF:Lcom/kingroot/kinguser/bly;

    .line 32
    iput-object p2, p0, Lcom/kingroot/kinguser/blx;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p1, Lcom/kingroot/kinguser/bly;->bAE:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/blx;->bAE:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/CloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/modules/app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/blx;->bAE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final afy()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kingroot/kinguser/blx;->bAE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/blx;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/blx;->bAF:Lcom/kingroot/kinguser/bly;

    iget-object v3, v3, Lcom/kingroot/kinguser/bly;->bAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/bmi;->E(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bmi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 67
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/bmi;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->cS()I

    .line 70
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 73
    const/16 v1, 0x400

    new-array v5, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 78
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/blx;->bAF:Lcom/kingroot/kinguser/bly;

    iget v0, v0, Lcom/kingroot/kinguser/bly;->bAH:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 85
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 86
    :try_start_4
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->close()V

    .line 101
    :cond_2
    return v6

    .line 88
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 89
    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 94
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bmi;->close()V

    .line 95
    :cond_3
    throw v0

    .line 93
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 88
    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public final mi(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x3e9

    .line 106
    .line 107
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6821\u9a8c\u5931\u8d25\uff0c\u63d2\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcloudsdk/KError;->set(ILjava/lang/String;)V

    .line 143
    :goto_0
    return v0

    .line 117
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 118
    iget-object v4, p0, Lcom/kingroot/kinguser/blx;->bAF:Lcom/kingroot/kinguser/bly;

    iget v4, v4, Lcom/kingroot/kinguser/bly;->bAH:I

    int-to-long v4, v4

    .line 120
    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 121
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/blx;->bAF:Lcom/kingroot/kinguser/bly;

    iget-object v3, v3, Lcom/kingroot/kinguser/bly;->an:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 123
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 129
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    const/4 v0, 0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6821\u9a8c\u5931\u8d25\uff0c\u63d2\u4ef6MD5\u4e0e\u751f\u6548\u5355\u4e0d\u4e00\u81f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcloudsdk/KError;->set(ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6821\u9a8c\u5931\u8d25\uff0c\u63d2\u4ef6\u5927\u5c0f\u4e0e\u751f\u6548\u5355\u4e0d\u4e00\u81f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcloudsdk/KError;->set(ILjava/lang/String;)V

    goto :goto_0
.end method
