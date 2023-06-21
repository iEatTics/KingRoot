.class public Lcom/kingroot/kinguser/fx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private p:I

.field private qe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/fx;->qe:Ljava/util/Map;

    return-void
.end method

.method public static a([BZ)Lcom/kingroot/kinguser/fx;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 63
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gt v0, v4, :cond_2

    :cond_0
    move-object v0, v1

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :cond_2
    if-eqz p1, :cond_3

    .line 70
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    .line 72
    array-length v2, v0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 78
    const-string v2, "SDK\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_4
    invoke-static {p0, v4}, Lcom/kingroot/kinguser/fx;->a([BI)[B

    move-result-object v0

    .line 84
    if-nez v0, :cond_5

    move-object v0, v1

    .line 85
    goto :goto_0

    .line 88
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 90
    invoke-static {v1}, Lcom/kingroot/kinguser/fx;->ae(Ljava/lang/String;)Lcom/kingroot/kinguser/fx;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    array-length v1, p0

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/kingroot/kinguser/fx;->p:I

    goto :goto_0
.end method

.method private static a([BI)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 132
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 135
    if-lez v2, :cond_0

    and-int/lit8 v3, v2, 0x7f

    if-eqz v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    shr-int/lit8 v3, v2, 0x7

    .line 144
    :try_start_0
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDAt2+Tj+8Z+jIb1UpZzGaXJSYLsOwHoTRt3nsDRiEDkOzexT3t6C+o6giXKu/u2NeONZ/gbvyDHc+iiS/8Rfv/Qt0Gk3obnIO5wAOe4+1F7VNY5JHzf97VeOE4UXmpyJjTAVJvEia2q6ywFj+53P4JQpndrLyc/uY3hw7JXiq/QwIDAQAB"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 145
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 146
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 147
    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 148
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 150
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :goto_1
    if-ge v1, v3, :cond_3

    .line 152
    const/16 v5, 0x80

    :try_start_1
    invoke-virtual {v4, p0, p1, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 153
    if-nez v5, :cond_2

    .line 154
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 157
    :cond_2
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 159
    add-int/lit16 p1, p1, 0x80

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 165
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 163
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/fr;->b(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 162
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static ad(Ljava/lang/String;)Lcom/kingroot/kinguser/fx;
    .locals 2

    .prologue
    .line 50
    .line 53
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/fx;->af(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/fx;->a([BZ)Lcom/kingroot/kinguser/fx;

    move-result-object v0

    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ae(Ljava/lang/String;)Lcom/kingroot/kinguser/fx;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 98
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 100
    new-instance v1, Lcom/kingroot/kinguser/fx;

    invoke-direct {v1}, Lcom/kingroot/kinguser/fx;-><init>()V

    .line 102
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 103
    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 104
    if-lez v7, :cond_0

    .line 105
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 106
    invoke-direct {v1, v8}, Lcom/kingroot/kinguser/fx;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 116
    :cond_0
    :goto_1
    return-object v0

    .line 109
    :cond_1
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v8, v6}, Lcom/kingroot/kinguser/fx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 116
    goto :goto_1
.end method

.method private static af(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const-wide/16 v6, 0x4

    const/4 v1, 0x0

    .line 172
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 197
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :goto_0
    return-object v1

    .line 179
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 182
    const/4 v3, 0x4

    if-gt v0, v3, :cond_1

    .line 197
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 187
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 197
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 192
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    .line 194
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    .line 195
    array-length v4, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v4, :cond_3

    .line 197
    :goto_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 195
    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method private contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/fx;->qe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/fx;->qe:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/fx;->qe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/kingroot/kinguser/fx;->p:I

    int-to-long v0, v0

    return-wide v0
.end method
