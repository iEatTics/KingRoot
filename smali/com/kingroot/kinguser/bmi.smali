.class public final Lcom/kingroot/kinguser/bmi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bAG:Ljava/lang/String;

.field private bBK:Ljava/lang/String;

.field private bBL:Ljava/net/HttpURLConnection;

.field private bBM:[B

.field private bBN:I

.field private bBO:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bBP:Z

.field private bBQ:Z

.field private bBR:B

.field private bBS:B

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBO:Ljava/util/Hashtable;

    .line 60
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bmi;->bBP:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bmi;->bBQ:Z

    .line 62
    iput-byte v1, p0, Lcom/kingroot/kinguser/bmi;->bBR:B

    .line 63
    iput-byte v1, p0, Lcom/kingroot/kinguser/bmi;->bBS:B

    .line 73
    iput-object p1, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static declared-synchronized E(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bmi;
    .locals 6

    .prologue
    .line 85
    const-class v1, Lcom/kingroot/kinguser/bmi;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bmi;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bmi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v2

    .line 87
    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    .line 89
    new-instance v0, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x41c

    const-string v3, "no connecition!"

    invoke-direct {v0, v2, v3}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 93
    :cond_0
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, v0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Lcom/kingroot/kinguser/bmi;->a(Ljava/net/URL;B)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit v1

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_2
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    const/16 v3, -0x41d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "malformed url: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private a(Ljava/net/URL;B)V
    .locals 5

    .prologue
    .line 138
    const/4 v0, -0x1

    if-eq v0, p2, :cond_2

    .line 141
    const/4 v0, 0x2

    if-ne v0, p2, :cond_5

    .line 142
    :try_start_0
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    .line 143
    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    :cond_1
    invoke-direct {v4, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 144
    invoke-virtual {p1, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bmi;->bBP:Z

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 165
    :cond_2
    return-void

    .line 142
    :cond_3
    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    move-object v1, v0

    goto :goto_0

    .line 147
    :cond_5
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bmi;->bBP:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x421

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "arg error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1

    .line 156
    :catch_1
    move-exception v0

    .line 157
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x422

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "security error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1

    .line 159
    :catch_2
    move-exception v0

    .line 160
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x423

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unsupported operation error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1

    .line 162
    :catch_3
    move-exception v0

    .line 163
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x420

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cT()Ljava/lang/String;
    .locals 5

    .prologue
    .line 610
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get redirect url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getContentType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get content type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static k(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    const/16 v5, -0x38

    .line 460
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 461
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 462
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 465
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 466
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get Bytes from inputStream when read buffer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1

    .line 472
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 474
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 475
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    return-object v1

    .line 478
    :catch_1
    move-exception v0

    .line 479
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get Bytes from inputStream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final P([B)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    .line 249
    return-void
.end method

.method public final a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    const/16 v2, 0xce

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    .line 398
    :cond_1
    const/16 v0, -0xfa0

    .line 413
    :goto_1
    return v0

    :cond_2
    move v1, v0

    .line 396
    goto :goto_0

    .line 403
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 404
    invoke-static {v1}, Lcom/kingroot/kinguser/bmi;->k(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 411
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0xfa2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get response exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final cS()I
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 268
    .line 271
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 276
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    const-string v0, "GET"

    iget-object v1, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/kingx/cloudsdk/bc; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    const/16 v1, -0xbb8

    .line 280
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    .line 298
    const-string v0, "HttpConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mResponseCode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    const/16 v3, 0x12d

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    const/16 v3, 0x131

    if-gt v0, v3, :cond_5

    .line 301
    iget-byte v0, p0, Lcom/kingroot/kinguser/bmi;->bBR:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/bmi;->bBR:B

    if-ge v0, v6, :cond_9

    .line 302
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmi;->cT()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 304
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/bmi;->a(Ljava/net/URL;B)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bmi;->setRequestMethod(Ljava/lang/String;)V

    .line 306
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBO:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bmi;->a(Ljava/util/Hashtable;)V

    .line 310
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bmi;->cS()I

    move-result v0

    .line 382
    :goto_2
    return v0

    .line 282
    :cond_2
    const/16 v1, -0x7d0

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 291
    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 292
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 293
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/kingx/cloudsdk/bc; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    goto/16 :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    :goto_3
    iget-boolean v3, p0, Lcom/kingroot/kinguser/bmi;->bBQ:Z

    if-eqz v3, :cond_8

    .line 332
    iput-boolean v2, p0, Lcom/kingroot/kinguser/bmi;->bBQ:Z

    .line 333
    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 335
    :try_start_2
    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    if-ne v6, v3, :cond_7

    iget-boolean v3, p0, Lcom/kingroot/kinguser/bmi;->bBP:Z

    if-eqz v3, :cond_7

    .line 336
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/bmi;->a(Ljava/net/URL;B)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bmi;->setRequestMethod(Ljava/lang/String;)V

    .line 345
    const-string v0, "POST"

    iget-object v1, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBO:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bmi;->a(Ljava/util/Hashtable;)V

    goto/16 :goto_0

    .line 312
    :cond_5
    :try_start_3
    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    if-ne v0, v7, :cond_9

    .line 314
    invoke-direct {p0}, Lcom/kingroot/kinguser/bmi;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    if-ne v6, v3, :cond_9

    if-eqz v0, :cond_9

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.wap.wml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    .line 317
    iget-byte v0, p0, Lcom/kingroot/kinguser/bmi;->bBS:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/bmi;->bBS:B

    if-gtz v0, :cond_9

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 320
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/bmi;->a(Ljava/net/URL;B)V

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bmi;->setRequestMethod(Ljava/lang/String;)V

    .line 322
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    if-eqz v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBM:[B

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBO:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bmi;->a(Ljava/util/Hashtable;)V

    .line 326
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bmi;->cS()I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lcom/kingx/cloudsdk/bc; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result v0

    goto/16 :goto_2

    .line 337
    :cond_7
    :try_start_4
    iget-object v3, p0, Lcom/kingroot/kinguser/bmi;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    if-eq v6, v3, :cond_3

    iget-boolean v3, p0, Lcom/kingroot/kinguser/bmi;->bBP:Z

    if-nez v3, :cond_3

    .line 338
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/bmi;->a(Ljava/net/URL;B)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 341
    :catch_1
    move-exception v2

    add-int/lit8 v1, v1, -0x35

    .line 342
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "malformed url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/bmi;->bAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 351
    :cond_8
    add-int/lit8 v1, v1, -0x3e

    .line 352
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest UnknownHostException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 353
    :catch_2
    move-exception v0

    move v1, v2

    .line 354
    :goto_5
    add-int/lit8 v1, v1, -0x3c

    .line 355
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest IllegalAccessError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 356
    :catch_3
    move-exception v0

    move v1, v2

    .line 357
    :goto_6
    add-int/lit8 v1, v1, -0x3d

    .line 358
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest IllegalStateException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 359
    :catch_4
    move-exception v0

    move v1, v2

    .line 360
    :goto_7
    add-int/lit8 v1, v1, -0x33

    .line 361
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest ProtocolException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 362
    :catch_5
    move-exception v0

    move v1, v2

    .line 363
    :goto_8
    add-int/lit8 v1, v1, -0x33

    .line 364
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest ClientProtocolException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 365
    :catch_6
    move-exception v0

    move v1, v2

    .line 366
    :goto_9
    add-int/lit8 v1, v1, -0x36

    .line 367
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest SocketException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 368
    :catch_7
    move-exception v0

    move v1, v2

    .line 369
    :goto_a
    add-int/lit8 v1, v1, -0x37

    .line 370
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest SocketTimeoutException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 371
    :catch_8
    move-exception v0

    move v1, v2

    .line 372
    :goto_b
    add-int/lit8 v1, v1, -0x38

    .line 373
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest NetWorkException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/bc;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 374
    :catch_9
    move-exception v0

    move v1, v2

    .line 375
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    new-instance v2, Lcom/kingx/cloudsdk/bc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v2

    .line 378
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    if-eq v0, v7, :cond_a

    .line 379
    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    add-int/2addr v0, v1

    .line 380
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response code is unnormal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1

    .line 382
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/bmi;->bBN:I

    goto/16 :goto_2

    .line 374
    :catch_a
    move-exception v0

    goto :goto_c

    .line 371
    :catch_b
    move-exception v0

    goto :goto_b

    .line 368
    :catch_c
    move-exception v0

    goto/16 :goto_a

    .line 365
    :catch_d
    move-exception v0

    goto/16 :goto_9

    .line 362
    :catch_e
    move-exception v0

    goto/16 :goto_8

    .line 359
    :catch_f
    move-exception v0

    goto/16 :goto_7

    .line 356
    :catch_10
    move-exception v0

    goto/16 :goto_6

    .line 353
    :catch_11
    move-exception v0

    goto/16 :goto_5

    .line 330
    :catch_12
    move-exception v0

    move v1, v2

    goto/16 :goto_3
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    .line 530
    :cond_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 526
    const-string v1, "HttpConnection"

    const-string v2, "HttpConnection.close() throw e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getDate()J
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    .line 671
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBL:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    new-instance v1, Lcom/kingx/cloudsdk/bc;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get inputStream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingx/cloudsdk/bc;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    iput-object p1, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    .line 226
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "POST"

    iput-object v0, p0, Lcom/kingroot/kinguser/bmi;->bBK:Ljava/lang/String;

    goto :goto_0
.end method
