.class public Lcom/kingroot/kinguser/bvh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "CREATE TABLE IF NOT EXISTS software_sdk_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,server_id Long,model_id INTEGER,type INTEGER,title TEXT,category_id INTEGER,content TEXT,button_text TEXT,icon_Url TEXT,icon_big_url TEXT,background_url TEXT,applist BLOB,destination_url TEXT,expire_Time LONG,priority INTEGER,package_Name TEXT,jump_Type INTEGER,jump_Param TEXT,view_id TEXT,topic_id TEXT,is_push TEXT,auto_run TEXT,need_guide INTEGER)"

    .line 69
    const-string v0, "CREATE TABLE IF NOT EXISTS software_sdk_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,server_id Long,model_id INTEGER,type INTEGER,title TEXT,category_id INTEGER,content TEXT,button_text TEXT,icon_Url TEXT,icon_big_url TEXT,background_url TEXT,applist BLOB,destination_url TEXT,expire_Time LONG,priority INTEGER,package_Name TEXT,jump_Type INTEGER,jump_Param TEXT,view_id TEXT,topic_id TEXT,is_push TEXT,auto_run TEXT,need_guide INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 75
    const-string v0, "DROP TABLE IF EXISTS software_sdk_advertise_table"

    .line 78
    const-string v0, "DROP TABLE IF EXISTS software_sdk_advertise_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvh;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvh;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvh;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvh;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvh;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvh;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    return-void
.end method
