.class Lcom/kingroot/kinguser/bdj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ani:Ljava/util/Map;
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

.field private anj:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bdj;->ani:Ljava/util/Map;

    return-void
.end method

.method private W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/bdj;->ani:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/bdj;->ani:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static f([BI)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 109
    if-lez v2, :cond_0

    and-int/lit8 v3, v2, 0x7f

    if-eqz v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :cond_1
    shr-int/lit8 v3, v2, 0x7

    .line 118
    :try_start_0
    const-string v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDAt2+Tj+8Z+jIb1UpZzGaXJSYLsOwHoTRt3nsDRiEDkOzexT3t6C+o6giXKu/u2NeONZ/gbvyDHc+iiS/8Rfv/Qt0Gk3obnIO5wAOe4+1F7VNY5JHzf97VeOE4UXmpyJjTAVJvEia2q6ywFj+53P4JQpndrLyc/uY3hw7JXiq/QwIDAQAB"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 119
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 120
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 121
    const-string v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 122
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 124
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_1
    if-ge v1, v3, :cond_3

    .line 126
    const/16 v5, 0x80

    :try_start_1
    invoke-virtual {v4, p0, p1, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 127
    if-nez v5, :cond_2

    .line 128
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 131
    :cond_2
    :try_start_2
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 133
    add-int/lit16 p1, p1, 0x80

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 139
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 137
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 136
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static fD(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const-wide/16 v6, 0x4

    const/4 v1, 0x0

    .line 146
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 169
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 167
    :goto_0
    return-object v1

    .line 153
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 156
    const/4 v3, 0x4

    if-gt v0, v3, :cond_1

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extraBlockLength <= 4:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v0

    .line 160
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 161
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileLength <= extraBlockLength : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 165
    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    .line 166
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    .line 167
    array-length v4, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v4, :cond_3

    .line 169
    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-object v1, v0

    .line 167
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static kP(Ljava/lang/String;)Lcom/kingroot/kinguser/bdj;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bdj;->fD(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :cond_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 54
    const-string v3, "SDK\u0000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-static {v1, v4}, Lcom/kingroot/kinguser/bdj;->f([BI)[B

    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    .line 63
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/kingroot/kinguser/bdj;->kQ(Ljava/lang/String;)Lcom/kingroot/kinguser/bdj;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/kingroot/kinguser/bdj;->anj:I

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static kQ(Ljava/lang/String;)Lcom/kingroot/kinguser/bdj;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 72
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v1, Lcom/kingroot/kinguser/bdj;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bdj;-><init>()V

    .line 76
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 77
    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 78
    if-lez v7, :cond_0

    .line 79
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-direct {v1, v8}, Lcom/kingroot/kinguser/bdj;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    :cond_0
    :goto_1
    return-object v0

    .line 83
    :cond_1
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v8, v6}, Lcom/kingroot/kinguser/bdj;->W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/bdj;->ani:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method wj()J
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/kingroot/kinguser/bdj;->anj:I

    int-to-long v0, v0

    return-wide v0
.end method
