.class Lcom/kingroot/kinguser/bhh$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bqA:Lcom/kingroot/kinguser/bhh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bhh;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/bhh$a;->bqA:Lcom/kingroot/kinguser/bhh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private O([B)[B
    .locals 2

    .prologue
    .line 101
    .line 102
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 105
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 107
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 112
    :cond_0
    :goto_0
    return-object p1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b([B[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 62
    .line 64
    array-length v1, p1

    shr-int/lit8 v3, v1, 0x2

    move v2, v0

    .line 65
    :goto_0
    if-ge v2, v3, :cond_0

    .line 66
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p2, v2

    .line 67
    aget v0, p2, v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, p2, v2

    .line 68
    aget v0, p2, v2

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aput v0, p2, v2

    .line 69
    aget v4, p2, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v4

    aput v1, p2, v2

    .line 65
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 71
    :cond_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 72
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p2, v2

    .line 73
    const/16 v0, 0x8

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 74
    aget v3, p2, v2

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    aput v3, p2, v2

    .line 73
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method private b([II[B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    .line 82
    array-length v0, p3

    shr-int/lit8 v0, v0, 0x2

    .line 83
    if-le v0, p2, :cond_0

    move v0, p2

    :cond_0
    move v2, v1

    move v3, v1

    .line 86
    :goto_0
    if-ge v3, v0, :cond_1

    .line 87
    add-int/lit8 v1, v2, 0x1

    aget v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 88
    add-int/lit8 v2, v1, 0x1

    aget v4, p1, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    .line 89
    add-int/lit8 v4, v2, 0x1

    aget v1, p1, v3

    ushr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p3, v2

    .line 90
    add-int/lit8 v1, v4, 0x1

    aget v2, p1, v3

    ushr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    .line 86
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 92
    :cond_1
    if-le p2, v0, :cond_2

    array-length v0, p3

    if-ge v2, v0, :cond_2

    .line 93
    add-int/lit8 v1, v2, 0x1

    aget v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    .line 94
    const/16 v0, 0x8

    :goto_1
    const/16 v2, 0x18

    if-gt v0, v2, :cond_2

    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 95
    add-int/lit8 v2, v1, 0x1

    aget v4, p1, v3

    ushr-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    .line 94
    add-int/lit8 v0, v0, 0x8

    move v1, v2

    goto :goto_1

    .line 98
    :cond_2
    return-void
.end method


# virtual methods
.method public encrypt([B[B)[B
    .locals 15

    .prologue
    .line 116
    .line 120
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bhh$a;->O([B)[B

    move-result-object v3

    .line 122
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object p1

    .line 126
    :cond_1
    move-object/from16 v0, p1

    array-length v1, v0

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_3

    move-object/from16 v0, p1

    array-length v1, v0

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 128
    :goto_1
    new-array v5, v1, [I

    .line 129
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5}, Lcom/kingroot/kinguser/bhh$a;->b([B[I)V

    .line 130
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p1

    array-length v2, v0

    aput v2, v5, v1

    .line 132
    array-length v1, v3

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    array-length v1, v3

    ushr-int/lit8 v1, v1, 0x2

    .line 134
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 135
    const/4 v1, 0x4

    .line 137
    :cond_2
    new-array v6, v1, [I

    .line 138
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    .line 139
    const/4 v4, 0x0

    aput v4, v6, v2

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 126
    :cond_3
    move-object/from16 v0, p1

    array-length v1, v0

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 132
    :cond_4
    array-length v1, v3

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    :cond_5
    invoke-direct {p0, v3, v6}, Lcom/kingroot/kinguser/bhh$a;->b([B[I)V

    .line 143
    array-length v1, v5

    add-int/lit8 v7, v1, -0x1

    .line 144
    aget v3, v5, v7

    const/4 v1, 0x0

    aget v1, v5, v1

    const v8, -0x61c88647

    const/4 v2, 0x0

    .line 145
    const/16 v1, 0x34

    add-int/lit8 v4, v7, 0x1

    div-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x6

    move v4, v2

    move v2, v3

    .line 146
    :goto_4
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_7

    .line 147
    add-int/2addr v4, v8

    .line 148
    ushr-int/lit8 v1, v4, 0x2

    and-int/lit8 v9, v1, 0x3

    .line 149
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v7, :cond_6

    .line 150
    add-int/lit8 v10, v1, 0x1

    aget v10, v5, v10

    .line 151
    aget v11, v5, v1

    ushr-int/lit8 v12, v2, 0x5

    shl-int/lit8 v13, v10, 0x2

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v10, 0x3

    shl-int/lit8 v14, v2, 0x4

    xor-int/2addr v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v10, v4

    and-int/lit8 v13, v1, 0x3

    xor-int/2addr v13, v9

    aget v13, v6, v13

    xor-int/2addr v2, v13

    add-int/2addr v2, v10

    xor-int/2addr v2, v12

    add-int/2addr v2, v11

    aput v2, v5, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 154
    :cond_6
    const/4 v10, 0x0

    aget v10, v5, v10

    .line 155
    aget v11, v5, v7

    ushr-int/lit8 v12, v2, 0x5

    shl-int/lit8 v13, v10, 0x2

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v10, 0x3

    shl-int/lit8 v14, v2, 0x4

    xor-int/2addr v13, v14

    add-int/2addr v12, v13

    xor-int/2addr v10, v4

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v9

    aget v1, v6, v1

    xor-int/2addr v1, v2

    add-int/2addr v1, v10

    xor-int/2addr v1, v12

    add-int v2, v11, v1

    aput v2, v5, v7

    move v1, v3

    goto :goto_4

    .line 159
    :cond_7
    array-length v1, v5

    shl-int/lit8 v1, v1, 0x2

    .line 160
    new-array v0, v1, [B

    move-object/from16 p1, v0

    .line 161
    array-length v1, v5

    move-object/from16 v0, p1

    invoke-direct {p0, v5, v1, v0}, Lcom/kingroot/kinguser/bhh$a;->b([II[B)V

    goto/16 :goto_0
.end method
