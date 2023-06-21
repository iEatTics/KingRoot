.class Lcom/kingroot/kinguser/bai;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final avD:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bai;->avD:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string v0, "klupgradev2.db"

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bai;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 69
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bai;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    :goto_1
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/bai;->b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 111
    :try_start_1
    const-string v2, "plugin_upgrade_3"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    goto :goto_2

    .line 119
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS plugin_upgrade_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    goto :goto_0

    .line 103
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x0

    .line 127
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 129
    if-le p1, v4, :cond_0

    move-object v0, v8

    .line 188
    :goto_0
    return-object v0

    .line 132
    :cond_0
    if-ge p1, v3, :cond_1

    move-object v0, v8

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0xf

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "xa"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "xb"

    aput-object v1, v2, v0

    const-string v0, "xc"

    aput-object v0, v2, v3

    const-string v0, "xd"

    aput-object v0, v2, v4

    const/4 v0, 0x4

    const-string v1, "xe"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "xf"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "xg"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "xi"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "xk"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "xl"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "xm"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "xn"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "xo"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "xp"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "xq"

    aput-object v1, v2, v0

    .line 157
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugin_upgrade_"

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

    move-result-object v0

    .line 158
    if-eqz v0, :cond_3

    .line 159
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :cond_2
    :try_start_2
    new-instance v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-direct {v1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;-><init>()V

    .line 163
    const-string v2, "xa"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    .line 164
    const-string v2, "xb"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    .line 165
    const-string v2, "xc"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 166
    const-string v2, "xd"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 167
    const-string v2, "xe"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    .line 168
    const-string v2, "xf"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    .line 169
    const-string v2, "xg"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    .line 170
    const-string v2, "xi"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    .line 171
    const-string v2, "xk"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    .line 172
    const-string v2, "xl"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    .line 173
    const-string v2, "xm"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    .line 174
    const-string v2, "xn"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    .line 175
    const-string v2, "xo"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 176
    const-string v2, "xp"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    .line 177
    const-string v2, "xq"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    .line 178
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 185
    :cond_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    :goto_2
    move-object v0, v8

    .line 188
    goto/16 :goto_0

    .line 182
    :catch_0
    move-exception v0

    move-object v0, v9

    .line 185
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v9}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_4

    .line 182
    :catch_1
    move-exception v1

    goto :goto_3

    .line 179
    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method b(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 216
    sget-object v2, Lcom/kingroot/kinguser/bai;->avD:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    const/4 v1, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bai;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 220
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    monitor-exit v2

    .line 225
    return-void

    .line 222
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 224
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 204
    sget-object v2, Lcom/kingroot/kinguser/bai;->avD:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    const/4 v1, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bai;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 212
    monitor-exit v2

    .line 213
    return-void

    .line 210
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 212
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method c(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 192
    sget-object v2, Lcom/kingroot/kinguser/bai;->avD:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bai;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    monitor-exit v2

    .line 201
    return-void

    .line 198
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 200
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 77
    const-string v0, "CREATE TABLE IF NOT EXISTS plugin_upgrade_3 (xa INTEGER PRIMARY KEY,xb INTEGER,xc TEXT,xd INTEGER,xe TEXT,xf INTEGER,xg TEXT,xi TEXT,xk TEXT,xl INTEGER,xm INTEGER,xn LONG,xo LONG,xp INTEGER,xq LONG)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
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
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bai;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 88
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bai;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 83
    return-void
.end method
