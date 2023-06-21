.class public final Lcom/kingroot/kinguser/ka;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private dr:I

.field private mContext:Landroid/content/Context;

.field private ra:Ljava/lang/String;

.field private tA:Z

.field private tB:Z

.field private tC:B

.field private tD:B

.field private tx:Ljava/net/HttpURLConnection;

.field private ty:[B

.field private tz:Ljava/util/Hashtable;
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


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->tz:Ljava/util/Hashtable;

    .line 53
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ka;->tA:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ka;->tB:Z

    .line 55
    iput-byte v1, p0, Lcom/kingroot/kinguser/ka;->tC:B

    .line 56
    iput-byte v1, p0, Lcom/kingroot/kinguser/ka;->tD:B

    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/kingroot/kinguser/ka;)Lcom/kingroot/kinguser/ka;
    .locals 7

    .prologue
    const/4 v0, 0x2

    .line 103
    const-class v2, Lcom/kingroot/kinguser/ka;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v1

    .line 104
    new-instance v3, Lcom/kingroot/kinguser/ka;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ka;->cQ()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/kingroot/kinguser/ka;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    const/4 v4, -0x1

    if-ne v4, v1, :cond_0

    .line 107
    const/16 v0, -0x41c

    .line 108
    new-instance v1, Lcom/king/uranus/ar;

    const-string v3, "no connection!"

    invoke-direct {v1, v0, v3}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 112
    :cond_0
    :try_start_1
    iget-boolean v4, p1, Lcom/kingroot/kinguser/ka;->tA:Z

    if-eqz v4, :cond_1

    if-eq v1, v0, :cond_1

    .line 117
    :goto_0
    new-instance v1, Ljava/net/URL;

    iget-object v4, v3, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Lcom/kingroot/kinguser/ka;->a(Ljava/net/URL;B)V

    .line 118
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ka;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ka;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ka;->cO()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ka;->o([B)V

    .line 120
    invoke-direct {p1}, Lcom/kingroot/kinguser/ka;->cR()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ka;->a(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit v2

    return-object v3

    .line 114
    :cond_1
    :try_start_2
    iget-boolean v4, p1, Lcom/kingroot/kinguser/ka;->tA:Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    if-ne v1, v0, :cond_2

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const/16 v1, -0x41d

    .line 123
    :try_start_3
    new-instance v4, Lcom/king/uranus/ar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalide url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/net/URL;B)V
    .locals 5

    .prologue
    .line 130
    .line 132
    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    .line 133
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 134
    :try_start_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/kb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingroot/kinguser/kb;->m(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 135
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ka;->tA:Z

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 159
    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ka;->tA:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const/16 v1, -0x421

    .line 146
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ae: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 147
    :catch_1
    move-exception v0

    .line 148
    const/16 v1, -0x422

    .line 149
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "se: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 150
    :catch_2
    move-exception v0

    .line 151
    const/16 v1, -0x423

    .line 152
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 153
    :catch_3
    move-exception v0

    .line 154
    const/16 v1, -0x420

    .line 155
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "io : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private cR()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tz:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static d(Ljava/io/InputStream;)[B
    .locals 6

    .prologue
    const/16 v5, -0x38

    .line 414
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 416
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 419
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 420
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Lcom/king/uranus/ar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Bytes from inputStream when read buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1

    .line 426
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 428
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 430
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    return-object v1

    .line 432
    :catch_1
    move-exception v0

    .line 433
    new-instance v1, Lcom/king/uranus/ar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Bytes from inputStream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/ka;
    .locals 6

    .prologue
    .line 78
    const-class v1, Lcom/kingroot/kinguser/ka;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/ka;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/ka;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v2

    .line 81
    const/4 v3, -0x1

    if-ne v3, v2, :cond_0

    .line 82
    const/16 v0, -0x41c

    .line 83
    new-instance v2, Lcom/king/uranus/ar;

    const-string v3, "no connecition!"

    invoke-direct {v2, v0, v3}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 87
    :cond_0
    :try_start_1
    new-instance v3, Ljava/net/URL;

    iget-object v4, v0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v2}, Lcom/kingroot/kinguser/ka;->a(Ljava/net/URL;B)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit v1

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const/16 v2, -0x41d

    .line 90
    :try_start_2
    new-instance v3, Lcom/king/uranus/ar;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "malformed url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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

    invoke-direct {v3, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public I()I
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 260
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 268
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    const-string v0, "GET"

    iget-object v1, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/king/uranus/ar; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const/16 v1, -0xbb8

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    .line 290
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    const/16 v3, 0x12d

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    const/16 v3, 0x131

    if-gt v0, v3, :cond_5

    .line 292
    iget-byte v0, p0, Lcom/kingroot/kinguser/ka;->tC:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/ka;->tC:B

    if-ge v0, v7, :cond_9

    .line 293
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ka;->cP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/ka;->a(Ljava/net/URL;B)V

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->setRequestMethod(Ljava/lang/String;)V

    .line 297
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->o([B)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tz:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->b(Ljava/util/Hashtable;)V

    .line 301
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ka;->I()I

    move-result v0

    .line 372
    :goto_1
    return v0

    .line 274
    :cond_2
    const/16 v1, -0x7d0

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 283
    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 284
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 285
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/king/uranus/ar; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    :goto_2
    iget-boolean v3, p0, Lcom/kingroot/kinguser/ka;->tB:Z

    if-eqz v3, :cond_8

    .line 322
    iput-boolean v2, p0, Lcom/kingroot/kinguser/ka;->tB:Z

    .line 323
    iget-object v2, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 325
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v2

    if-ne v7, v2, :cond_7

    iget-boolean v2, p0, Lcom/kingroot/kinguser/ka;->tA:Z

    if-eqz v2, :cond_7

    .line 326
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/ka;->a(Ljava/net/URL;B)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 334
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->setRequestMethod(Ljava/lang/String;)V

    .line 335
    const-string v0, "POST"

    iget-object v1, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->o([B)V

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tz:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->b(Ljava/util/Hashtable;)V

    .line 339
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ka;->I()I

    move-result v0

    goto/16 :goto_1

    .line 303
    :cond_5
    :try_start_3
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    if-ne v0, v8, :cond_9

    .line 305
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ka;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v3

    if-ne v7, v3, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.wap.wml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 307
    iget-byte v0, p0, Lcom/kingroot/kinguser/ka;->tD:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/ka;->tD:B

    if-ge v0, v6, :cond_9

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 310
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/ka;->a(Ljava/net/URL;B)V

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->setRequestMethod(Ljava/lang/String;)V

    .line 312
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->o([B)V

    .line 315
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tz:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ka;->b(Ljava/util/Hashtable;)V

    .line 316
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ka;->I()I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/king/uranus/ar; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-result v0

    goto/16 :goto_1

    .line 327
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/kingroot/kinguser/ka;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v2

    if-eq v7, v2, :cond_3

    iget-boolean v2, p0, Lcom/kingroot/kinguser/ka;->tA:Z

    if-nez v2, :cond_3

    .line 328
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/ka;->a(Ljava/net/URL;B)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 330
    :catch_1
    move-exception v2

    .line 331
    add-int/lit8 v1, v1, -0x35

    .line 332
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

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

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 341
    :cond_8
    add-int/lit8 v1, v1, -0x3e

    .line 342
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest UnknownHostException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 343
    :catch_2
    move-exception v0

    move v1, v2

    .line 344
    :goto_4
    add-int/lit8 v1, v1, -0x3c

    .line 345
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest IllegalAccessError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 346
    :catch_3
    move-exception v0

    move v1, v2

    .line 347
    :goto_5
    add-int/lit8 v1, v1, -0x3d

    .line 348
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 349
    :catch_4
    move-exception v0

    move v1, v2

    .line 350
    :goto_6
    add-int/lit8 v1, v1, -0x33

    .line 351
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest ProtocolException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 355
    :catch_5
    move-exception v0

    move v1, v2

    .line 356
    :goto_7
    add-int/lit8 v1, v1, -0x36

    .line 357
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest SocketException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 358
    :catch_6
    move-exception v0

    move v1, v2

    .line 359
    :goto_8
    add-int/lit8 v1, v1, -0x37

    .line 360
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest SocketTimeoutException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 361
    :catch_7
    move-exception v0

    move v1, v2

    .line 362
    :goto_9
    add-int/lit8 v1, v1, -0x38

    .line 363
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest NetWorkException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/king/uranus/ar;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 364
    :catch_8
    move-exception v0

    move v1, v2

    .line 365
    :goto_a
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 367
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    if-eq v0, v8, :cond_a

    .line 369
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    add-int/2addr v0, v1

    .line 370
    new-instance v1, Lcom/king/uranus/ar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code is unnormal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/ka;->dr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1

    .line 372
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    goto/16 :goto_1

    .line 364
    :catch_9
    move-exception v0

    goto :goto_a

    .line 361
    :catch_a
    move-exception v0

    goto :goto_9

    .line 358
    :catch_b
    move-exception v0

    goto/16 :goto_8

    .line 355
    :catch_c
    move-exception v0

    goto/16 :goto_7

    .line 349
    :catch_d
    move-exception v0

    goto/16 :goto_6

    .line 346
    :catch_e
    move-exception v0

    goto/16 :goto_5

    .line 343
    :catch_f
    move-exception v0

    goto/16 :goto_4

    .line 320
    :catch_10
    move-exception v0

    move v1, v2

    goto/16 :goto_2
.end method

.method public J()J
    .locals 5

    .prologue
    .line 505
    const-wide/16 v0, -0x1

    .line 506
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/ka;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_0

    .line 509
    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 510
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 516
    :cond_0
    return-wide v0

    .line 511
    :catch_0
    move-exception v0

    .line 512
    new-instance v1, Lcom/king/uranus/ar;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get breakpoint total size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    .line 386
    const/16 v0, -0xfa0

    .line 387
    iget-object v1, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/ka;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 393
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 394
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/ka;->d(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 395
    const/4 v0, 0x0

    .line 401
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 396
    :catch_0
    move-exception v0

    .line 397
    const/16 v1, -0xfa2

    .line 398
    new-instance v2, Lcom/king/uranus/ar;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get response exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public a(Ljava/util/Hashtable;)V
    .locals 3
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
    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/ka;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Hashtable;)V
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
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    iget-object v3, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cO()[B
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    return-object v0
.end method

.method public cP()Ljava/lang/String;
    .locals 5

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Lcom/king/uranus/ar;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get redirect url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 566
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public cQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->ra:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    .line 479
    :cond_0
    return-void
.end method

.method public getContentLength()J
    .locals 5

    .prologue
    .line 526
    const-wide/16 v0, -0x1

    .line 527
    const-string v2, "content-length"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/ka;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 528
    if-eqz v2, :cond_0

    .line 530
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 536
    :cond_0
    return-wide v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    new-instance v1, Lcom/king/uranus/ar;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    new-instance v1, Lcom/king/uranus/ar;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 551
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    new-instance v1, Lcom/king/uranus/ar;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get header field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 493
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Lcom/king/uranus/ar;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get inputStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/kingroot/kinguser/ka;->dr:I

    return v0
.end method

.method public o([B)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/ka;->ty:[B

    .line 241
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 217
    iput-object p1, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    .line 218
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "POST"

    iput-object v0, p0, Lcom/kingroot/kinguser/ka;->do:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tx:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/ka;->tz:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
