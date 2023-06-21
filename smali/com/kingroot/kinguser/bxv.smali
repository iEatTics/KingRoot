.class public Lcom/kingroot/kinguser/bxv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bxv$a;
    }
.end annotation


# direct methods
.method private static a([BIC)I
    .locals 3

    .prologue
    .line 89
    add-int/lit8 v0, p1, -0x1

    .line 90
    :goto_0
    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 91
    array-length v0, p0

    if-eq v1, v0, :cond_0

    aget-byte v0, p0, v1

    if-ne v0, p2, :cond_2

    .line 96
    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static cd(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    :try_start_0
    const-string v0, ""

    .line 62
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/proc/%d/cmdline"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bxs;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/bxv;->a([BIC)I

    move-result v2

    .line 66
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 69
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/proc/%d/status"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bxs;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 73
    const/4 v2, 0x6

    .line 74
    const/4 v0, 0x7

    const/16 v3, 0xa

    invoke-static {v1, v0, v3}, Lcom/kingroot/kinguser/bxv;->a([BIC)I

    move-result v3

    .line 75
    if-nez v3, :cond_2

    .line 76
    const-string v0, ""

    .line 85
    :cond_1
    :goto_0
    return-object v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    const-string v0, ""

    goto :goto_0
.end method

.method public static kO(I)Lcom/kingroot/kinguser/bxv$a;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 101
    .line 105
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bxv;->cd(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 106
    :try_start_1
    new-instance v2, Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "/proc/%d/status"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bxs;->cy(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 108
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 109
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 110
    array-length v6, v2

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v2, v0

    .line 111
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 112
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 110
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    move v0, v1

    move-object v2, v3

    :goto_2
    move v4, v1

    move-object v3, v2

    move v2, v0

    .line 122
    :goto_3
    if-eqz v3, :cond_1

    if-eq v2, v1, :cond_1

    if-ne v4, v1, :cond_3

    :cond_1
    move-object v0, v5

    .line 125
    :goto_4
    return-object v0

    .line 117
    :cond_2
    const-string v0, "PPid"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 118
    :try_start_2
    const-string v0, "Uid"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_3

    .line 125
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/bxv$a;

    move v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bxv$a;-><init>(IILjava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 119
    :catch_1
    move-exception v0

    move v0, v1

    move-object v2, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public static qJ()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bxv$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 49
    :cond_0
    return-object v0

    .line 30
    :cond_1
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 30
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_3
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 37
    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 43
    invoke-static {v4}, Lcom/kingroot/kinguser/bxv;->kO(I)Lcom/kingroot/kinguser/bxv$a;

    move-result-object v4

    .line 44
    if-eqz v4, :cond_2

    .line 45
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v4

    goto :goto_1
.end method
