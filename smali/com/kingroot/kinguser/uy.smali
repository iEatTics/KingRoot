.class public final Lcom/kingroot/kinguser/uy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private JA:Z

.field private JB:Z

.field private JC:B

.field private JD:B

.field private Jv:Ljava/lang/String;

.field private Jw:Ljava/net/HttpURLConnection;

.field private Jx:[B

.field private Jy:I

.field private Jz:Ljava/util/Hashtable;
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

.field private mContext:Landroid/content/Context;

.field private ra:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jz:Ljava/util/Hashtable;

    .line 58
    iput-boolean v1, p0, Lcom/kingroot/kinguser/uy;->JA:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/uy;->JB:Z

    .line 60
    iput-byte v1, p0, Lcom/kingroot/kinguser/uy;->JC:B

    .line 61
    iput-byte v1, p0, Lcom/kingroot/kinguser/uy;->JD:B

    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/kingroot/kinguser/uy;)Lcom/kingroot/kinguser/uy;
    .locals 7

    .prologue
    const/4 v0, 0x2

    .line 110
    const-class v2, Lcom/kingroot/kinguser/uy;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    .line 111
    new-instance v3, Lcom/kingroot/kinguser/uy;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/uy;->lc()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/kingroot/kinguser/uy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    const/4 v4, -0x1

    if-ne v4, v1, :cond_0

    .line 114
    const/16 v0, -0x41c

    .line 115
    new-instance v1, Lcom/kingroot/kinguser/va;

    const-string v3, "no connection!"

    invoke-direct {v1, v0, v3}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 119
    :cond_0
    :try_start_1
    iget-boolean v4, p1, Lcom/kingroot/kinguser/uy;->JA:Z

    if-eqz v4, :cond_1

    if-eq v1, v0, :cond_1

    .line 124
    :goto_0
    new-instance v1, Ljava/net/URL;

    iget-object v4, v3, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Lcom/kingroot/kinguser/uy;->b(Ljava/net/URL;B)V

    .line 125
    invoke-virtual {p1}, Lcom/kingroot/kinguser/uy;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/uy;->setRequestMethod(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/kingroot/kinguser/uy;->kY()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/uy;->z([B)V

    .line 127
    invoke-direct {p1}, Lcom/kingroot/kinguser/uy;->ld()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/uy;->c(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    monitor-exit v2

    return-object v3

    .line 121
    :cond_1
    :try_start_2
    iget-boolean v4, p1, Lcom/kingroot/kinguser/uy;->JA:Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    if-ne v1, v0, :cond_2

    .line 122
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const/16 v1, -0x41d

    .line 130
    :try_start_3
    new-instance v4, Lcom/kingroot/kinguser/va;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalide url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

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

    invoke-direct {v4, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/net/URL;B)V
    .locals 5

    .prologue
    .line 137
    .line 139
    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    .line 140
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 141
    :try_start_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/vb;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingroot/kinguser/vb;->Q(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 142
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/uy;->JA:Z

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/uy;->JA:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const/16 v1, -0x421

    .line 153
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 154
    :catch_1
    move-exception v0

    .line 155
    const/16 v1, -0x422

    .line 156
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "security error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 157
    :catch_2
    move-exception v0

    .line 158
    const/16 v1, -0x423

    .line 159
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported operation error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 160
    :catch_3
    move-exception v0

    .line 161
    const/16 v1, -0x420

    .line 162
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private static g(Ljava/io/InputStream;)[B
    .locals 7

    .prologue
    .line 421
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 423
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 424
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 428
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    .line 432
    :try_start_1
    new-instance v3, Lcom/kingroot/kinguser/va;

    const/16 v4, -0x38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Bytes from inputStream when read buffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 433
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 436
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 430
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 435
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 436
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 439
    return-object v0
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

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

.method public static declared-synchronized k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;
    .locals 6

    .prologue
    .line 84
    const-class v1, Lcom/kingroot/kinguser/uy;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 86
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 87
    const/16 v0, -0x41c

    .line 88
    new-instance v2, Lcom/kingroot/kinguser/va;

    const-string v3, "no connecition!"

    invoke-direct {v2, v0, v3}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 91
    :cond_0
    :try_start_1
    new-instance v2, Lcom/kingroot/kinguser/uy;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/uy;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    new-instance v3, Ljava/net/URL;

    iget-object v4, v2, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/kingroot/kinguser/uy;->b(Ljava/net/URL;B)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    monitor-exit v1

    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const/16 v2, -0x41d

    .line 97
    :try_start_3
    new-instance v3, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v3, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private ld()Ljava/util/Hashtable;
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
    .line 609
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jz:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public b(ZLjava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    .line 393
    const/16 v0, -0xfa0

    .line 394
    iget-object v1, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/uy;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 401
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/uy;->g(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    const/4 v0, 0x0

    .line 408
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    const/16 v1, -0xfa2

    .line 405
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public c(Ljava/util/Hashtable;)V
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
    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/uy;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    .line 483
    :cond_0
    return-void
.end method

.method public d(Ljava/util/Hashtable;)V
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
    .line 207
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 5

    .prologue
    .line 541
    const-wide/16 v0, -0x1

    .line 542
    const-string v2, "content-length"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/uy;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    if-eqz v2, :cond_0

    .line 545
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 551
    :cond_0
    return-wide v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    new-instance v1, Lcom/kingroot/kinguser/va;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    new-instance v1, Lcom/kingroot/kinguser/va;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 566
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    .line 493
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    new-instance v1, Lcom/kingroot/kinguser/va;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get header field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    new-instance v1, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    return v0
.end method

.method public kY()[B
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    return-object v0
.end method

.method public kZ()I
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 267
    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 275
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v0, "GET"

    iget-object v1, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/kingroot/kinguser/va; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    const/16 v1, -0xbb8

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 296
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    .line 297
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    const/16 v3, 0x12d

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    const/16 v3, 0x131

    if-gt v0, v3, :cond_5

    .line 299
    iget-byte v0, p0, Lcom/kingroot/kinguser/uy;->JC:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/uy;->JC:B

    if-ge v0, v7, :cond_9

    .line 300
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uy;->lb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/uy;->b(Ljava/net/URL;B)V

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->setRequestMethod(Ljava/lang/String;)V

    .line 304
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->z([B)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jz:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->d(Ljava/util/Hashtable;)V

    .line 308
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uy;->kZ()I

    move-result v0

    .line 379
    :goto_1
    return v0

    .line 281
    :cond_2
    const/16 v1, -0x7d0

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 290
    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 291
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 292
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/kingroot/kinguser/va; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    :goto_2
    iget-boolean v3, p0, Lcom/kingroot/kinguser/uy;->JB:Z

    if-eqz v3, :cond_8

    .line 329
    iput-boolean v2, p0, Lcom/kingroot/kinguser/uy;->JB:Z

    .line 330
    iget-object v2, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 332
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v2

    if-ne v7, v2, :cond_7

    iget-boolean v2, p0, Lcom/kingroot/kinguser/uy;->JA:Z

    if-eqz v2, :cond_7

    .line 333
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/uy;->b(Ljava/net/URL;B)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 341
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->setRequestMethod(Ljava/lang/String;)V

    .line 342
    const-string v0, "POST"

    iget-object v1, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->z([B)V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jz:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->d(Ljava/util/Hashtable;)V

    .line 346
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uy;->kZ()I

    move-result v0

    goto/16 :goto_1

    .line 310
    :cond_5
    :try_start_3
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    if-ne v0, v8, :cond_9

    .line 312
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uy;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v3

    if-ne v7, v3, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.wap.wml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_9

    .line 314
    iget-byte v0, p0, Lcom/kingroot/kinguser/uy;->JD:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/uy;->JD:B

    if-ge v0, v6, :cond_9

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 317
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/uy;->b(Ljava/net/URL;B)V

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->setRequestMethod(Ljava/lang/String;)V

    .line 319
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    if-eqz v0, :cond_6

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->z([B)V

    .line 322
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jz:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/uy;->d(Ljava/util/Hashtable;)V

    .line 323
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uy;->kZ()I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lcom/kingroot/kinguser/va; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result v0

    goto/16 :goto_1

    .line 334
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/kingroot/kinguser/uy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v2

    if-eq v7, v2, :cond_3

    iget-boolean v2, p0, Lcom/kingroot/kinguser/uy;->JA:Z

    if-nez v2, :cond_3

    .line 335
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/uy;->b(Ljava/net/URL;B)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 337
    :catch_1
    move-exception v2

    .line 338
    add-int/lit8 v1, v1, -0x35

    .line 339
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 348
    :cond_8
    add-int/lit8 v1, v1, -0x3e

    .line 349
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 350
    :catch_2
    move-exception v0

    move v1, v2

    .line 351
    :goto_4
    add-int/lit8 v1, v1, -0x3c

    .line 352
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 353
    :catch_3
    move-exception v0

    move v1, v2

    .line 354
    :goto_5
    add-int/lit8 v1, v1, -0x3d

    .line 355
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 356
    :catch_4
    move-exception v0

    move v1, v2

    .line 357
    :goto_6
    add-int/lit8 v1, v1, -0x33

    .line 358
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 359
    :catch_5
    move-exception v0

    move v1, v2

    .line 360
    :goto_7
    add-int/lit8 v1, v1, -0x33

    .line 361
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest ClientProtocolException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 362
    :catch_6
    move-exception v0

    move v1, v2

    .line 363
    :goto_8
    add-int/lit8 v1, v1, -0x36

    .line 364
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 365
    :catch_7
    move-exception v0

    move v1, v2

    .line 366
    :goto_9
    add-int/lit8 v1, v1, -0x37

    .line 367
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 368
    :catch_8
    move-exception v0

    move v1, v2

    .line 369
    :goto_a
    add-int/lit8 v1, v1, -0x38

    .line 370
    new-instance v2, Lcom/kingroot/kinguser/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest NetWorkException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kingroot/kinguser/va;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 371
    :catch_9
    move-exception v0

    move v1, v2

    .line 372
    :goto_b
    new-instance v2, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v2

    .line 374
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    if-eq v0, v8, :cond_a

    .line 376
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    add-int/2addr v0, v1

    .line 377
    new-instance v1, Lcom/kingroot/kinguser/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code is unnormal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1

    .line 379
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/uy;->Jy:I

    goto/16 :goto_1

    .line 371
    :catch_a
    move-exception v0

    goto :goto_b

    .line 368
    :catch_b
    move-exception v0

    goto :goto_a

    .line 365
    :catch_c
    move-exception v0

    goto/16 :goto_9

    .line 362
    :catch_d
    move-exception v0

    goto/16 :goto_8

    .line 359
    :catch_e
    move-exception v0

    goto/16 :goto_7

    .line 356
    :catch_f
    move-exception v0

    goto/16 :goto_6

    .line 353
    :catch_10
    move-exception v0

    goto/16 :goto_5

    .line 350
    :catch_11
    move-exception v0

    goto/16 :goto_4

    .line 327
    :catch_12
    move-exception v0

    move v1, v2

    goto/16 :goto_2
.end method

.method public la()J
    .locals 5

    .prologue
    .line 520
    const-wide/16 v0, -0x1

    .line 521
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/uy;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    if-eqz v2, :cond_0

    .line 524
    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 525
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 531
    :cond_0
    return-wide v0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    new-instance v1, Lcom/kingroot/kinguser/va;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get breakpoint total size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public lb()Ljava/lang/String;
    .locals 5

    .prologue
    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    new-instance v1, Lcom/kingroot/kinguser/va;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get redirect url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 581
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public lc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->ra:Ljava/lang/String;

    return-object v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    .line 225
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "POST"

    iput-object v0, p0, Lcom/kingroot/kinguser/uy;->Jv:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jw:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/uy;->Jz:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public z([B)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/kingroot/kinguser/uy;->Jx:[B

    .line 248
    return-void
.end method
