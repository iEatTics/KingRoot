.class public final Lcom/kingroot/kinguser/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:[B

.field private f:I

.field private h:Z

.field private i:Z

.field private qv:Ljava/net/HttpURLConnection;

.field private qw:Ljava/util/Hashtable;
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

.field private qx:B

.field private qy:B


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->qw:Ljava/util/Hashtable;

    .line 57
    iput-boolean v1, p0, Lcom/kingroot/kinguser/gn;->h:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gn;->i:Z

    .line 59
    iput-byte v1, p0, Lcom/kingroot/kinguser/gn;->qx:B

    .line 60
    iput-byte v1, p0, Lcom/kingroot/kinguser/gn;->qy:B

    .line 70
    iput-object p1, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/kingroot/kinguser/gn;)Lcom/kingroot/kinguser/gn;
    .locals 7

    .prologue
    const/4 v0, 0x2

    .line 109
    const-class v2, Lcom/kingroot/kinguser/gn;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

    move-result v1

    .line 110
    new-instance v3, Lcom/kingroot/kinguser/gn;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/gn;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/kingroot/kinguser/gn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    const/4 v4, -0x1

    if-ne v4, v1, :cond_0

    .line 113
    const/16 v0, -0x41c

    .line 114
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    const-string v3, "no connection!"

    invoke-direct {v1, v0, v3}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 118
    :cond_0
    :try_start_1
    iget-boolean v4, p1, Lcom/kingroot/kinguser/gn;->h:Z

    if-eqz v4, :cond_1

    if-eq v1, v0, :cond_1

    .line 123
    :goto_0
    new-instance v1, Ljava/net/URL;

    iget-object v4, v3, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/net/URL;B)V

    .line 124
    invoke-virtual {p1}, Lcom/kingroot/kinguser/gn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/kingroot/kinguser/gn;->b()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/gn;->a([B)V

    .line 126
    invoke-direct {p1}, Lcom/kingroot/kinguser/gn;->aD()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    monitor-exit v2

    return-object v3

    .line 120
    :cond_1
    :try_start_2
    iget-boolean v4, p1, Lcom/kingroot/kinguser/gn;->h:Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    if-ne v1, v0, :cond_2

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const/16 v1, -0x41d

    .line 129
    :try_start_3
    new-instance v4, Lcom/kingroot/kinguser/bzz;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalide url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v3, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

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

    invoke-direct {v4, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

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
    .line 136
    .line 138
    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    .line 139
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 140
    :try_start_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/gp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/kingroot/kinguser/gp;->m(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 141
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gn;->h:Z

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 165
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gn;->h:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const/16 v1, -0x421

    .line 152
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    const/16 v1, -0x422

    .line 155
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 156
    :catch_2
    move-exception v0

    .line 157
    const/16 v1, -0x423

    .line 158
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 159
    :catch_3
    move-exception v0

    .line 160
    const/16 v1, -0x420

    .line 161
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private aD()Ljava/util/Hashtable;
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
    .line 608
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qw:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/gn;
    .locals 6

    .prologue
    .line 83
    const-class v1, Lcom/kingroot/kinguser/gn;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

    move-result v0

    .line 85
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 86
    const/16 v0, -0x41c

    .line 87
    new-instance v2, Lcom/kingroot/kinguser/bzz;

    const-string v3, "no connecition!"

    invoke-direct {v2, v0, v3}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 90
    :cond_0
    :try_start_1
    new-instance v2, Lcom/kingroot/kinguser/gn;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/gn;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    new-instance v3, Ljava/net/URL;

    iget-object v4, v2, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/net/URL;B)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    monitor-exit v1

    return-object v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const/16 v2, -0x41d

    .line 96
    :try_start_3
    new-instance v3, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v3, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    .line 224
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "GET"

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "POST"

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qw:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
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
    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kingroot/kinguser/gn;->e:[B

    .line 247
    return-void
.end method

.method public aC()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v1, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get header field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
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
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 212
    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    return-object v0
.end method

.method public c()I
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 266
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v1, "Accept"

    const-string v3, "*/*"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 274
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    const-string v0, "GET"

    iget-object v1, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const/16 v1, -0xbb8

    .line 278
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    .line 296
    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    const/16 v3, 0x12d

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    const/16 v3, 0x131

    if-gt v0, v3, :cond_5

    .line 298
    iget-byte v0, p0, Lcom/kingroot/kinguser/gn;->qx:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/gn;->qx:B

    if-ge v0, v7, :cond_9

    .line 299
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gn;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 301
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/gn;->a(Ljava/net/URL;B)V

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;)V

    .line 303
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->a([B)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qw:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->b(Ljava/util/Hashtable;)V

    .line 307
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gn;->c()I

    move-result v0

    .line 375
    :goto_1
    return v0

    .line 280
    :cond_2
    const/16 v1, -0x7d0

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/gn;->e:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 289
    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->e:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 290
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 291
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto/16 :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    :goto_2
    iget-boolean v3, p0, Lcom/kingroot/kinguser/gn;->i:Z

    if-eqz v3, :cond_8

    .line 328
    iput-boolean v2, p0, Lcom/kingroot/kinguser/gn;->i:Z

    .line 329
    iget-object v2, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    :try_start_2
    iget-object v2, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

    move-result v2

    if-ne v7, v2, :cond_7

    iget-boolean v2, p0, Lcom/kingroot/kinguser/gn;->h:Z

    if-eqz v2, :cond_7

    .line 332
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/gn;->a(Ljava/net/URL;B)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;)V

    .line 341
    const-string v0, "POST"

    iget-object v1, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->a([B)V

    .line 344
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qw:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->b(Ljava/util/Hashtable;)V

    .line 345
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gn;->c()I

    move-result v0

    goto/16 :goto_1

    .line 309
    :cond_5
    :try_start_3
    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    if-ne v0, v8, :cond_9

    .line 311
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gn;->i()Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

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

    .line 313
    iget-byte v0, p0, Lcom/kingroot/kinguser/gn;->qy:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/kingroot/kinguser/gn;->qy:B

    if-ge v0, v6, :cond_9

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 316
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/gn;->a(Ljava/net/URL;B)V

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;)V

    .line 318
    const-string v0, "POST"

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->e:[B

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->a([B)V

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qw:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gn;->b(Ljava/util/Hashtable;)V

    .line 322
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gn;->c()I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    move-result v0

    goto/16 :goto_1

    .line 333
    :cond_7
    :try_start_4
    iget-object v2, p0, Lcom/kingroot/kinguser/gn;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/kingroot/kinguser/gp;->l(Landroid/content/Context;)B

    move-result v2

    if-eq v7, v2, :cond_3

    iget-boolean v2, p0, Lcom/kingroot/kinguser/gn;->h:Z

    if-nez v2, :cond_3

    .line 334
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/gn;->a(Ljava/net/URL;B)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 336
    :catch_1
    move-exception v2

    .line 337
    add-int/lit8 v1, v1, -0x35

    .line 338
    new-instance v2, Lcom/kingroot/kinguser/bzz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 347
    :cond_8
    add-int/lit8 v1, v1, -0x3e

    .line 348
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 349
    :catch_2
    move-exception v0

    move v1, v2

    .line 350
    :goto_4
    add-int/lit8 v1, v1, -0x3c

    .line 351
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 352
    :catch_3
    move-exception v0

    move v1, v2

    .line 353
    :goto_5
    add-int/lit8 v1, v1, -0x3d

    .line 354
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 355
    :catch_4
    move-exception v0

    move v1, v2

    .line 356
    :goto_6
    add-int/lit8 v1, v1, -0x33

    .line 357
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 358
    :catch_5
    move-exception v0

    move v1, v2

    .line 359
    :goto_7
    add-int/lit8 v1, v1, -0x36

    .line 360
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 361
    :catch_6
    move-exception v0

    move v1, v2

    .line 362
    :goto_8
    add-int/lit8 v1, v1, -0x37

    .line 363
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 364
    :catch_7
    move-exception v0

    move v1, v2

    .line 365
    :goto_9
    add-int/lit8 v1, v1, -0x38

    .line 366
    new-instance v2, Lcom/kingroot/kinguser/bzz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest NetWorkException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 367
    :catch_8
    move-exception v0

    move v1, v2

    .line 368
    :goto_a
    new-instance v2, Lcom/kingroot/kinguser/bzz;

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

    invoke-direct {v2, v1, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 370
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_a

    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    if-eq v0, v8, :cond_a

    .line 372
    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    add-int/2addr v0, v1

    .line 373
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response code is unnormal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/gn;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1

    .line 375
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    goto/16 :goto_1

    .line 367
    :catch_9
    move-exception v0

    goto :goto_a

    .line 364
    :catch_a
    move-exception v0

    goto :goto_9

    .line 361
    :catch_b
    move-exception v0

    goto/16 :goto_8

    .line 358
    :catch_c
    move-exception v0

    goto/16 :goto_7

    .line 355
    :catch_d
    move-exception v0

    goto/16 :goto_6

    .line 352
    :catch_e
    move-exception v0

    goto/16 :goto_5

    .line 349
    :catch_f
    move-exception v0

    goto/16 :goto_4

    .line 326
    :catch_10
    move-exception v0

    move v1, v2

    goto/16 :goto_2
.end method

.method public e()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/kingroot/kinguser/gn;->f:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    .line 482
    :cond_0
    return-void
.end method

.method public g()J
    .locals 5

    .prologue
    .line 519
    const-wide/16 v0, -0x1

    .line 520
    const-string v2, "Content-Range"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/gn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_0

    .line 523
    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 530
    :cond_0
    return-wide v0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get breakpoint total size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public h()J
    .locals 5

    .prologue
    .line 540
    const-wide/16 v0, -0x1

    .line 541
    const-string v2, "content-length"

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/gn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    if-eqz v2, :cond_0

    .line 544
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 550
    :cond_0
    return-wide v0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 565
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->qv:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    new-instance v1, Lcom/kingroot/kinguser/bzz;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get redirect url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 580
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/kingroot/kinguser/gn;->b:Ljava/lang/String;

    return-object v0
.end method
