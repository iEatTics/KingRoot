.class public Lcom/kingroot/kinguser/bvk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bPD:Lcom/kingroot/kinguser/bvk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bvk;->bPD:Lcom/kingroot/kinguser/bvk;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;I)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 276
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 277
    const-string v1, "pkgName"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "appName"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "version"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "versionCode"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "versionType"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->versionType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "downloadCount"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "size"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "certMD5"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "newVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "fileUrl"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "logoUrl"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "itemType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v1, "describe"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "score"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v1, "expirationTime"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->expirationTime:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "newVersionCode"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v1, "browserUrl"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->browserUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "softwareSource"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceContent:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v1, "softwareSourceUrl"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "sw_type"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->sw_type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const-string v1, "top_flag"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->top_flag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    const-string v1, "plugintype"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->plugintype:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v1, "likepercent"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->likepercent:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "jumpUrl"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "ifSelected"

    iget-boolean v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->ifSelected:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 313
    const-string v1, "jumptype"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v1, "categoryid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v1, "channelid"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "productID"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mProductId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v1, "fileID"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFileId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v1, "SoftID"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v1, "source"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSource:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v1, "custom_title"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "custom_sub_title"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "dest_category_id"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mDestCategoryId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v1, "default_show_type"

    iget v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->defaultShowType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v1, "pic_icon_url"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picIconUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "pic_btn_url"

    iget-object v3, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picBtnUrl:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v1, "apkfileMd5"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "bannerId"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bannerId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :cond_0
    :goto_0
    const-string v1, "str_extend"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 340
    const-string v0, "business_type"

    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v0, "business_data"

    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 342
    const-string v0, "trans_data"

    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 344
    return-object v2

    .line 334
    :catch_0
    move-exception v1

    .line 337
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 178
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    :try_start_0
    const-string v0, "pkgName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 183
    const-string v0, "appName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 184
    const-string v0, "version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 186
    const-string v0, "versionCode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 188
    const-string v0, "versionType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->versionType:I

    .line 194
    const-string v0, "size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 195
    const-string v0, "certMD5"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 197
    const-string v0, "newVersion"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 200
    const-string v0, "fileUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 201
    const-string v0, "logoUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 206
    const-string v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->itemType:I

    .line 207
    const-string v0, "describe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    .line 209
    const-string v0, "downloadCount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    .line 210
    const-string v0, "score"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    .line 215
    const-string v0, "expirationTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->expirationTime:Ljava/lang/String;

    .line 217
    const-string v0, "newVersionCode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 216
    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 220
    const-string v0, "browserUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->browserUrl:Ljava/lang/String;

    .line 221
    const-string v0, "softwareSourceUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 222
    if-eq v0, v2, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceUrl:Ljava/lang/String;

    .line 223
    const-string v0, "softwareSource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 224
    if-eq v0, v2, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceContent:Ljava/lang/String;

    .line 226
    const-string v0, "sw_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->sw_type:I

    .line 228
    const-string v0, "top_flag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->top_flag:I

    .line 230
    const-string v0, "plugintype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 229
    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->plugintype:I

    .line 232
    const-string v0, "likepercent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->likepercent:Ljava/lang/String;

    .line 234
    const-string v0, "jumptype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 233
    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    .line 236
    const-string v0, "jumpUrl"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumpUrl:Ljava/lang/String;

    .line 238
    const-string v0, "ifSelected"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 237
    :goto_3
    iput-boolean v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->ifSelected:Z

    .line 240
    const-string v0, "categoryid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 243
    const-string v0, "channelid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 244
    const-string v0, "productID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mProductId:I

    .line 245
    const-string v0, "fileID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFileId:I

    .line 246
    const-string v0, "SoftID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftId:I

    .line 247
    const-string v0, "source"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSource:I

    .line 249
    const-string v0, "custom_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mTitle:Ljava/lang/String;

    .line 251
    const-string v0, "custom_sub_title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSubTitle:Ljava/lang/String;

    .line 253
    const-string v0, "dest_category_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mDestCategoryId:I

    .line 255
    const-string v0, "default_show_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->defaultShowType:I

    .line 257
    const-string v0, "pic_icon_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picIconUrl:Ljava/lang/String;

    .line 259
    const-string v0, "pic_btn_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picBtnUrl:Ljava/lang/String;

    .line 261
    const-string v0, "apkfileMd5"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    .line 262
    const-string v0, "bannerId"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bannerId:J

    .line 263
    const-string v0, "str_extend"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 264
    if-eqz v1, :cond_5

    array-length v0, v1

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_4
    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    .line 265
    const-string v0, "business_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    .line 266
    const-string v0, "business_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    .line 267
    const-string v0, "trans_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    goto/16 :goto_0

    .line 268
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 222
    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    .line 224
    :cond_3
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 238
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 264
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static aiy()Lcom/kingroot/kinguser/bvk;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/kingroot/kinguser/bvk;->bPD:Lcom/kingroot/kinguser/bvk;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/kingroot/kinguser/bvk;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bvk;->bPD:Lcom/kingroot/kinguser/bvk;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/bvk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvk;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bvk;->bPD:Lcom/kingroot/kinguser/bvk;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bvk;->bPD:Lcom/kingroot/kinguser/bvk;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 62
    :goto_0
    monitor-exit p0

    return v0

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/kingroot/kinguser/bvk;->aq(II)Z

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bvk;->j(Ljava/util/List;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aq(II)Z
    .locals 6

    .prologue
    .line 82
    const-string v0, "categoryid =? and itemType =? "

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v1

    const-string v2, "tb_software_info"

    .line 87
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 86
    invoke-virtual {v1, v2, v0, v3}, Lcom/kingroot/kinguser/bvg;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized ar(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    monitor-enter p0

    :try_start_0
    const-string v0, "SoftwareInfoDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getSoftwareInfoByCategogryId,categoryId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez p1, :cond_1

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 102
    :cond_1
    :try_start_1
    const-string v1, "categoryid=? and itemType=? "

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v3

    const-string v4, "tb_software_info"

    const/4 v5, 0x0

    .line 108
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 107
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/kingroot/kinguser/bvg;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    :cond_2
    if-eqz v2, :cond_0

    .line 123
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_3
    :try_start_4
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 114
    invoke-direct {p0, v2, v1}, Lcom/kingroot/kinguser/bvk;->a(Landroid/database/Cursor;Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)V

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 119
    :catch_0
    move-exception v1

    .line 120
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    if-eqz v2, :cond_0

    .line 123
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    if-eqz v2, :cond_4

    .line 123
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized j(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 78
    :goto_0
    monitor-exit p0

    return v0

    .line 73
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 74
    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/bvk;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v2

    const-string v3, "tb_software_info"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bvg;->e(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
