.class Lcom/kingroot/kinguser/aal$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private static d([I[I)[I
    .locals 13

    .prologue
    const/4 v1, 0x4

    const/4 v11, 0x0

    .line 165
    array-length v3, p0

    .line 167
    const/4 v0, 0x1

    if-gt v3, v0, :cond_0

    .line 198
    :goto_0
    return-object p0

    .line 170
    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 171
    new-array v0, v1, [I

    .line 172
    array-length v1, p1

    invoke-static {p1, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 179
    :cond_1
    const/16 v0, 0x34

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    .line 182
    const v1, 0x363c7cbf

    add-int/2addr v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    .line 183
    const v2, 0x67fafcfa

    sub-int/2addr v2, v0

    array-length v4, p1

    sub-int/2addr v2, v4

    add-int v4, v1, v2

    .line 185
    mul-int/2addr v0, v4

    .line 186
    aget v1, p0, v11

    .line 189
    :cond_2
    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v5, v2, 0x3

    .line 190
    add-int/lit8 v2, v3, -0x1

    move v12, v2

    move v2, v1

    move v1, v12

    :goto_1
    if-lez v1, :cond_3

    .line 191
    add-int/lit8 v6, v1, -0x1

    aget v6, p0, v6

    .line 192
    aget v7, p0, v1

    ushr-int/lit8 v8, v6, 0x5

    shl-int/lit8 v9, v2, 0x2

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v2, 0x3

    shl-int/lit8 v10, v6, 0x4

    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    xor-int/2addr v2, v0

    and-int/lit8 v9, v1, 0x3

    xor-int/2addr v9, v5

    aget v9, p1, v9

    xor-int/2addr v6, v9

    add-int/2addr v2, v6

    xor-int/2addr v2, v8

    sub-int v2, v7, v2

    aput v2, p0, v1

    .line 190
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 194
    :cond_3
    add-int/lit8 v6, v3, -0x1

    aget v6, p0, v6

    .line 195
    aget v7, p0, v11

    ushr-int/lit8 v8, v6, 0x5

    shl-int/lit8 v9, v2, 0x2

    xor-int/2addr v8, v9

    ushr-int/lit8 v9, v2, 0x3

    shl-int/lit8 v10, v6, 0x4

    xor-int/2addr v9, v10

    add-int/2addr v8, v9

    xor-int/2addr v2, v0

    and-int/lit8 v1, v1, 0x3

    xor-int/2addr v1, v5

    aget v1, p1, v1

    xor-int/2addr v1, v6

    add-int/2addr v1, v2

    xor-int/2addr v1, v8

    sub-int v1, v7, v1

    aput v1, p0, v11

    .line 196
    sub-int/2addr v0, v4

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method static synthetic e([I[I)[I
    .locals 1

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/aal$a;->d([I[I)[I

    move-result-object v0

    return-object v0
.end method
