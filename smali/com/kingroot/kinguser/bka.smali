.class public Lcom/kingroot/kinguser/bka;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final byG:Ljava/lang/Object;

.field private static volatile byR:Lcom/kingroot/kinguser/bka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bka;->byR:Lcom/kingroot/kinguser/bka;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bka;->byG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    const-string v0, "kingloaderv2.db"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bka;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 85
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v1, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_2
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    if-eqz v1, :cond_0

    .line 91
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bka;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    invoke-static {p1, p2, p3}, Lcom/kingroot/kinguser/bka;->b(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    .line 144
    :try_start_0
    const-string v2, "kl_info_table_1"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlInfo;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/kingroot/kinguser/bka;->c(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlConfig;

    .line 154
    :try_start_1
    const-string v2, "kl_config_1"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlConfig;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS kl_info_table_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS kl_config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 170
    if-le p1, v3, :cond_4

    .line 171
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "xl"

    aput-object v0, v2, v5

    const-string v0, "xa"

    aput-object v0, v2, v1

    const-string v0, "xb"

    aput-object v0, v2, v3

    const-string v0, "xc"

    aput-object v0, v2, v4

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

    .line 187
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kl_info_table_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 188
    if-eqz v1, :cond_1

    .line 189
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 192
    :cond_0
    :try_start_2
    new-instance v0, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-direct {v0}, Lcom/kingroot/loader/sdk/KlInfo;-><init>()V

    .line 193
    const-string v2, "xl"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 194
    const-string v2, "xa"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 195
    const-string v2, "xb"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 196
    const-string v2, "xj"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostId:I

    .line 197
    const-string v2, "xk"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->buildHostVersion:I

    .line 198
    const-string v2, "xc"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 199
    const-string v2, "xd"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 200
    const-string v2, "xe"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 201
    const-string v2, "xf"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 202
    const-string v2, "xg"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 203
    const-string v2, "xi"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 204
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 206
    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :cond_1
    if-eqz v1, :cond_2

    .line 213
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 256
    :cond_2
    :goto_1
    return-object v9

    .line 208
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 209
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 211
    if-eqz v1, :cond_2

    .line 213
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_3

    .line 213
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 214
    :cond_3
    :goto_4
    throw v0

    .line 217
    :cond_4
    if-ne p1, v1, :cond_2

    .line 219
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "xa"

    aput-object v0, v2, v5

    const-string v0, "xb"

    aput-object v0, v2, v1

    const-string v0, "xc"

    aput-object v0, v2, v3

    const-string v0, "xd"

    aput-object v0, v2, v4

    const/4 v0, 0x4

    const-string v1, "xi"

    aput-object v1, v2, v0

    .line 229
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kl_info_table_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 230
    if-eqz v8, :cond_6

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 234
    :cond_5
    :try_start_9
    new-instance v0, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-direct {v0}, Lcom/kingroot/loader/sdk/KlInfo;-><init>()V

    .line 235
    const-string v1, "xa"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    .line 236
    const-string v1, "xb"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    .line 237
    const-string v1, "xc"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    .line 238
    const-string v1, "xd"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    .line 239
    const-string v1, "xi"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->versionName:Ljava/lang/String;

    .line 240
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 241
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 243
    :goto_5
    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v0

    if-nez v0, :cond_5

    .line 248
    :cond_6
    if-eqz v8, :cond_2

    .line 250
    :try_start_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    .line 251
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 245
    :catch_3
    move-exception v0

    .line 246
    :try_start_c
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 248
    if-eqz v8, :cond_2

    .line 250
    :try_start_d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    .line 251
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 248
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_7

    .line 250
    :try_start_e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 251
    :cond_7
    :goto_6
    throw v0

    .line 214
    :catch_5
    move-exception v0

    goto/16 :goto_1

    :catch_6
    move-exception v1

    goto/16 :goto_4

    .line 251
    :catch_7
    move-exception v1

    goto :goto_6

    .line 242
    :catch_8
    move-exception v0

    goto :goto_5

    .line 211
    :catchall_2
    move-exception v0

    goto/16 :goto_3

    .line 208
    :catch_9
    move-exception v0

    goto/16 :goto_2

    .line 205
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method

.method public static bA(Landroid/content/Context;)Lcom/kingroot/kinguser/bka;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/kingroot/kinguser/bka;->byR:Lcom/kingroot/kinguser/bka;

    if-nez v0, :cond_1

    .line 103
    const-class v1, Lcom/kingroot/kinguser/bka;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bka;->byR:Lcom/kingroot/kinguser/bka;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/kingroot/kinguser/bka;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bka;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/bka;->byR:Lcom/kingroot/kinguser/bka;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bka;->byR:Lcom/kingroot/kinguser/bka;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 260
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 262
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "xa"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "xb"

    aput-object v1, v2, v0

    .line 268
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kl_config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    .line 270
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    :cond_0
    :try_start_2
    const-string v0, "xa"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 274
    const-string v2, "xb"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 276
    new-instance v3, Lcom/kingroot/loader/sdk/KlConfig;

    invoke-direct {v3, v0, v2}, Lcom/kingroot/loader/sdk/KlConfig;-><init>(II)V

    .line 277
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    :goto_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :cond_1
    if-eqz v1, :cond_2

    .line 286
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 291
    :cond_2
    :goto_1
    return-object v9

    .line 281
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 282
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 284
    if-eqz v1, :cond_2

    .line 286
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 287
    :catch_1
    move-exception v0

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_3

    .line 286
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 287
    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 284
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 281
    :catch_4
    move-exception v0

    goto :goto_2

    .line 278
    :catch_5
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public c(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 331
    sget-object v2, Lcom/kingroot/kinguser/bka;->byG:Ljava/lang/Object;

    monitor-enter v2

    .line 332
    const/4 v1, 0x0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bka;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 335
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    if-eqz v1, :cond_0

    .line 341
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    if-eqz v1, :cond_0

    .line 341
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 342
    :catch_1
    move-exception v0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 341
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 342
    :cond_1
    :goto_1
    :try_start_6
    throw v0

    .line 345
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 342
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 313
    sget-object v2, Lcom/kingroot/kinguser/bka;->byG:Ljava/lang/Object;

    monitor-enter v2

    .line 314
    const/4 v1, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bka;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 317
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v1, :cond_0

    .line 323
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 327
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    if-eqz v1, :cond_0

    .line 323
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 323
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 324
    :cond_1
    :goto_1
    :try_start_6
    throw v0

    .line 327
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 324
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public d(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 295
    sget-object v2, Lcom/kingroot/kinguser/bka;->byG:Ljava/lang/Object;

    monitor-enter v2

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bka;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 299
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-eqz v1, :cond_0

    .line 305
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 309
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    :try_start_3
    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->d(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    if-eqz v1, :cond_0

    .line 305
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 305
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    :cond_1
    :goto_1
    :try_start_6
    throw v0

    .line 309
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 306
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 114
    const-string v0, "CREATE TABLE IF NOT EXISTS kl_info_table_1 (xl INTEGER PRIMARY KEY,xa TEXT,xb INTEGER,xc TEXT,xd TEXT,xe TEXT,xf TEXT,xg INTEGER,xi TEXT,xj INTEGER,xk INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE TABLE IF NOT EXISTS kl_config_1(xa INTEGER PRIMARY KEY,xb INTEGER,xc INTEGER,xd INTEGER,xe INTEGER,xf LONG,xg LONG,xh TEXT,xi TEXT,xj TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bka;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 126
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bka;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 121
    return-void
.end method
