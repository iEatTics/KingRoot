.class public Lcom/kingroot/kinguser/bvj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 81
    const-string v0, "CREATE TABLE IF NOT EXISTS %1$s (id INTEGER PRIMARY KEY AUTOINCREMENT,pkgName TEXT,appName TEXT,version TEXT,versionCode TEXT,versionType TEXT,versionLabel TEXT,needUpdate TEXT,appPath TEXT,size TEXT,certMD5 TEXT,isSysApp TEXT,newVersion TEXT,softwareStyle TEXT,fileUrl TEXT,logoUrl TEXT,isApk TEXT,isFree TEXT,itemType TEXT,describe TEXT,score TEXT,downloadCount TEXT,ctyId TEXT,ctyName TEXT,newVersionCode TEXT,browserUrl TEXT,expirationTime TEXT,softwareSourceUrl TEXT,softwareSource TEXT,sw_type TEXT,top_flag TEXT,plugintype TEXT,likepercent TEXT,jumpUrl TEXT,ifSelected INTEGER,jumptype TEXT,categoryid TEXT,adType INTEGER,productID INTEGER,fileID INTEGER,SoftID INTEGER,source INTEGER,channelid TEXT,custom_title TEXT,custom_sub_title TEXT,dest_category_id TEXT,default_show_type INTEGER,pic_icon_url TEXT,pic_btn_url TEXT,apkfileMd5 TEXT,bannerId INTEGER,str_extend BLOB,trans_data BLOB,business_data BLOB,business_type INTEGER)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "tb_software_info"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "DROP TABLE IF EXISTS tb_software_info"

    .line 114
    const-string v0, "DROP TABLE IF EXISTS tb_software_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvj;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 100
    if-ge p3, p2, :cond_0

    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvj;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvj;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 89
    if-le p3, p2, :cond_0

    .line 93
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvj;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvj;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    :cond_0
    return-void
.end method
