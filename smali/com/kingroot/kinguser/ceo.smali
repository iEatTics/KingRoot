.class public Lcom/kingroot/kinguser/ceo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ceo$a;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final bYp:I

.field private final bYq:I

.field private bYr:Ljava/lang/String;

.field private bYs:Ljava/net/HttpURLConnection;

.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private bYu:Lcom/kingroot/kinguser/cfu;

.field private bYv:Ljava/lang/String;

.field private bYw:I

.field private bYx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "HttpNetwork"

    sput-object v0, Lcom/kingroot/kinguser/ceo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cfu;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/kingroot/kinguser/ceo;->bYp:I

    .line 55
    iput v0, p0, Lcom/kingroot/kinguser/ceo;->bYq:I

    .line 71
    const-string v0, "POST"

    iput-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYr:Ljava/lang/String;

    .line 76
    iput v1, p0, Lcom/kingroot/kinguser/ceo;->bYw:I

    .line 77
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ceo;->bYx:Z

    .line 80
    iput-object p2, p0, Lcom/kingroot/kinguser/ceo;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 81
    iput-object p3, p0, Lcom/kingroot/kinguser/ceo;->bYu:Lcom/kingroot/kinguser/cfu;

    .line 82
    iput-boolean p4, p0, Lcom/kingroot/kinguser/ceo;->bYx:Z

    .line 83
    return-void
.end method

