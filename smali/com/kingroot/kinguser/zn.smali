.class public Lcom/kingroot/kinguser/zn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/zn$a;
    }
.end annotation


# direct methods
.method public static H(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, -0x2

    const/4 v0, -0x3

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    .line 53
    const/4 v0, -0x4

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 58
    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    .line 63
    invoke-static {v2}, Lcom/kingroot/kinguser/rs;->p(Ljava/io/File;)J

    move-result-wide v2

    .line 64
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->p(Ljava/io/File;)J

    move-result-wide v0

    .line 65
    cmp-long v4, v2, v8

    if-eqz v4, :cond_5

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/zn$a;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 173
    new-instance v1, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 175
    if-nez p0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " zls"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zn;->dB(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    const-string v0, "sh"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 186
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hehe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v0, v2

    .line 209
    :goto_0
    return-object v0

    .line 191
    :cond_3
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    array-length v3, v0

    const/4 v4, 0x5

    if-lt v3, v4, :cond_5

    .line 194
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 195
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 196
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 197
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/kingroot/kinguser/zn$a;->size:J

    .line 199
    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    :goto_1
    iput-object v0, v1, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 199
    :cond_4
    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 200
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 203
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 206
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/zn;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/zn$a;

    move-result-object v2

    .line 132
    if-nez v2, :cond_1

    move v0, v1

    .line 164
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    iget v3, p2, Lcom/kingroot/kinguser/zn$a;->WN:I

    if-eq v3, v1, :cond_2

    iget v3, v2, Lcom/kingroot/kinguser/zn$a;->WN:I

    iget v4, p2, Lcom/kingroot/kinguser/zn$a;->WN:I

    if-ne v3, v4, :cond_3

    :cond_2
    iget v3, p2, Lcom/kingroot/kinguser/zn$a;->WO:I

    if-eq v3, v1, :cond_4

    iget v3, v2, Lcom/kingroot/kinguser/zn$a;->WO:I

    iget v4, p2, Lcom/kingroot/kinguser/zn$a;->WO:I

    if-eq v3, v4, :cond_4

    .line 140
    :cond_3
    const/4 v0, 0x1

    .line 144
    :cond_4
    iget v3, p2, Lcom/kingroot/kinguser/zn$a;->mode:I

    if-eq v3, v1, :cond_7

    iget v3, v2, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget v4, p2, Lcom/kingroot/kinguser/zn$a;->mode:I

    if-eq v3, v4, :cond_7

    .line 145
    or-int/lit8 v0, v0, 0x2

    .line 154
    :cond_5
    :goto_1
    iget-wide v4, p2, Lcom/kingroot/kinguser/zn$a;->size:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    iget-wide v4, v2, Lcom/kingroot/kinguser/zn$a;->size:J

    iget-wide v6, p2, Lcom/kingroot/kinguser/zn$a;->size:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 155
    or-int/lit8 v0, v0, 0x4

    .line 159
    :cond_6
    iget-object v1, p2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 148
    :cond_7
    iget v3, p2, Lcom/kingroot/kinguser/zn$a;->WQ:I

    if-eq v3, v1, :cond_5

    iget v1, v2, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget v3, p2, Lcom/kingroot/kinguser/zn$a;->WQ:I

    and-int/2addr v1, v3

    iget v3, p2, Lcom/kingroot/kinguser/zn$a;->WQ:I

    if-eq v1, v3, :cond_5

    .line 149
    or-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public static a(Ljava/util/List;Lcom/kingroot/kinguser/zn$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/zn$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    :try_start_0
    invoke-static {v2}, Lcom/kingroot/kinguser/rs;->s(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 239
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 245
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)V
    .locals 3

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->s(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/zn$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zn$1;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;Lcom/kingroot/kinguser/zn$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/zn$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/zn;->b(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)V

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method private static dB(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0
.end method
