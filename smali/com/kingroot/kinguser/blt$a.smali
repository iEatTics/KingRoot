.class public Lcom/kingroot/kinguser/blt$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/blt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public bAn:Ljava/lang/String;

.field public bAo:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/blt$a;->bAn:Ljava/lang/String;

    .line 158
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blt$a;->bAo:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public static D(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 215
    .line 219
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 220
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 221
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 223
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 224
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    .line 226
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 227
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 228
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 235
    if-eqz v0, :cond_1

    :goto_2
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    .line 231
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static H(Ljava/lang/String;Z)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 83
    .line 88
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    const/16 v0, 0x10

    :try_start_1
    new-array v0, v0, [B

    .line 91
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 92
    invoke-static {v0}, Lcom/kingroot/kinguser/blt$a;->b([B)I

    move-result v0

    .line 93
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 94
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    :goto_0
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    .line 96
    :cond_0
    shl-int/lit8 v0, v0, 0x2

    int-to-long v2, v0

    :try_start_2
    invoke-virtual {v4, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    .line 98
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 100
    const/16 v0, 0x400

    :try_start_4
    new-array v0, v0, [B

    .line 102
    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_1

    .line 103
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 111
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 107
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 108
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 109
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 116
    if-eqz v0, :cond_2

    :goto_2
    return-object v0

    :cond_2
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    .line 111
    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_0

    :catchall_3
    move-exception v0

    move-object v3, v4

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_0
.end method

.method public static b([B)I
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 384
    array-length v1, p0

    if-ge v1, v9, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    const/4 v1, 0x4

    new-array v3, v1, [I

    move v1, v2

    .line 389
    :goto_1
    if-ge v1, v9, :cond_2

    .line 390
    ushr-int/lit8 v4, v1, 0x2

    aget v5, v3, v4

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v7, v1, 0x3

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 393
    :cond_2
    aget v1, v3, v2

    const v2, 0x10021a7a

    if-ne v1, v2, :cond_0

    .line 396
    const/4 v1, 0x1

    aget v1, v3, v1

    const/16 v2, 0xaf

    if-ne v1, v2, :cond_0

    .line 399
    aget v1, v3, v8

    if-ltz v1, :cond_0

    .line 402
    aget v0, v3, v8

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 497
    const-string v0, ""

    .line 498
    const/4 v3, 0x0

    .line 500
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 501
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    const/16 v3, 0x2000

    :try_start_1
    new-array v3, v3, [B

    .line 504
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 505
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 513
    :goto_2
    return-object v0

    .line 507
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/blt$a;->c([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 511
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 508
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method public static c([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 548
    if-nez p0, :cond_0

    .line 549
    const-string v0, ""

    .line 556
    :goto_0
    return-object v0

    .line 551
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 552
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 553
    aget-byte v2, p0, v0

    .line 554
    const-string v3, "0123456789abcdef"

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789abcdef"

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 556
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mg(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 46
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_2

    .line 47
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 54
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    throw v0

    .line 49
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 50
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 51
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 54
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->a(Ljava/io/Closeable;)V

    .line 57
    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 53
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method
