.class public Lcom/kingroot/kinguser/aez;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;)I
    .locals 3

    .prologue
    .line 128
    const/4 v0, 0x1

    .line 130
    if-nez p1, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 133
    new-instance p1, Lcom/kingroot/kinguser/bn;

    invoke-direct {p1}, Lcom/kingroot/kinguser/bn;-><init>()V

    .line 134
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->ay(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Lcom/kingroot/kinguser/bn;->kD:Ljava/util/ArrayList;

    :cond_0
    move v1, v0

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 141
    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_1

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cz;

    .line 144
    if-nez v1, :cond_2

    .line 145
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aez;->b(Landroid/content/Context;Lcom/kingroot/kinguser/cz;)V

    .line 147
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->aA(Landroid/content/Context;)V

    .line 148
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->aC(Landroid/content/Context;)V

    .line 156
    :cond_1
    :goto_0
    return v2

    .line 150
    :cond_2
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aez;->a(Landroid/content/Context;Lcom/kingroot/kinguser/cz;)V

    .line 152
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->aC(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;Z)I
    .locals 7

    .prologue
    .line 66
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->az(Landroid/content/Context;)J

    move-result-wide v0

    .line 71
    const/4 v6, -0x1

    .line 72
    const-wide/32 v4, 0x240c8400

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/aez;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;)I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/aez;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/kingroot/kinguser/cz;)V
    .locals 8

    .prologue
    .line 161
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cz;->mL:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->ax(Landroid/content/Context;)Lcom/kingroot/kinguser/cz;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_7

    iget-object v0, v3, Lcom/kingroot/kinguser/cz;->mL:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, p1, Lcom/kingroot/kinguser/cz;->mL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/dd;

    .line 169
    if-eqz v0, :cond_2

    .line 173
    const/4 v1, 0x0

    .line 175
    iget-object v2, v3, Lcom/kingroot/kinguser/cz;->mL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/dd;

    .line 176
    if-eqz v1, :cond_3

    .line 180
    iget-object v6, v0, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    iget-object v7, v1, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    const/4 v2, 0x1

    .line 182
    iget-object v6, v0, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    iput-object v6, v1, Lcom/kingroot/kinguser/dd;->mW:Lcom/kingroot/kinguser/bp;

    .line 183
    iget v6, v0, Lcom/kingroot/kinguser/dd;->clearAction:I

    iput v6, v1, Lcom/kingroot/kinguser/dd;->clearAction:I

    .line 184
    iget v6, v0, Lcom/kingroot/kinguser/dd;->mZ:I

    iput v6, v1, Lcom/kingroot/kinguser/dd;->mZ:I

    .line 185
    iget-object v6, v0, Lcom/kingroot/kinguser/dd;->nc:Ljava/lang/String;

    iput-object v6, v1, Lcom/kingroot/kinguser/dd;->nc:Ljava/lang/String;

    .line 186
    iget-wide v6, v0, Lcom/kingroot/kinguser/dd;->nb:J

    iput-wide v6, v1, Lcom/kingroot/kinguser/dd;->nb:J

    .line 187
    iget-wide v6, v0, Lcom/kingroot/kinguser/dd;->na:J

    iput-wide v6, v1, Lcom/kingroot/kinguser/dd;->na:J

    :cond_4
    move v1, v2

    move v2, v1

    .line 189
    goto :goto_2

    .line 191
    :cond_5
    if-nez v2, :cond_2

    .line 192
    iget-object v1, v3, Lcom/kingroot/kinguser/cz;->mL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object p1, v3

    .line 199
    :cond_7
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/aez;->b(Landroid/content/Context;Lcom/kingroot/kinguser/cz;)V

    goto :goto_0
.end method

.method private static aA(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 259
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->au(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    const-string v1, "S01"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    return-void
.end method

.method private static aB(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 270
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->au(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    const-string v1, "S02"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static aC(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 278
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->au(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 281
    const-string v1, "S02"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    return-void
.end method

.method private static au(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 39
    const-string v0, "un_c"

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static av(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    .line 49
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/kingroot/kinguser/aez;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;Z)I

    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

.method public static aw(Landroid/content/Context;)I
    .locals 8

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 88
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->az(Landroid/content/Context;)J

    move-result-wide v0

    .line 89
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->aB(Landroid/content/Context;)J

    move-result-wide v6

    .line 90
    const-wide/32 v4, 0x240c8400

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 92
    :cond_0
    const-wide/32 v4, 0x5265c00

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ax(Landroid/content/Context;)Lcom/kingroot/kinguser/cz;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "un_c.conf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 124
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->cK(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 124
    goto :goto_0
.end method

.method public static ay(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bp;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const/4 v0, 0x3

    .line 225
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/afd;->e(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v4

    .line 227
    if-eqz v4, :cond_1

    move v1, v2

    .line 228
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 229
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 236
    new-instance v5, Lcom/kingroot/kinguser/bp;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bp;-><init>()V

    .line 237
    iget-object v6, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgCertMd5:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/bp;->certMD5:Ljava/lang/String;

    .line 238
    iget-object v6, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/kingroot/kinguser/bp;->packageName:Ljava/lang/String;

    .line 239
    iget-boolean v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    iput v0, v5, Lcom/kingroot/kinguser/bp;->kI:I

    .line 240
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 239
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 244
    :cond_1
    return-object v3
.end method

.method private static az(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 251
    invoke-static {p0}, Lcom/kingroot/kinguser/aez;->au(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    const-string v1, "S01"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;Lcom/kingroot/kinguser/cz;)V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "un_c.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 212
    :cond_0
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/sq;->d(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method
