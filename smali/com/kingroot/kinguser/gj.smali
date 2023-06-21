.class public Lcom/kingroot/kinguser/gj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(IIJIIILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    if-eqz p7, :cond_0

    .line 72
    const-string v0, "\t"

    const-string v1, "%09"

    invoke-virtual {p7, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "\n"

    const-string v2, "%0A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 75
    :cond_0
    const-string v0, "|"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/fc;->af()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v2, Lcom/kingroot/kinguser/fa;->P:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p7}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 105
    return-object v0
.end method

.method private static a([Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 168
    const-string v2, "|"

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x9

    if-ge v1, v0, :cond_3

    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    if-eqz p0, :cond_2

    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 173
    aget-object v0, p0, v1

    if-nez v0, :cond_0

    .line 174
    const-string v0, ""

    aput-object v0, p0, v1

    .line 176
    :cond_0
    aget-object v0, p0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 177
    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    .line 179
    :cond_1
    aget-object v0, p0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_3
    return-void
.end method

.method public static aj(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static ak(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    const-string v0, ","

    .line 277
    const-string v1, "%2c"

    .line 278
    invoke-static {v0, v1, p0}, Lcom/kingroot/kinguser/gj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v1, ";"

    .line 280
    const-string v2, "%3B"

    .line 281
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/gj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "|"

    .line 283
    const-string v2, "%7C"

    .line 284
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/gj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "\n"

    .line 286
    const-string v2, "%0A"

    .line 287
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/gj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "\'"

    .line 289
    const-string v2, "%27"

    .line 290
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/gj;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    .line 296
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 299
    :cond_0
    return-object p2
.end method

.method static g(Lcom/kingroot/kinguser/ew;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ew;->ac()[Ljava/lang/Object;

    move-result-object v8

    .line 118
    iget-wide v2, p0, Lcom/kingroot/kinguser/ew;->timestamp:J

    .line 119
    iget v5, p0, Lcom/kingroot/kinguser/ew;->pD:I

    .line 120
    iget v6, p0, Lcom/kingroot/kinguser/ew;->pE:I

    .line 121
    iget-object v1, p0, Lcom/kingroot/kinguser/ew;->I:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v7, ""

    .line 122
    :goto_1
    const-string v9, "|"

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const/4 v1, 0x1

    move v4, v0

    invoke-static/range {v0 .. v7}, Lcom/kingroot/kinguser/gj;->a(IIJIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {v8, v10}, Lcom/kingroot/kinguser/gj;->a([Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 128
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const v0, 0x19ce6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v7, p0, Lcom/kingroot/kinguser/ew;->I:Ljava/lang/String;

    goto :goto_1
.end method

.method static h(Lcom/kingroot/kinguser/ew;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ew;->ac()[Ljava/lang/Object;

    move-result-object v1

    .line 146
    iget-wide v2, p0, Lcom/kingroot/kinguser/ew;->timestamp:J

    .line 147
    iget v4, p0, Lcom/kingroot/kinguser/ew;->pD:I

    .line 148
    iget v5, p0, Lcom/kingroot/kinguser/ew;->pE:I

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/ew;->I:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 151
    :goto_1
    const-string v6, "|"

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {v0}, Lcom/kingroot/kinguser/gj;->ak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {v1, v7}, Lcom/kingroot/kinguser/gj;->a([Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 164
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ew;->I:Ljava/lang/String;

    goto :goto_1
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 67
    return-object p0
.end method
