.class public Lcom/kingroot/kinguser/bxg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static ajt()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRu:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 37
    const/4 v1, 0x1

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRv:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    const/4 v1, 0x2

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRw:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    const/4 v1, 0x3

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRx:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 40
    const/4 v1, 0x4

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRy:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 41
    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRz:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 42
    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRA:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    const/4 v1, 0x7

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRB:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    const/16 v1, 0x8

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRC:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 45
    const/16 v1, 0x9

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRD:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    return-object v0
.end method

.method public static aju()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->ajt()[Ljava/lang/String;

    move-result-object v4

    .line 56
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 57
    const-string v0, "get"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v3

    const/4 v3, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v3

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    move v1, v2

    .line 61
    :goto_0
    :try_start_1
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 62
    aget-object v0, v4, v3

    .line 63
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    const-string v8, ""

    aput-object v8, v7, v0

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 66
    shl-int v0, v9, v3

    or-int/2addr v0, v1

    .line 61
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    shl-int v0, v2, v3

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 76
    :goto_2
    return v0

    .line 72
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method private static ajv()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 95
    const/4 v1, 0x0

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRE:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    const/4 v1, 0x1

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRF:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    const/4 v1, 0x2

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRG:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    const/4 v1, 0x3

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRH:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    const/4 v1, 0x4

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRI:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 100
    const/4 v1, 0x5

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRJ:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    const/4 v1, 0x6

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRK:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    const/4 v1, 0x7

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRL:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 103
    const/16 v1, 0x8

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRM:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    const/16 v1, 0x9

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRN:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    const/16 v1, 0xa

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRO:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    const/16 v1, 0xb

    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRP:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    return-object v0
.end method

.method public static ajw()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/bxg;->ajv()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 117
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 118
    aget-object v4, v3, v0

    .line 119
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    or-int/2addr v2, v4

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    shl-int v4, v1, v0

    or-int/2addr v2, v4

    goto :goto_1

    .line 128
    :cond_1
    return v2
.end method

.method public static ajx()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    .line 139
    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRQ:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 140
    sget-object v2, Lcom/kingroot/kinguser/bwo;->bRR:[I

    invoke-static {v2}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 141
    const/4 v2, 0x2

    sget-object v4, Lcom/kingroot/kinguser/bwo;->bRS:[I

    invoke-static {v4}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 143
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 144
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public static ajy()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    sget-object v0, Lcom/kingroot/kinguser/bwo;->bRT:[I

    invoke-static {v0}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 195
    :cond_1
    :goto_0
    return v1

    .line 162
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 163
    if-eqz v4, :cond_1

    array-length v0, v4

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/kingroot/kinguser/bwo;->bRU:[I

    invoke-static {v0}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v3

    .line 172
    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_9

    aget-object v6, v4, v0

    .line 173
    if-nez v6, :cond_4

    .line 172
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    .line 181
    :goto_2
    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lcom/kingroot/kinguser/bwo;->bRV:[I

    invoke-static {v0}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v5

    .line 188
    array-length v6, v4

    move v3, v2

    move v0, v2

    :goto_3
    if-ge v3, v6, :cond_7

    aget-object v7, v4, v3

    .line 189
    if-nez v7, :cond_6

    .line 188
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 190
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 195
    :cond_7
    const/4 v3, 0x5

    if-lt v0, v3, :cond_8

    move v0, v1

    :goto_5
    move v1, v0

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method public static ajz()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    sget-object v1, Lcom/kingroot/kinguser/bwo;->bRW:[I

    invoke-static {v1}, Lcom/kingroot/kinguser/bwo;->k([I)Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const/4 v0, 0x0

    goto :goto_0
.end method
