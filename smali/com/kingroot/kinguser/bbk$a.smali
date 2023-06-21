.class Lcom/kingroot/kinguser/bbk$a;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/bbk$a;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Lcom/kingroot/kinguser/bbk;->bF(I)I

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/bbm;->Wu()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/bbm;->dI()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bbk;->aK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bbk$a;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "wechat_qrcode"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    :try_start_0
    const-string v2, "Android"

    iget-object v3, p0, Lcom/kingroot/kinguser/bbk$a;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 114
    :try_start_1
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v5, "http.protocol.handle-redirects"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 115
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 118
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    :try_start_3
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/za;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 120
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 121
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/kingroot/kinguser/bbk;->bF(I)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 125
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 126
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 127
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 123
    :goto_1
    const/4 v3, -0x1

    :try_start_4
    invoke-static {v3}, Lcom/kingroot/kinguser/bbk;->bF(I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 125
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 126
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 127
    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 126
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 127
    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1
    throw v0

    .line 125
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :catchall_4
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 122
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method
