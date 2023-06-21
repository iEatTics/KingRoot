.class public Lcom/kingroot/kinguser/bse;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "CREATE TABLE IF NOT EXISTS common_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,jump_type INTEGER,persentspent INTEGER,uniquekey TEXT,ad_phase INTEGER,is_shareable TEXT,pos_id INTEGER,activity_id TEXT,template_type INTEGER,text1 TEXT,text2 TEXT,text3 TEXT,text4 TEXT,image_url1 TEXT,image_url2 TEXT,image_url3 TEXT,content_type INTEGER,jump_url TEXT,packagename TEXT,expire_time INTEGER,context BLOB,max_display_time INTEGER,max_click_time INTEGER,effective_time INTEGER,continuousExposureTime INTEGER,exposureInterval INTEGER,scenes INTEGER,weight INTEGER,predisplaytime INTEGER,videoUrl TEXT,zipUrl TEXT)"

    .line 80
    const-string v0, "CommonAdvertiseDBCreator"

    const-string v1, "CREATE_GAME_LIST_DB_SQL:CREATE TABLE IF NOT EXISTS common_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,jump_type INTEGER,persentspent INTEGER,uniquekey TEXT,ad_phase INTEGER,is_shareable TEXT,pos_id INTEGER,activity_id TEXT,template_type INTEGER,text1 TEXT,text2 TEXT,text3 TEXT,text4 TEXT,image_url1 TEXT,image_url2 TEXT,image_url3 TEXT,content_type INTEGER,jump_url TEXT,packagename TEXT,expire_time INTEGER,context BLOB,max_display_time INTEGER,max_click_time INTEGER,effective_time INTEGER,continuousExposureTime INTEGER,exposureInterval INTEGER,scenes INTEGER,weight INTEGER,predisplaytime INTEGER,videoUrl TEXT,zipUrl TEXT)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "CREATE TABLE IF NOT EXISTS common_advertise_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,jump_type INTEGER,persentspent INTEGER,uniquekey TEXT,ad_phase INTEGER,is_shareable TEXT,pos_id INTEGER,activity_id TEXT,template_type INTEGER,text1 TEXT,text2 TEXT,text3 TEXT,text4 TEXT,image_url1 TEXT,image_url2 TEXT,image_url3 TEXT,content_type INTEGER,jump_url TEXT,packagename TEXT,expire_time INTEGER,context BLOB,max_display_time INTEGER,max_click_time INTEGER,effective_time INTEGER,continuousExposureTime INTEGER,exposureInterval INTEGER,scenes INTEGER,weight INTEGER,predisplaytime INTEGER,videoUrl TEXT,zipUrl TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 85
    const-string v0, "DROP TABLE IF EXISTS common_advertise_table"

    .line 86
    const-string v0, "DROP TABLE IF EXISTS common_advertise_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bse;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bse;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bse;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bse;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bse;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bse;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    return-void
.end method
