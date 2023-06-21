.class public Lcom/kingroot/kinguser/bxp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static O(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bxu;->nx(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 23
    and-int/lit16 v1, v1, 0x800

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 24
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static ajJ()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 32
    new-instance v1, Ljava/lang/String;

    const-string v2, "/proc/mounts"

    invoke-static {v2}, Lcom/kingroot/kinguser/bxs;->cy(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 35
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 37
    const-string v5, " /system "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    const-string v1, ",nosuid"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 46
    :cond_0
    return v0

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static ajK()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/bxx;->qP()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bxp;->ajJ()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/bxu;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v3, v2

    .line 83
    const-string v6, "run-as"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 81
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_3
    invoke-static {v5}, Lcom/kingroot/kinguser/bxp;->O(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 86
    goto :goto_0

    .line 92
    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_0

    .line 95
    array-length v4, v3

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 96
    invoke-static {v5}, Lcom/kingroot/kinguser/bxp;->O(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    .line 98
    goto :goto_0

    .line 95
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 64
    :catch_0
    move-exception v1

    goto :goto_0
.end method
