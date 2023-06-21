.class public Lcom/kingroot/kinguser/agw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static ank:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/agw;->ank:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static J([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 80
    sget-object v4, Lcom/kingroot/kinguser/agw;->ank:[C

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    sget-object v4, Lcom/kingroot/kinguser/agw;->ank:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/agv;)Z
    .locals 6

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kingroot/kinguser/agv;->wj()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 23
    const-string v1, "LEN"

    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/agv;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 27
    :cond_0
    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/agw;->b(Ljava/io/File;I)[B

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/kingroot/kinguser/agw;->J([B)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "MD5"

    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/agv;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static b(Ljava/io/File;I)[B
    .locals 6

    .prologue
    .line 50
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 51
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 55
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    move v0, p1

    .line 59
    :cond_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 60
    if-lez v4, :cond_1

    .line 61
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 62
    sub-int/2addr v0, v4

    .line 64
    :cond_1
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    if-gtz v0, :cond_0

    .line 66
    :cond_2
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 68
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 66
    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
