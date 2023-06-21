.class public Lcom/kingroot/kinguser/bah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bdL:Lcom/kingroot/kinguser/bai;

.field private final bdM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bdN:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/bai;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bah;->bdL:Lcom/kingroot/kinguser/bai;

    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/bah;->Vr()V

    .line 41
    return-void
.end method

.method private declared-synchronized Vr()V
    .locals 4

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bah;->Vs()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 49
    if-eqz v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v2, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    iget v3, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private Vs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 158
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 160
    const/16 v0, 0xf

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "xa"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "xb"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "xc"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "xd"

    aput-object v1, v2, v0

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

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdL:Lcom/kingroot/kinguser/bai;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bai;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 182
    :try_start_1
    const-string v1, "plugin_upgrade_3"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 183
    if-eqz v1, :cond_1

    .line 184
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    :cond_0
    :try_start_3
    new-instance v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-direct {v2}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;-><init>()V

    .line 188
    const-string v3, "xa"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    .line 189
    const-string v3, "xb"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    .line 190
    const-string v3, "xc"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->packageMd5:Ljava/lang/String;

    .line 191
    const-string v3, "xd"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->size:I

    .line 192
    const-string v3, "xe"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->url:Ljava/lang/String;

    .line 193
    const-string v3, "xf"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    .line 194
    const-string v3, "xg"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    .line 195
    const-string v3, "xi"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdP:Ljava/lang/String;

    .line 196
    const-string v3, "xk"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdQ:Ljava/lang/String;

    .line 197
    const-string v3, "xl"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pf:I

    .line 198
    const-string v3, "xm"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    .line 199
    const-string v3, "xn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdS:J

    .line 200
    const-string v3, "xo"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    .line 201
    const-string v3, "xp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdU:I

    .line 202
    const-string v3, "xq"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->lastDownloadTime:J

    .line 203
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 205
    :goto_0
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    .line 211
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 214
    :goto_1
    return-object v9

    .line 207
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 210
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    .line 211
    invoke-static {v8}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    .line 211
    invoke-static {v8}, Lcom/kingroot/kinguser/za;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 210
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v8, v0

    move-object v0, v2

    goto :goto_3

    .line 207
    :catch_1
    move-exception v1

    move-object v10, v8

    move-object v8, v0

    move-object v0, v10

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v8, v0

    move-object v0, v1

    goto :goto_2

    .line 204
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdL:Lcom/kingroot/kinguser/bai;

    const-string v1, "plugin_upgrade_3"

    invoke-virtual {p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bai;->c(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 143
    return-void
.end method

.method private c(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V
    .locals 5

    .prologue
    .line 152
    const-string v0, "xa = ?"

    .line 153
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 154
    iget-object v2, p0, Lcom/kingroot/kinguser/bah;->bdL:Lcom/kingroot/kinguser/bai;

    const-string v3, "plugin_upgrade_3"

    invoke-virtual {p1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->transferToContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/kingroot/kinguser/bai;->b(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private delete(I)V
    .locals 5

    .prologue
    .line 146
    const-string v0, "xa = ?"

    .line 147
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

    .line 148
    iget-object v2, p0, Lcom/kingroot/kinguser/bah;->bdL:Lcom/kingroot/kinguser/bai;

    const-string v3, "plugin_upgrade_3"

    invoke-virtual {v2, v3, v0, v1}, Lcom/kingroot/kinguser/bai;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private kj(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 224
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized Z(II)Z
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget v1, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdR:I

    .line 105
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bah;->c(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v0, 0x1

    .line 109
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)Z
    .locals 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 80
    :goto_0
    monitor-exit p0

    return v0

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bah;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)Z
    .locals 3

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 127
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    iget v2, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    if-ge v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    iget v2, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    iget v1, p1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    iget v2, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    if-eq v1, v2, :cond_1

    .line 132
    iget-object v0, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bah;->kj(Ljava/lang/String;)V

    .line 134
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bah;->c(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/4 v0, 0x1

    .line 138
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpgradeInfoList()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hH(I)Z
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/bah;->bdM:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/bah;->bdN:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bah;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
