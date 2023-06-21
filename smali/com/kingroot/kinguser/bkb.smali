.class public Lcom/kingroot/kinguser/bkb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byR:Lcom/kingroot/kinguser/bka;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/kingroot/kinguser/bka;->bA(Landroid/content/Context;)Lcom/kingroot/kinguser/bka;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    .line 22
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .prologue
    .line 36
    const-string v0, "xa = ?"

    .line 37
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 38
    iget-object v2, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v3, "kl_config_1"

    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/bka;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public a(Lcom/kingroot/loader/sdk/KlConfig;)V
    .locals 5

    .prologue
    .line 58
    const-string v0, "xa = ?"

    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kingroot/loader/sdk/KlConfig;->getPluginId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    iget-object v2, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v3, "kl_config_1"

    invoke-virtual {p1}, Lcom/kingroot/loader/sdk/KlConfig;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/kingroot/kinguser/bka;->c(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public a(Lcom/kingroot/loader/sdk/KlInfo;)V
    .locals 5

    .prologue
    .line 52
    const-string v0, "xl = ?"

    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 54
    iget-object v2, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v3, "kl_info_table_1"

    invoke-virtual {p1}, Lcom/kingroot/loader/sdk/KlInfo;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/kingroot/kinguser/bka;->c(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public aeD()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 64
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 66
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "xl"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "xa"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "xb"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "xc"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "xd"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "xe"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "xf"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "xg"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "xi"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "xj"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "xk"

    aput-object v1, v2, v0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bka;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    :try_start_1
    const-string v1, "kl_info_table_1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 86
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    :cond_0
    :try_start_3
    new-instance v1, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-direct {v1}, Lcom/kingroot/loader/sdk/KlInfo;-><init>()V

    .line 90
    const-string v3, "xl"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 91
    const-string v3, "xa"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 92
    const-string v3, "xb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 93
    const-string v3, "xj"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 94
    const-string v3, "xk"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 95
    const-string v3, "xc"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 96
    const-string v3, "xd"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 97
    const-string v3, "xe"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 98
    const-string v3, "xf"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 99
    const-string v3, "xg"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 100
    const-string v3, "xi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 101
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    .line 110
    :cond_1
    if-eqz v2, :cond_2

    .line 112
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 117
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 122
    :cond_3
    :goto_2
    return-object v9

    .line 102
    :catch_0
    move-exception v1

    .line 103
    :try_start_7
    invoke-static {v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    .line 108
    :goto_3
    :try_start_8
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 110
    if-eqz v1, :cond_4

    .line 112
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 115
    :cond_4
    :goto_4
    if-eqz v8, :cond_3

    .line 117
    :try_start_a
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 118
    :catch_2
    move-exception v0

    goto :goto_2

    .line 110
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_5

    .line 112
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 115
    :cond_5
    :goto_6
    if-eqz v8, :cond_6

    .line 117
    :try_start_c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 118
    :cond_6
    :goto_7
    throw v0

    .line 113
    :catch_3
    move-exception v1

    goto :goto_1

    .line 118
    :catch_4
    move-exception v0

    goto :goto_2

    .line 113
    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_6

    .line 118
    :catch_7
    move-exception v1

    goto :goto_7

    .line 110
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 107
    :catch_8
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3
.end method

.method public aeE()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 126
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 128
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "xa"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "xb"

    aput-object v1, v2, v0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bka;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 136
    :try_start_1
    const-string v1, "kl_config_1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 137
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 138
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    :cond_0
    :try_start_3
    const-string v1, "xa"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 142
    const-string v3, "xb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 144
    new-instance v4, Lcom/kingroot/loader/sdk/KlConfig;

    invoke-direct {v4, v1, v3}, Lcom/kingroot/loader/sdk/KlConfig;-><init>(II)V

    .line 145
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    :goto_0
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :cond_1
    if-eqz v2, :cond_2

    .line 156
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 159
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 161
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 166
    :cond_3
    :goto_2
    return-object v9

    .line 146
    :catch_0
    move-exception v1

    .line 147
    :try_start_7
    invoke-static {v1}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 151
    :catch_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    .line 152
    :goto_3
    :try_start_8
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 154
    if-eqz v1, :cond_4

    .line 156
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 159
    :cond_4
    :goto_4
    if-eqz v8, :cond_3

    .line 161
    :try_start_a
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 162
    :catch_2
    move-exception v0

    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_5

    .line 156
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 159
    :cond_5
    :goto_6
    if-eqz v8, :cond_6

    .line 161
    :try_start_c
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 162
    :cond_6
    :goto_7
    throw v0

    .line 157
    :catch_3
    move-exception v1

    goto :goto_1

    .line 162
    :catch_4
    move-exception v0

    goto :goto_2

    .line 157
    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_6

    .line 162
    :catch_7
    move-exception v1

    goto :goto_7

    .line 154
    :catchall_1
    move-exception v1

    move-object v2, v8

    move-object v8, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_5

    .line 151
    :catch_8
    move-exception v0

    move-object v1, v8

    goto :goto_3

    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3
.end method

.method public b(I)V
    .locals 5

    .prologue
    .line 42
    const-string v0, "xl = ?"

    .line 43
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 44
    iget-object v2, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v3, "kl_info_table_1"

    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/bka;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    const-string v0, "xa = ?"

    .line 48
    iget-object v2, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v3, "kl_config_1"

    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/bka;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public b(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;)V
    .locals 3

    .prologue
    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v1, "kl_info_table_1"

    invoke-virtual {p1}, Lcom/kingroot/loader/sdk/KlInfo;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bka;->d(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 30
    :cond_0
    if-eqz p2, :cond_1

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bkb;->byR:Lcom/kingroot/kinguser/bka;

    const-string v1, "kl_config_1"

    invoke-virtual {p2}, Lcom/kingroot/loader/sdk/KlConfig;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bka;->d(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 33
    :cond_1
    return-void
.end method
