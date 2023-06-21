.class public Lcom/kingroot/kinguser/bis;
.super Lcom/kingroot/kinguser/rw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bis$b;,
        Lcom/kingroot/kinguser/bis$a;
    }
.end annotation


# instance fields
.field private final apU:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rw;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bis;->apU:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/dao/ExploitLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    const-string v0, "_id"

    .line 110
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 111
    const-string v0, "aa"

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 113
    const-string v1, "ab"

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 115
    const-string v1, "ac"

    .line 116
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 117
    const-string v1, "ad"

    .line 118
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 122
    :cond_2
    :try_start_1
    new-instance v1, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;

    .line 123
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 124
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 125
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :goto_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    .line 129
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bis;Landroid/database/Cursor;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bis;->a(Landroid/database/Cursor;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected H(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v1, Lcom/kingroot/kinguser/rx$a;

    const-string v2, "exploit_log"

    sget-object v3, Lcom/kingroot/kinguser/bis$b;->COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/bis$b;->GK:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/kingroot/kinguser/rx$a;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/kingroot/kinguser/bis$a;

    const-string v2, "xmod_db"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/kingroot/kinguser/bis$a;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public a(Lcom/kingroot/kinguser/xmod/dao/ExploitLog;)V
    .locals 4

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string v1, "aa"

    iget-wide v2, p1, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v1, "ab"

    iget v2, p1, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->bux:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v1, "ac"

    iget-object v2, p1, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "ad"

    iget-object v2, p1, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->akw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/kingroot/kinguser/bis;->apU:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    const-string v2, "exploit_log"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/kingroot/kinguser/bis;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lcom/kingroot/kinguser/sb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public adj()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/dao/ExploitLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v10, p0, Lcom/kingroot/kinguser/bis;->apU:Ljava/lang/Object;

    monitor-enter v10

    .line 83
    :try_start_0
    const-string v1, "exploit_log"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/kingroot/kinguser/bis$1;

    invoke-direct {v8, p0, v9}, Lcom/kingroot/kinguser/bis$1;-><init>(Lcom/kingroot/kinguser/bis;Ljava/util/List;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/bis;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/rw$a;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/sc; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    :try_start_1
    monitor-exit v10

    .line 97
    return-object v9

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
