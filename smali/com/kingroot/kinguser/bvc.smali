.class public Lcom/kingroot/kinguser/bvc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bOY:Lcom/kingroot/kinguser/bvc;


# instance fields
.field private bOZ:Lcom/kingroot/kinguser/bvt;

.field private bPa:Ljava/lang/Object;

.field private bPb:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvc;->bPa:Ljava/lang/Object;

    .line 117
    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lcom/kingroot/kinguser/bvc;->bPb:J

    .line 127
    new-instance v0, Lcom/kingroot/kinguser/bvt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvt;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    .line 128
    return-void
.end method

.method private D(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bup;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    if-nez p1, :cond_0

    move-object v0, v2

    .line 1561
    :goto_0
    return-object v0

    .line 1539
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 1561
    goto :goto_0

    .line 1539
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bup;

    .line 1540
    iget-object v1, v0, Lcom/kingroot/kinguser/bup;->bOJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;

    .line 1541
    new-instance v4, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;-><init>()V

    .line 1542
    iget v5, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->id:I

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->kn(I)V

    .line 1543
    iget-object v5, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->setTitle(Ljava/lang/String;)V

    .line 1544
    iget v5, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->count:I

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->ko(I)V

    .line 1545
    iget-object v5, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->icon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->ni(Ljava/lang/String;)V

    .line 1546
    iget-object v5, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->vecSubtitle:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 1547
    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->vecSubtitle:Ljava/util/ArrayList;

    .line 1549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1550
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1555
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->nj(Ljava/lang/String;)V

    .line 1557
    :cond_2
    iget-object v1, v0, Lcom/kingroot/kinguser/bup;->bOK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->updatetime:I

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->cI(J)V

    .line 1558
    iget-object v0, v0, Lcom/kingroot/kinguser/bup;->bOK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidCategoryExpand;->ispush:I

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;->kp(I)V

    .line 1559
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1550
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1551
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvc;)Lcom/kingroot/kinguser/bvt;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    return-object v0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;I)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 4

    .prologue
    .line 1420
    if-nez p0, :cond_0

    .line 1421
    const/4 v0, 0x0

    .line 1448
    :goto_0
    return-object v0

    .line 1423
    :cond_0
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 1424
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    .line 1425
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture1:Ljava/lang/String;

    :goto_1
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 1426
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerId:J

    iput-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bannerId:J

    .line 1427
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->browserUrl:Ljava/lang/String;

    .line 1428
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->expirationTime:Ljava/lang/String;

    .line 1429
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 1430
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    long-to-int v0, v2

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mDestCategoryId:I

    .line 1432
    const/4 v0, 0x3

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->itemType:I

    .line 1434
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->defaultShowType:I

    .line 1435
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture3:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picBtnUrl:Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture2:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picIconUrl:Ljava/lang/String;

    .line 1437
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->activityId:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->activityID:Ljava/lang/String;

    .line 1439
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 1440
    if-eqz v0, :cond_1

    .line 1441
    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 1442
    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 1443
    iget v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 1444
    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 1445
    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 1446
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    :cond_1
    move-object v0, v1

    .line 1448
    goto :goto_0

    .line 1425
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;II)Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 1244
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;-><init>()V

    .line 1246
    if-eqz p2, :cond_0

    if-ne p2, v4, :cond_1

    .line 1247
    :cond_0
    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nProductId:I

    .line 1248
    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSoftId:I

    .line 1249
    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nFileId:I

    .line 1250
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSpeed:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nAvgSpeed:I

    .line 1251
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->url:Ljava/lang/String;

    .line 1252
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mErrorCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errorcode:I

    .line 1253
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnetname:Ljava/lang/String;

    .line 1254
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOr:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->value()I

    move-result v1

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnettype:I

    .line 1255
    invoke-static {}, Lcom/kingroot/kinguser/buv;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnetname:Ljava/lang/String;

    .line 1256
    invoke-static {}, Lcom/kingroot/kinguser/buv;->ain()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->value()I

    move-result v1

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnettype:I

    .line 1258
    iget-wide v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    long-to-int v1, v2

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownSize:I

    .line 1259
    iget-wide v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    long-to-int v1, v2

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->filesize:I

    .line 1260
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOs:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errormsg:Ljava/lang/String;

    .line 1261
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mErrorRssi:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->rssi:I

    .line 1266
    iget-wide v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mStartTime:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downloadStartTime:J

    .line 1267
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mExtraInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realChannelId:Ljava/lang/String;

    .line 1270
    :cond_1
    int-to-byte v1, p2

    iput-byte v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSuccess:B

    .line 1271
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->categoryid:I

    .line 1272
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mPos:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->pos:I

    .line 1273
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bvc;->ait()I

    move-result v1

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->Networkstandard:I

    .line 1274
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->channelId:Ljava/lang/String;

    .line 1275
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mComeFrom:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->come_from:I

    .line 1276
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realPkgName:Ljava/lang/String;

    .line 1278
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->ext_str:Ljava/lang/String;

    .line 1279
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->businessType:I

    .line 1280
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->backendExtendInfo:[B

    .line 1281
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->frontendExtendInfo:[B

    .line 1284
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->silentType:I

    .line 1290
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mProductId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nProductId:I

    .line 1291
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSoftId:I

    .line 1292
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFileId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nFileId:I

    .line 1294
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    .line 1295
    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bva;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    .line 1296
    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bva;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    .line 1297
    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bva;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    .line 1298
    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bva;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    .line 1299
    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    .line 1300
    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSource:I

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    .line 1301
    iget-object v2, p1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->channelId:Ljava/lang/String;

    .line 1302
    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 1303
    if-ne p3, v5, :cond_3

    .line 1304
    iput-byte v5, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownType:B

    .line 1318
    :cond_2
    :goto_0
    return-object v0

    .line 1305
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 1306
    iput-byte v4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownType:B

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvc;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1534
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvc;->D(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvc;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1212
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bvc;->k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/kingroot/kinguser/bun;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 540
    invoke-static {}, Lcom/kingroot/kinguser/bvk;->aiy()Lcom/kingroot/kinguser/bvk;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/kingroot/kinguser/bvk;->ar(II)Ljava/util/List;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 543
    if-eqz p2, :cond_0

    .line 544
    invoke-interface {p2, v2, v0}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bvc;->b(ILcom/kingroot/kinguser/bun;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvc;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvc;->cq(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bue;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "Lcom/kingroot/kinguser/bue",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lcom/kingroot/kinguser/bvc$10;

    invoke-direct {v0, p0, p2, p3}, Lcom/kingroot/kinguser/bvc$10;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bue;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bui;)V

    .line 517
    return-void
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1360
    if-nez p0, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return v0

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1370
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1376
    iget v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    if-ne v2, v1, :cond_2

    .line 1377
    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1381
    :cond_2
    iget v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1385
    :cond_3
    iget v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 1391
    goto :goto_0
.end method

.method public static ais()Lcom/kingroot/kinguser/bvc;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/kingroot/kinguser/bvc;->bOY:Lcom/kingroot/kinguser/bvc;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/kingroot/kinguser/bvc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvc;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bvc;->bOY:Lcom/kingroot/kinguser/bvc;

    .line 123
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bvc;->bOY:Lcom/kingroot/kinguser/bvc;

    return-object v0
.end method

.method public static b(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1395
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1396
    if-nez p0, :cond_0

    .line 1397
    const-string v0, "BannerDetail is null"

    .line 1416
    :goto_0
    return-object v0

    .line 1400
    :cond_0
    const-string v0, "BannerDetail = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|bannerId|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|jumpType|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|jumpUrl|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|categoryId|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1402
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|expireTime|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "|pictureUrl|"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|showType|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|activityID|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->activityId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 1406
    if-eqz v0, :cond_2

    .line 1407
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|pkgName|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|channelId|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|softName|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1410
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|versionName|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|versionCode|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1416
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture1:Ljava/lang/String;

    goto/16 :goto_1

    .line 1413
    :cond_2
    const-string v0, "|softkey is null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private b(ILcom/kingroot/kinguser/bun;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetBanner;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetBanner;-><init>()V

    .line 583
    int-to-long v2, p1

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetBanner;->adsPosition:J

    .line 584
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetBanner;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetBanner;-><init>()V

    .line 585
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v2

    const/16 v3, 0x8b1

    .line 586
    new-instance v4, Lcom/kingroot/kinguser/bvc$11;

    invoke-direct {v4, p0, p2, p1}, Lcom/kingroot/kinguser/bvc$11;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bun;I)V

    .line 585
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    .line 651
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bvc;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvc;->cr(Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;JLcom/kingroot/kinguser/bue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "J",
            "Lcom/kingroot/kinguser/bue",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v0

    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bvm;->ku(I)I

    move-result v0

    .line 156
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    if-eq v0, v1, :cond_0

    .line 157
    invoke-direct {p0, p1, p4, v7}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bue;Z)V

    .line 201
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v0

    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bvm;->kt(I)J

    move-result-wide v0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 164
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_2

    .line 167
    :goto_1
    sub-long v0, v2, v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_5

    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    if-nez v0, :cond_5

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/bvk;->aiy()Lcom/kingroot/kinguser/bvk;

    move-result-object v0

    .line 170
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    invoke-virtual {v0, v1, v6}, Lcom/kingroot/kinguser/bvk;->ar(II)Ljava/util/List;

    move-result-object v0

    .line 169
    check-cast v0, Ljava/util/ArrayList;

    .line 171
    invoke-static {v0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bvg;->aix()Lcom/kingroot/kinguser/bvi;

    move-result-object v1

    .line 173
    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bvi;->ks(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    new-instance v3, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;-><init>()V

    .line 175
    invoke-static {v1}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 178
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;

    .line 179
    iget-boolean v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->hasNextPage:Z

    iput-boolean v2, v3, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->hasNextPage:Z

    .line 180
    iget v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->nextPageIndex:I

    if-nez v2, :cond_3

    iget v2, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    :goto_2
    iput v2, v3, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->nextBeginPos:I

    .line 182
    iget-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->topicId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    :try_start_0
    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->topicId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->groupId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_3
    invoke-interface {p4, v6, v0, p1, v3}, Lcom/kingroot/kinguser/bue;->a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bvm;->aiz()J

    move-result-wide p2

    goto :goto_1

    .line 181
    :cond_3
    iget v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->nextPageIndex:I

    goto :goto_2

    .line 191
    :cond_4
    iput-boolean v7, v3, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->hasNextPage:Z

    .line 192
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    iput v1, v3, Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;->nextBeginPos:I

    goto :goto_3

    .line 199
    :cond_5
    invoke-direct {p0, p1, p4, v7}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bue;Z)V

    goto/16 :goto_0

    .line 185
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private cq(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .line 1197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1203
    return-void

    .line 1197
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 1198
    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    .line 1199
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1200
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private cr(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    .line 1235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1241
    return-void

    .line 1235
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;

    .line 1236
    iget-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nick_name:Ljava/lang/String;

    .line 1237
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1238
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1225
    :goto_0
    return-object v1

    .line 1216
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xd

    if-lt v0, v3, :cond_0

    goto :goto_0
.end method

.method private k(IJ)Z
    .locals 4

    .prologue
    .line 558
    const-string v0, "SeachSoftEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkFetchBannerDataCondition():: [categoryId,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 573
    invoke-static {}, Lcom/kingroot/kinguser/bvg;->aiv()Lcom/kingroot/kinguser/bvg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bvg;->aiw()Lcom/kingroot/kinguser/bvm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/kingroot/kinguser/bvm;->kv(I)J

    move-result-wide v2

    .line 572
    sub-long/2addr v0, v2

    .line 573
    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(BLjava/lang/String;Lcom/kingroot/kinguser/bud;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bud",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 930
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 936
    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;-><init>()V

    .line 937
    iput-byte p1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->type:B

    .line 938
    iput-object p2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSearchSuggest;->keyWord:Ljava/lang/String;

    .line 939
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSearchSuggest;-><init>()V

    .line 940
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v2

    const/16 v3, 0x899

    .line 941
    new-instance v4, Lcom/kingroot/kinguser/bvc$2;

    invoke-direct {v4, p0, p3}, Lcom/kingroot/kinguser/bvc$2;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bud;)V

    .line 940
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    goto :goto_0
.end method

.method public a(ILcom/kingroot/kinguser/buf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/kingroot/kinguser/buf",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/common/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1453
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;-><init>()V

    .line 1454
    iput p1, v1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryType:I

    .line 1455
    iput v3, v1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->type:I

    .line 1456
    const-string v0, ""

    .line 1457
    if-eqz v1, :cond_0

    .line 1458
    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->aiD()Ljava/lang/String;

    move-result-object v0

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    .line 1461
    const-string v2, "request"

    .line 1460
    invoke-virtual {v1, v3, v2, v0}, Lcom/kingroot/kinguser/bvt;->a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;

    move-result-object v0

    .line 1462
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bvc$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/kingroot/kinguser/bvc$5;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/buf;I)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buk;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    .line 1532
    return-void
.end method

.method public a(JIILcom/kingroot/kinguser/bua;)V
    .locals 5

    .prologue
    .line 868
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;-><init>()V

    .line 869
    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->version:I

    .line 870
    iput p3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->index:I

    .line 871
    iput p4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->num:I

    .line 872
    iput-wide p1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/HotWordReqInfo;->categoryId:J

    .line 873
    iget-object v1, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    const/4 v2, 0x5

    .line 874
    const-string v3, "hotwordreq"

    .line 873
    invoke-virtual {v1, v2, v3, v0}, Lcom/kingroot/kinguser/bvt;->a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;

    move-result-object v0

    .line 875
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bvc$14;

    invoke-direct {v2, p0, v0, p5}, Lcom/kingroot/kinguser/bvc$14;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/bua;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buk;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    .line 916
    return-void
.end method

.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;JLcom/kingroot/kinguser/bue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "J",
            "Lcom/kingroot/kinguser/bue",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/bvc;->b(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;JLcom/kingroot/kinguser/bue;)V

    .line 141
    return-void
.end method

.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bub;)V
    .locals 4

    .prologue
    .line 763
    const-string v0, ""

    .line 764
    if-eqz p1, :cond_0

    .line 765
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->aiD()Ljava/lang/String;

    move-result-object v0

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    const/4 v2, 0x2

    .line 768
    const-string v3, "request"

    .line 767
    invoke-virtual {v1, v2, v3, v0}, Lcom/kingroot/kinguser/bvt;->a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;

    move-result-object v0

    .line 769
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bvc$13;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/bvc$13;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bub;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buk;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    .line 858
    return-void
.end method

.method public a(Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;Lcom/kingroot/kinguser/bui;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            "Lcom/kingroot/kinguser/bui",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;-><init>()V

    .line 662
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->categoryId:J

    .line 663
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->beginPos:I

    .line 664
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pageSize:I

    .line 665
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->queryKeyWord:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->queryKeyWord:Ljava/lang/String;

    .line 666
    iget-object v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->pkgName:Ljava/lang/String;

    .line 667
    iget v1, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->sourceId:J

    .line 668
    iget-wide v2, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->groupId:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->groupId:J

    .line 669
    iget-wide v2, p1, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->tagId:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListReq;->tagId:J

    .line 670
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;-><init>()V

    .line 671
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 672
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iput-object v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetSoftList;->vecSoftListReq:Ljava/util/ArrayList;

    .line 674
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetSoftList;-><init>()V

    .line 675
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v2

    const/16 v3, 0x8be

    .line 676
    new-instance v4, Lcom/kingroot/kinguser/bvc$12;

    invoke-direct {v4, p0, p2, p1}, Lcom/kingroot/kinguser/bvc$12;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bui;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    .line 675
    invoke-interface {v2, v3, v1, v0, v4}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    .line 751
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bum;)V
    .locals 5

    .prologue
    .line 344
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;-><init>()V

    .line 345
    iput-object p1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->activityId:Ljava/lang/String;

    .line 346
    iput-object p2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->pkgName:Ljava/lang/String;

    .line 347
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    iput-object p3, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->qq:Ljava/lang/String;

    .line 352
    :cond_0
    :goto_0
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGameReservation;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGameReservation;-><init>()V

    .line 353
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v2

    const/16 v3, 0x8bb

    .line 354
    new-instance v4, Lcom/kingroot/kinguser/bvc$8;

    invoke-direct {v4, p0, p5}, Lcom/kingroot/kinguser/bvc$8;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bum;)V

    .line 353
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    .line 405
    return-void

    .line 349
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    iput-object p4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->openid:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/kingroot/kinguser/buf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/kingroot/kinguser/buf",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1048
    const-string v0, "SeachSoftEngine"

    const-string v1, "fetchSoftDeatil()"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    if-nez p1, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1052
    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    .line 1053
    iput-object p1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    .line 1054
    iput-object p2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->channelId:Ljava/lang/String;

    .line 1055
    iput-object p4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    .line 1056
    iput-object p6, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    .line 1057
    iput p7, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    .line 1058
    iput-object p5, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    .line 1059
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    .line 1062
    const/4 v2, 0x6

    const-string v3, "vecsoftkey"

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/bvt;->a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;

    move-result-object v0

    .line 1063
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bvc$3;

    invoke-direct {v2, p0, p8}, Lcom/kingroot/kinguser/bvc$3;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/buf;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buk;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;Lcom/kingroot/kinguser/buf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;",
            ">;",
            "Lcom/kingroot/kinguser/buf",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/network/ResponseInfo;",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/MySoftSimpleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    const/4 v1, 0x3

    const-string v2, "vecsoftkey"

    invoke-virtual {v0, v1, v2, p1}, Lcom/kingroot/kinguser/bvt;->a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;

    move-result-object v0

    .line 1575
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bvc$6;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/bvc$6;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/buf;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buk;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    .line 1624
    return-void
.end method

.method public a(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bux;",
            ">;",
            "Lcom/kingroot/kinguser/bug;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1128
    if-nez p1, :cond_0

    .line 1129
    const-string v0, "SeachSoftEngine"

    const-string v1, "reportStartDownSoftInfo List AppDownloadTask is null"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/but;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bvc;->b(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V

    goto :goto_0
.end method

.method public ait()I
    .locals 5

    .prologue
    .line 1328
    const/4 v1, 0x0

    .line 1330
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1331
    if-nez v2, :cond_1

    .line 1350
    :cond_0
    :goto_0
    return v1

    .line 1335
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1334
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1336
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1337
    if-eqz v0, :cond_0

    .line 1339
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1340
    const/4 v0, -0x1

    :goto_1
    move v1, v0

    .line 1350
    goto :goto_0

    .line 1341
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 1342
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1343
    if-eqz v0, :cond_3

    .line 1344
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public b(IIILcom/kingroot/kinguser/bue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/kingroot/kinguser/bue",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;-><init>()V

    .line 418
    iput p1, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    .line 419
    iput p2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    .line 420
    iput p3, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    .line 421
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;-><init>()V

    .line 422
    iget v2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->categoryID:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->categoryId:J

    .line 423
    iget v2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchOffset:I

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->beginPos:I

    .line 424
    iget v2, v0, Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;->fetchSize:I

    iput v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetReservationGameList;->pageSize:I

    .line 425
    new-instance v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetReservationGameList;-><init>()V

    .line 426
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v3

    const/16 v4, 0x8c0

    .line 427
    new-instance v5, Lcom/kingroot/kinguser/bvc$9;

    invoke-direct {v5, p0, p4, v0}, Lcom/kingroot/kinguser/bvc$9;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bue;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V

    .line 426
    invoke-interface {v3, v4, v1, v2, v5}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    .line 480
    return-void
.end method

.method public b(IJLcom/kingroot/kinguser/bun;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 521
    iget-wide p2, p0, Lcom/kingroot/kinguser/bvc;->bPb:J

    .line 525
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bvc;->k(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-direct {p0, p1, p4}, Lcom/kingroot/kinguser/bvc;->b(ILcom/kingroot/kinguser/bun;)V

    .line 531
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/kingroot/kinguser/bvc;->a(ILcom/kingroot/kinguser/bun;)V

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/bun;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/kingroot/kinguser/buz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetCallbackGameList;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetCallbackGameList;-><init>()V

    .line 213
    const-string v1, "12345"

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetCallbackGameList;->reserve:Ljava/lang/String;

    .line 214
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetCallbackGameList;-><init>()V

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v2

    const/16 v3, 0x8c1

    .line 216
    new-instance v4, Lcom/kingroot/kinguser/bvc$1;

    invoke-direct {v4, p0, p1}, Lcom/kingroot/kinguser/bvc$1;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bun;)V

    .line 215
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    .line 285
    return-void
.end method

.method public b(Ljava/util/ArrayList;Lcom/kingroot/kinguser/bun;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/bun",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetGameReservation;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetGameReservation;-><init>()V

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetGameReservation;->vecGetGameReservation:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetGameReservation;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetGameReservation;-><init>()V

    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v2

    const/16 v3, 0x8ba

    .line 299
    new-instance v4, Lcom/kingroot/kinguser/bvc$7;

    invoke-direct {v4, p0, p2}, Lcom/kingroot/kinguser/bvc$7;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bun;)V

    .line 298
    invoke-interface {v2, v3, v1, v0, v4}, Lcom/kingroot/kinguser/buk;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/bul;)V

    .line 331
    return-void

    .line 292
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    new-instance v3, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationReq;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationReq;-><init>()V

    .line 294
    iput-object v0, v3, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationReq;->activityId:Ljava/lang/String;

    .line 295
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGetGameReservation;->vecGetGameReservation:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Ljava/util/List;Lcom/kingroot/kinguser/bug;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bux;",
            ">;",
            "Lcom/kingroot/kinguser/bug;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1158
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1171
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1172
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AQQSecure_GA_2_0/011201&ADR&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/buw;->qa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&V2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1172
    invoke-direct {v0, v2, v3, v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownInfo;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1174
    iget-object v1, p0, Lcom/kingroot/kinguser/bvc;->bOZ:Lcom/kingroot/kinguser/bvt;

    .line 1175
    const/16 v2, 0x9

    const-string v3, "downinfo"

    invoke-virtual {v1, v2, v3, v0}, Lcom/kingroot/kinguser/bvt;->a(ILjava/lang/String;Ljava/lang/Object;)Lcom/kingroot/kinguser/bvp;

    move-result-object v0

    .line 1177
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bty;->aif()Lcom/kingroot/kinguser/buk;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bvc$4;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/bvc$4;-><init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bug;)V

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/buk;->a(Lcom/kingroot/kinguser/bvp;Lcom/kingroot/kinguser/buh;)V

    .line 1188
    :cond_0
    return-void

    .line 1159
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bux;

    .line 1160
    iget-object v3, v0, Lcom/kingroot/kinguser/bux;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iget v4, v0, Lcom/kingroot/kinguser/bux;->bON:I

    iget v0, v0, Lcom/kingroot/kinguser/bux;->bOO:I

    invoke-direct {p0, v3, v4, v0}, Lcom/kingroot/kinguser/bvc;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;II)Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
