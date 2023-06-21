.class public Lcom/kingroot/kinguser/bvg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bPz:Lcom/kingroot/kinguser/bvg;


# instance fields
.field private bPA:Lcom/kingroot/kinguser/bvm;

.field private bPB:Lcom/kingroot/kinguser/bvl;

.field private bPC:Lcom/kingroot/kinguser/bvi;

.field private bPy:Lcom/kingroot/kinguser/bvf;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/bvf;

    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bvf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPy:Lcom/kingroot/kinguser/bvf;

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/bvm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvm;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPA:Lcom/kingroot/kinguser/bvm;

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/bvl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvl;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPB:Lcom/kingroot/kinguser/bvl;

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/bvi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvi;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPC:Lcom/kingroot/kinguser/bvi;

    .line 42
    return-void
.end method

.method public static aiv()Lcom/kingroot/kinguser/bvg;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/kinguser/bvg;->bPz:Lcom/kingroot/kinguser/bvg;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/kingroot/kinguser/bvg;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bvg;->bPz:Lcom/kingroot/kinguser/bvg;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bvg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bvg;->bPz:Lcom/kingroot/kinguser/bvg;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bvg;->bPz:Lcom/kingroot/kinguser/bvg;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 117
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPy:Lcom/kingroot/kinguser/bvf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    goto :goto_0
.end method

.method public aiw()Lcom/kingroot/kinguser/bvm;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPA:Lcom/kingroot/kinguser/bvm;

    return-object v0
.end method

.method public aix()Lcom/kingroot/kinguser/bvi;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPC:Lcom/kingroot/kinguser/bvi;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    const/4 v1, -0x1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPy:Lcom/kingroot/kinguser/bvf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 90
    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvg;->bPy:Lcom/kingroot/kinguser/bvf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 68
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bvg;->bPy:Lcom/kingroot/kinguser/bvf;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bvf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 105
    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 112
    :goto_0
    monitor-exit p0

    return-object v0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nm(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/bvg;->e(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
