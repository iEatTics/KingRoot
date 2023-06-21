.class public Lcom/kingroot/kinguser/cdl;
.super Ljava/lang/Object;


# direct methods
.method public static a()[B
    .locals 6

    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "http://pmir.3g.qq.com"

    const/16 v0, 0x15

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v5, v3, v0

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :array_0
    .array-data 4
        -0x24
        -0x2e
        -0x2d
        -0x4d
        -0x16
        -0xa
        0x2f
        -0x4d
        -0x48
        -0x45
        -0x20
        0x19
        0x15
        -0x15
        -0x6
        -0x4b
        -0x47
        0x1f
        -0x27
        -0x31
        -0x31
    .end array-data
.end method

.method private static a([B)[B
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 14

    invoke-static {p1}, Lcom/kingroot/kinguser/cdl;->a([B)[B

    move-result-object v2

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    new-array v4, v0, [I

    invoke-static {p0, v4}, Lcom/kingroot/kinguser/cdl;->c([B[I)V

    add-int/lit8 v0, v0, -0x1

    array-length v1, p0

    aput v1, v4, v0

    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const/4 v0, 0x4

    :cond_2
    new-array v5, v0, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    const/4 v3, 0x0

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {v2, v5}, Lcom/kingroot/kinguser/cdl;->c([B[I)V

    array-length v0, v4

    add-int/lit8 v6, v0, -0x1

    aget v2, v4, v6

    const/4 v0, 0x0

    aget v0, v4, v0

    const v7, -0x61c88647

    const/4 v1, 0x0

    const/16 v0, 0x34

    add-int/lit8 v3, v6, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    move v3, v1

    move v1, v2

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_7

    add-int/2addr v3, v7

    ushr-int/lit8 v0, v3, 0x2

    and-int/lit8 v8, v0, 0x3

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_6

    add-int/lit8 v9, v0, 0x1

    aget v9, v4, v9

    aget v10, v4, v0

    ushr-int/lit8 v11, v1, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v1, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v3

    and-int/lit8 v12, v0, 0x3

    xor-int/2addr v12, v8

    aget v12, v5, v12

    xor-int/2addr v1, v12

    add-int/2addr v1, v9

    xor-int/2addr v1, v11

    add-int/2addr v1, v10

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    aget v9, v4, v9

    aget v10, v4, v6

    ushr-int/lit8 v11, v1, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v1, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v3

    and-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, v8

    aget v0, v5, v0

    xor-int/2addr v0, v1

    add-int/2addr v0, v9

    xor-int/2addr v0, v11

    add-int v1, v10, v0

    aput v1, v4, v6

    move v0, v2

    goto :goto_4

    :cond_7
    array-length v0, v4

    shl-int/lit8 v0, v0, 0x2

    new-array p0, v0, [B

    array-length v0, v4

    invoke-static {v4, v0, p0}, Lcom/kingroot/kinguser/cdl;->c([II[B)V

    goto/16 :goto_0
.end method

.method public static b([B[B)[B
    .locals 14

    invoke-static {p1}, Lcom/kingroot/kinguser/cdl;->a([B)[B

    move-result-object v2

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    new-array v4, v0, [I

    invoke-static {p0, v4}, Lcom/kingroot/kinguser/cdl;->c([B[I)V

    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    new-array v5, v0, [I

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    const/4 v3, 0x0

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v2, v5}, Lcom/kingroot/kinguser/cdl;->c([B[I)V

    array-length v0, v4

    add-int/lit8 v1, v0, -0x1

    aget v0, v4, v1

    const/4 v0, 0x0

    aget v2, v4, v0

    const v6, -0x61c88647

    const/16 v0, 0x34

    add-int/lit8 v3, v1, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v6

    move v3, v0

    move v0, v2

    :goto_3
    if-eqz v3, :cond_8

    ushr-int/lit8 v2, v3, 0x2

    and-int/lit8 v7, v2, 0x3

    move v2, v0

    move v0, v1

    :goto_4
    if-lez v0, :cond_7

    add-int/lit8 v8, v0, -0x1

    aget v8, v4, v8

    aget v9, v4, v0

    ushr-int/lit8 v10, v8, 0x5

    shl-int/lit8 v11, v2, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v2, 0x3

    shl-int/lit8 v12, v8, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v2, v3

    and-int/lit8 v11, v0, 0x3

    xor-int/2addr v11, v7

    aget v11, v5, v11

    xor-int/2addr v8, v11

    add-int/2addr v2, v8

    xor-int/2addr v2, v10

    sub-int v2, v9, v2

    aput v2, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_7
    aget v8, v4, v1

    const/4 v9, 0x0

    aget v10, v4, v9

    ushr-int/lit8 v11, v8, 0x5

    shl-int/lit8 v12, v2, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v2, 0x3

    shl-int/lit8 v13, v8, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, v7

    aget v0, v5, v0

    xor-int/2addr v0, v8

    add-int/2addr v0, v2

    xor-int/2addr v0, v11

    sub-int v2, v10, v0

    aput v2, v4, v9

    sub-int v0, v3, v6

    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_8
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v0, v4, v0

    if-ltz v0, :cond_9

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_a

    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    new-array p0, v0, [B

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0, p0}, Lcom/kingroot/kinguser/cdl;->c([II[B)V

    goto/16 :goto_0
.end method

.method private static c([B[I)V
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    shr-int/lit8 v3, v1, 0x2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    aget v0, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, p1, v2

    aget v0, p1, v2

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aput v0, p1, v2

    aget v4, p1, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v4

    aput v1, p1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    const/16 v0, 0x8

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static c([II[B)V
    .locals 5

    const/4 v1, 0x0

    array-length v0, p2

    shr-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_0

    move v0, p1

    :cond_0
    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v4, v2, 0x1

    aget v1, p0, v3

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    add-int/lit8 v1, v4, 0x1

    aget v2, p0, v3

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    array-length v0, p2

    if-ge v2, v0, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    const/16 v0, 0x8

    :goto_1
    const/16 v2, 0x18

    if-gt v0, v2, :cond_2

    array-length v2, p2

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v3

    ushr-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method
