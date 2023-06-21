.class public Lcom/kingroot/kinguser/bks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bks$a;
    }
.end annotation


# direct methods
.method private static a([BIC)I
    .locals 3

    .prologue
    .line 101
    add-int/lit8 v0, p1, -0x1

    .line 102
    :goto_0
    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 103
    array-length v0, p0

    if-eq v1, v0, :cond_0

    aget-byte v0, p0, v1

    if-ne v0, p2, :cond_2

    .line 108
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

.method public static cd(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    :try_start_0
    const-string v0, ""

    .line 74
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

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bks;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v2

    .line 78
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 81
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
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

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bks;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 85
    const/4 v2, 0x6

    .line 86
    const/4 v0, 0x7

    const/16 v3, 0xa

    invoke-static {v1, v0, v3}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    const-string v0, ""

    .line 97
    :cond_1
    :goto_0
    return-object v0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    const-string v0, ""

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;I)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 61
    :goto_0
    return-object v0

    .line 34
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    new-array v1, p1, [B

    .line 38
    :cond_1
    sub-int v4, p1, v0

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 39
    add-int/2addr v0, v4

    .line 40
    if-lt v0, p1, :cond_1

    move v4, v0

    .line 45
    :goto_1
    if-nez v4, :cond_2

    .line 58
    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    if-ge v4, p1, :cond_3

    .line 50
    :try_start_2
    new-array v0, v4, [B

    .line 51
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :goto_2
    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 58
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    move-object v0, v2

    .line 61
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 56
    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move v4, v0

    goto :goto_1
.end method

.method public static jE(I)Lcom/kingroot/kinguser/bks$a;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 113
    .line 117
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bks;->cd(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :try_start_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "/proc/%d/status"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x96

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bks;->h(Ljava/lang/String;I)[B

    move-result-object v5

    .line 122
    if-eqz v5, :cond_7

    .line 124
    const/4 v2, 0x6

    .line 125
    const/4 v3, 0x7

    const/16 v6, 0xa

    invoke-static {v5, v3, v6}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v6

    .line 126
    if-nez v6, :cond_1

    move v2, v1

    move-object v3, v0

    move v0, v1

    :goto_0
    move-object v5, v3

    move v3, v2

    move v2, v0

    .line 171
    :goto_1
    if-eqz v5, :cond_0

    if-eq v3, v1, :cond_0

    if-ne v2, v1, :cond_5

    :cond_0
    move-object v0, v4

    .line 174
    :goto_2
    return-object v0

    .line 131
    :cond_1
    if-nez v0, :cond_6

    .line 132
    new-instance v3, Ljava/lang/String;

    sub-int v7, v6, v2

    invoke-direct {v3, v5, v2, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :goto_3
    add-int/lit8 v0, v6, 0x1

    const/16 v2, 0xa

    :try_start_2
    invoke-static {v5, v0, v2}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    invoke-static {v5, v0, v2}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v0

    .line 140
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    invoke-static {v5, v0, v2}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v0

    .line 141
    if-nez v0, :cond_2

    move v0, v1

    move v2, v1

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v2, v0, 0x7

    .line 147
    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0xa

    invoke-static {v5, v0, v6}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v0

    .line 148
    if-nez v0, :cond_3

    move v0, v1

    move v2, v1

    .line 149
    goto :goto_0

    .line 153
    :cond_3
    new-instance v6, Ljava/lang/String;

    sub-int v7, v0, v2

    invoke-direct {v6, v5, v2, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 156
    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0xa

    :try_start_3
    invoke-static {v5, v0, v6}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v0

    .line 157
    if-nez v0, :cond_4

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_4
    add-int/lit8 v0, v0, 0x6

    .line 163
    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x9

    invoke-static {v5, v6, v7}, Lcom/kingroot/kinguser/bks;->a([BIC)I

    move-result v6

    .line 164
    new-instance v7, Ljava/lang/String;

    sub-int/2addr v6, v0

    invoke-direct {v7, v5, v0, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    move v2, v1

    move-object v3, v4

    :goto_4
    move-object v5, v3

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 174
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/bks$a;

    invoke-direct {v0, p0, v3, v5, v2}, Lcom/kingroot/kinguser/bks$a;-><init>(IILjava/lang/String;I)V

    goto :goto_2

    .line 169
    :catch_1
    move-exception v2

    move v2, v1

    move-object v3, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move v2, v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v3, v0

    goto :goto_3

    :cond_7
    move v2, v1

    move-object v3, v0

    move v0, v1

    goto/16 :goto_0
.end method
