.class public Lcom/kingroot/kinguser/akn;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static volatile avC:Lcom/kingroot/kinguser/akn;

.field private static final avD:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/akn;->avC:Lcom/kingroot/kinguser/akn;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 26
    const-string v0, "permissions.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 31
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static BI()Lcom/kingroot/kinguser/akn;
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/akn;->avC:Lcom/kingroot/kinguser/akn;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/kingroot/kinguser/akn;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akn;->avC:Lcom/kingroot/kinguser/akn;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/akn;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/akn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/akn;->avC:Lcom/kingroot/kinguser/akn;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/akn;->avC:Lcom/kingroot/kinguser/akn;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0, p2, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 299
    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 302
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 224
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 227
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 229
    return v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    sget-object v1, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 200
    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 203
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 205
    return v0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 201
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    sget-object v1, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/akn;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/aik;)Z
    .locals 5

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    sget-object v3, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    const/4 v1, 0x0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 263
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    invoke-interface {p1, v1}, Lcom/kingroot/kinguser/aik;->o(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 266
    const/4 v0, 0x1

    .line 270
    if-eqz v1, :cond_0

    .line 272
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    :cond_0
    :try_start_3
    monitor-exit v3

    .line 279
    :goto_0
    return v0

    .line 273
    :catch_0
    move-exception v1

    .line 274
    monitor-exit v3

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 267
    :catch_1
    move-exception v2

    .line 270
    if-eqz v1, :cond_1

    .line 272
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    :cond_1
    :try_start_5
    monitor-exit v3

    goto :goto_0

    .line 273
    :catch_2
    move-exception v1

    .line 274
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 270
    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 272
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    :cond_2
    :try_start_7
    throw v1

    .line 273
    :catch_3
    move-exception v1

    .line 274
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 270
    :catchall_2
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    .line 173
    sget-object v2, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v2

    .line 176
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 177
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 180
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 182
    return-wide v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 178
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 132
    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 135
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 137
    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 103
    sget-object v1, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/akn;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public gW(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    sget-object v1, Lcom/kingroot/kinguser/akn;->avD:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akn;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 244
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 247
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 248
    return v0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 245
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "CREATE TABLE IF NOT EXISTS apps (pkgName varchar(300) primary key,appName varchar(200),rtime integer,rule integer,vtime LONG)"

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE IF NOT EXISTS permission_log (_id INTEGER PRIMARY KEY,time INTEGER,pkgname TEXT,appname TEXT,permtype INTEGER,permstate INTEGER)"

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE IF NOT EXISTS silent_install_log (_id INTEGER PRIMARY KEY AUTOINCREMENT,calling_uid INTEGER,calling_pkg_name TEXT,calling_app_name TEXT,install_pkg_name TEXT,install_app_name TEXT,permstatus INTEGER,time INTEGER)"

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE IF NOT EXISTS silent_install_perm (pkgName varchar(300) primary key,rtime LONG,rule integer,vtime integer)"

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 60
    const-string v0, "CREATE TABLE IF NOT EXISTS url_check_log (_id INTEGER PRIMARY KEY AUTOINCREMENT,attr_evil_type INTEGER,attr_url_str TEXT,attr_intercept_count INTEGER,attr_intercept_time INTEGER,attr_has_handle INTEGER,attr_host TEXT)"

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE IF NOT EXISTS url_check_user_rule (_id INTEGER PRIMARY KEY AUTOINCREMENT,attr_type INTEGER,attr_data TEXT,attr_flag INTEGER,attr_allow INTEGER)"

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/akn;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 69
    if-ge p2, p3, :cond_0

    .line 70
    const-string v0, "permission_log"

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/akn;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 74
    :cond_0
    return-void
.end method
