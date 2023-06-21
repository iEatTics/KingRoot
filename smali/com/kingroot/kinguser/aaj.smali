.class public Lcom/kingroot/kinguser/aaj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static H([B)[B
    .locals 2

    .prologue
    .line 71
    .line 72
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 75
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 82
    :cond_0
    :goto_0
    return-object p0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static a([B[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 32
    .line 34
    array-length v1, p0

    shr-int/lit8 v3, v1, 0x2

    move v2, v0

    .line 35
    :goto_0
    if-ge v2, v3, :cond_0

    .line 36
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    .line 37
    aget v0, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, p1, v2

    .line 38
    aget v0, p1, v2

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aput v0, p1, v2

    .line 39
    aget v4, p1, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v4

    aput v1, p1, v2

    .line 35
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 41
    :cond_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 42
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    .line 43
    const/16 v0, 0x8

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 44
    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 43
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 47
    :cond_1
    return-void
.end method

.method private static a([II[B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 50
    .line 52
    array-length v0, p2

    shr-int/lit8 v0, v0, 0x2

    .line 53
    if-le v0, p1, :cond_0

    move v0, p1

    :cond_0
    move v2, v1

    move v3, v1

    .line 56
    :goto_0
    if-ge v3, v0, :cond_1

    .line 57
    add-int/lit8 v1, v2, 0x1

    aget v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    .line 58
    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    .line 59
    add-int/lit8 v4, v2, 0x1

    aget v1, p0, v3

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 60
    add-int/lit8 v1, v4, 0x1

    aget v2, p0, v3

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v4

    .line 56
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 62
    :cond_1
    if-le p1, v0, :cond_2

    array-length v0, p2

    if-ge v2, v0, :cond_2

    .line 63
    add-int/lit8 v1, v2, 0x1

    aget v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 64
    const/16 v0, 0x8

    :goto_1
    const/16 v2, 0x18

    if-gt v0, v2, :cond_2

    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 65
    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v3

    ushr-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    .line 64
    add-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_1

    .line 68
    :cond_2
    return-void
.end method

.method public static c([B[B)[B
    .locals 14

    .prologue
    .line 86
    .line 90
    invoke-static {p1}, Lcom/kingroot/kinguser/aaj;->H([B)[B

    move-result-object v2

    .line 92
    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object p0

    .line 96
    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 97
    :goto_1
    new-array v4, v0, [I

    .line 98
    invoke-static {p0, v4}, Lcom/kingroot/kinguser/aaj;->a([B[I)V

    .line 99
    add-int/lit8 v0, v0, -0x1

    array-length v1, p0

    aput v1, v4, v0

    .line 101
    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    .line 102
    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 103
    const/4 v0, 0x4

    .line 105
    :cond_2
    new-array v5, v0, [I

    .line 106
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    .line 107
    const/4 v3, 0x0

    aput v3, v5, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_3
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 101
    :cond_4
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 109
    :cond_5
    invoke-static {v2, v5}, Lcom/kingroot/kinguser/aaj;->a([B[I)V

    .line 111
    array-length v0, v4

    add-int/lit8 v6, v0, -0x1

    .line 112
    aget v2, v4, v6

    const/4 v0, 0x0

    aget v0, v4, v0

    const v7, -0x61c88647

    const/4 v1, 0x0

    .line 113
    const/16 v0, 0x34

    add-int/lit8 v3, v6, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    move v3, v1

    move v1, v2

    .line 114
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_7

    .line 115
    add-int/2addr v3, v7

    .line 116
    ushr-int/lit8 v0, v3, 0x2

    and-int/lit8 v8, v0, 0x3

    .line 117
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_6

    .line 118
    add-int/lit8 v9, v0, 0x1

    aget v9, v4, v9

    .line 119
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

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 121
    :cond_6
    const/4 v9, 0x0

    aget v9, v4, v9

    .line 122
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

    .line 125
    :cond_7
    array-length v0, v4

    shl-int/lit8 v0, v0, 0x2

    .line 126
    new-array p0, v0, [B

    .line 127
    array-length v0, v4

    invoke-static {v4, v0, p0}, Lcom/kingroot/kinguser/aaj;->a([II[B)V

    goto/16 :goto_0
.end method

.method public static d([B[B)[B
    .locals 14

    .prologue
    .line 136
    .line 140
    invoke-static {p1}, Lcom/kingroot/kinguser/aaj;->H([B)[B

    move-result-object v2

    .line 142
    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object p0

    .line 146
    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    .line 147
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 149
    :cond_3
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    .line 150
    new-array v4, v0, [I

    .line 151
    invoke-static {p0, v4}, Lcom/kingroot/kinguser/aaj;->a([B[I)V

    .line 153
    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_5

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    .line 154
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 155
    const/4 v0, 0x4

    .line 157
    :cond_4
    new-array v5, v0, [I

    .line 158
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 159
    const/4 v3, 0x0

    aput v3, v5, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    :cond_5
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_6
    invoke-static {v2, v5}, Lcom/kingroot/kinguser/aaj;->a([B[I)V

    .line 163
    array-length v0, v4

    add-int/lit8 v1, v0, -0x1

    .line 164
    aget v0, v4, v1

    const/4 v0, 0x0

    aget v2, v4, v0

    const v6, -0x61c88647

    .line 165
    const/16 v0, 0x34

    add-int/lit8 v3, v1, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    .line 167
    mul-int/2addr v0, v6

    move v3, v0

    move v0, v2

    .line 168
    :goto_3
    if-eqz v3, :cond_8

    .line 169
    ushr-int/lit8 v2, v3, 0x2

    and-int/lit8 v7, v2, 0x3

    move v2, v0

    move v0, v1

    .line 170
    :goto_4
    if-lez v0, :cond_7

    .line 171
    add-int/lit8 v8, v0, -0x1

    aget v8, v4, v8

    .line 172
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

    .line 170
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 174
    :cond_7
    aget v8, v4, v1

    .line 175
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

    .line 176
    sub-int v0, v3, v6

    move v3, v0

    move v0, v2

    goto :goto_3

    .line 179
    :cond_8
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v0, v4, v0

    .line 180
    if-ltz v0, :cond_9

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_a

    .line 181
    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 183
    :cond_a
    new-array p0, v0, [B

    .line 184
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0, p0}, Lcom/kingroot/kinguser/aaj;->a([II[B)V

    goto/16 :goto_0
.end method

.method public static m([B)[B
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/aaj;->pL()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aaj;->d([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static n([B)[B
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/aaj;->pL()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aaj;->c([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static pL()[B
    .locals 6

    .prologue
    .line 15
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    const-string v2, "http://pmir.3g.qq.com"

    .line 17
    const/16 v0, 0x15

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 19
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v5, v3, v0

    add-int/2addr v4, v5

    .line 21
    int-to-char v4, v4

    .line 22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 27
    :goto_1
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 27
    const/4 v0, 0x0

    goto :goto_1

    .line 17
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