.method private a([BLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    const v0, -0x29810

    .line 270
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 271
    const/16 v0, -0x2710

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    const-string v1, "GET"

    iget-object v2, p0, Lcom/kingroot/kinguser/ceo;->bYr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Content-length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 287
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 288
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 289
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 293
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 294
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ceo;->la(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/kingroot/kinguser/ceo;->lb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYv:Ljava/lang/String;

    .line 297
    iget v0, p0, Lcom/kingroot/kinguser/ceo;->bYw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ceo;->bYw:I

    .line 299
    const v0, -0xea60

    goto :goto_0

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/ceo;->akY()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/cgp;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    .line 311
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Server"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    const-string v2, "QBServer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ceo;->g(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 325
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    const v0, -0x9c40

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v0

    const v0, -0x11170

    goto/16 :goto_0

    .line 339
    :catch_2
    move-exception v0

    const v0, -0x13880

    goto/16 :goto_0

    .line 342
    :catch_3
    move-exception v0

    const v0, -0x15f90

    goto/16 :goto_0

    .line 345
    :catch_4
    move-exception v0

    const v0, -0x186a0

    goto/16 :goto_0

    .line 348
    :catch_5
    move-exception v0

    const v0, -0x1adb0

    goto/16 :goto_0

    .line 349
    :catch_6
    move-exception v0

    .line 351
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x7a120

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cen;->X(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    .line 352
    :catch_7
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x668a0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cen;->X(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    .line 355
    :catch_8
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6b6c0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cen;->X(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto/16 :goto_0

    .line 360
    :catch_9
    move-exception v0

    const v0, -0x1fbd0

    goto/16 :goto_0

    .line 363
    :catch_a
    move-exception v0

    const v0, -0x222e0

    goto/16 :goto_0

    .line 366
    :catch_b
    move-exception v0

    const v0, -0x249f0

    goto/16 :goto_0

    .line 367
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private aiP()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 414
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private akY()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYv:Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ceo;->bYw:I

    .line 442
    return-void
.end method

.method private g(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    .line 383
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 386
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 388
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 389
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    :try_start_1
    new-instance v2, Ltmsdk/common/exception/NetWorkException;

    const/16 v3, -0x38

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get Bytes from inputStream when read buffer: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ltmsdk/common/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :catchall_0
    move-exception v0

    .line 397
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    :goto_1
    throw v0

    .line 391
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 397
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 403
    :goto_2
    return-object v0

    .line 402
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private la(I)Z
    .locals 1

    .prologue
    .line 428
    const/16 v0, 0x12d

    if-lt p1, v0, :cond_0

    const/16 v0, 0x131

    if-gt p1, v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nM(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 91
    iget v0, p0, Lcom/kingroot/kinguser/ceo;->bYw:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/ceo;->akY()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->anb()Lshark/a;

    move-result-object v2

    .line 117
    sget-object v3, Lshark/a;->bXc:Lshark/a;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-ne v3, v2, :cond_2

    .line 119
    const v0, -0x35b60

    .line 168
    :goto_1
    return v0

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/kingroot/kinguser/ceo;->bYv:Ljava/lang/String;

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 111
    const v0, -0x7c830

    goto :goto_1

    .line 122
    :cond_2
    :try_start_2
    sget-object v3, Lshark/a;->bXe:Lshark/a;

    if-ne v3, v2, :cond_4

    .line 123
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {}, Lcom/kingroot/kinguser/cgr;->aip()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/kingroot/kinguser/cgr;->aiq()I

    move-result v5

    invoke-static {v4, v5}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 124
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    .line 132
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/cgu;->qb()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_3

    .line 133
    const-string v0, "http.keepAlive"

    const-string v2, "false"

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 142
    const-string v0, "GET"

    iget-object v2, p0, Lcom/kingroot/kinguser/ceo;->bYr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 166
    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 154
    :catch_1
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 156
    const v0, -0x7ef40

    .line 166
    goto/16 :goto_1

    .line 145
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/ceo;->bYs:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 157
    :catch_2
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 159
    const v0, -0x3a980

    .line 166
    goto/16 :goto_1

    .line 160
    :catch_3
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 162
    const v0, -0x6b6c0

    .line 166
    goto/16 :goto_1

    .line 163
    :catch_4
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    const v0, -0x222e0

    goto/16 :goto_1
.end method


# virtual methods
.method declared-synchronized a(Lcom/kingroot/kinguser/cff$d;[BLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/cff$d;",
            "[B",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const v8, -0xea60

    const v2, -0x35b60

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 177
    monitor-enter p0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 178
    :cond_0
    const/16 v0, -0xa

    .line 259
    :goto_0
    monitor-exit p0

    return v0

    .line 183
    :cond_1
    :try_start_0
    iget v1, p1, Lcom/kingroot/kinguser/cff$d;->caE:I

    const/16 v4, 0x800

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/kingroot/kinguser/ceo;->bYx:Z

    if-nez v1, :cond_2

    move v4, v0

    .line 184
    :goto_1
    const/4 v1, 0x3

    .line 185
    if-eqz v4, :cond_e

    .line 189
    :goto_2
    const/4 v1, -0x1

    .line 190
    :goto_3
    if-ge v3, v0, :cond_d

    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->anb()Lshark/a;

    move-result-object v1

    .line 194
    sget-object v5, Lshark/a;->bXc:Lshark/a;

    if-ne v5, v1, :cond_3

    move v0, v2

    .line 196
    goto :goto_0

    :cond_2
    move v4, v3

    .line 183
    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {p1}, Lcom/kingroot/kinguser/cff$d;->alO()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    const/16 v0, -0x11

    goto :goto_0

    .line 206
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/cej;->akX()Z

    move-result v1

    .line 207
    if-eqz v1, :cond_5

    .line 208
    const/4 v0, -0x7

    goto :goto_0

    .line 211
    :cond_5
    if-eqz v4, :cond_9

    .line 213
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-static {v1}, Lcom/kingroot/kinguser/ces;->a(Lcom/kingroot/kinguser/ceu;)Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 217
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    :cond_7
    :goto_4
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ceo;->nM(Ljava/lang/String;)I

    move-result v1

    .line 224
    if-nez v1, :cond_8

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/kingroot/kinguser/cff$d;->caT:Z

    .line 228
    invoke-direct {p0, p2, p3}, Lcom/kingroot/kinguser/ceo;->a([BLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    .line 231
    :cond_8
    invoke-direct {p0}, Lcom/kingroot/kinguser/ceo;->aiP()Z

    .line 233
    if-eqz v1, :cond_d

    if-eq v1, v2, :cond_d

    .line 235
    if-eq v1, v8, :cond_a

    const-string v5, "http send"

    invoke-static {v5}, Lcom/kingroot/kinguser/cfd;->nS(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 238
    const v0, -0x27100

    .line 240
    goto :goto_0

    .line 220
    :cond_9
    iget-object v1, p0, Lcom/kingroot/kinguser/ceo;->bYu:Lcom/kingroot/kinguser/cfu;

    invoke-interface {v1}, Lcom/kingroot/kinguser/cfu;->ali()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 243
    :cond_a
    if-nez v4, :cond_b

    if-eq v1, v8, :cond_b

    .line 244
    iget-object v5, p0, Lcom/kingroot/kinguser/ceo;->bYu:Lcom/kingroot/kinguser/cfu;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/kingroot/kinguser/cfu;->eQ(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_b
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_c

    .line 250
    const-wide/16 v6, 0x12c

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v5

    goto :goto_5

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_d
    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method
