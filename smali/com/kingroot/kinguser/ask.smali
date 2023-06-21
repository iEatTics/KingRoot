.class final Lcom/kingroot/kinguser/ask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->ask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_FileUploadHelper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized e(Ljava/io/File;I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 45
    const-class v1, Lcom/kingroot/kinguser/ask;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 49
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ux;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v3

    .line 54
    invoke-static {v3}, Lcom/kingroot/kinguser/aay;->al(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    const-string v0, "null"

    .line 58
    :cond_2
    new-instance v4, Lcom/kingroot/kinguser/cs;

    invoke-direct {v4}, Lcom/kingroot/kinguser/cs;-><init>()V

    .line 59
    const-string v5, "1"

    iput-object v5, v4, Lcom/kingroot/kinguser/cs;->my:Ljava/lang/String;

    .line 60
    iput-object v2, v4, Lcom/kingroot/kinguser/cs;->it:Ljava/lang/String;

    .line 61
    iput-object v0, v4, Lcom/kingroot/kinguser/cs;->iE:Ljava/lang/String;

    .line 62
    iput p1, v4, Lcom/kingroot/kinguser/cs;->product:I

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/kingroot/kinguser/cs;->mz:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 76
    :try_start_3
    new-instance v2, Lcom/kingroot/kinguser/ct;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ct;-><init>()V

    .line 77
    iput-object v4, v2, Lcom/kingroot/kinguser/ct;->mA:Lcom/kingroot/kinguser/cs;

    .line 78
    iput-object v0, v2, Lcom/kingroot/kinguser/ct;->data:[B

    .line 80
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ct;->toByteArray()[B

    move-result-object v0

    const-string v2, "fPNH830HG23QQPIM*&S955(2NB@L*&GF"

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 80
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aaj;->c([B[B)[B

    move-result-object v0

    .line 86
    const-string v2, "http://bh.3g.qq.com"

    invoke-static {v3, v2}, Lcom/kingroot/kinguser/uy;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;

    move-result-object v2

    .line 87
    const-string v3, "POST"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/uy;->setRequestMethod(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/uy;->z([B)V

    .line 89
    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->kZ()I

    .line 98
    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->getResponseCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    const/16 v0, -0x1b58

    goto :goto_0

    .line 98
    :cond_3
    const/16 v0, -0xfa0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
