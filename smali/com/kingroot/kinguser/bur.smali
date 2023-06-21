.class public Lcom/kingroot/kinguser/bur;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;I)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 4

    .prologue
    .line 319
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 320
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->adZ:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOx:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 322
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOy:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 323
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mAppName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 324
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mUpdateUseMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 326
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOE:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 330
    :goto_0
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mProductId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mProductId:I

    .line 331
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mFileId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFileId:I

    .line 332
    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->mSoftId:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftId:I

    .line 333
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOH:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 334
    return-object v0

    .line 328
    :cond_0
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;->bOB:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    goto :goto_0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 4

    .prologue
    .line 151
    if-nez p0, :cond_1

    .line 152
    const/4 v0, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 155
    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->publishTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->publishtime:Ljava/lang/String;

    .line 157
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->itemType:I

    .line 158
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 162
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 163
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bur;->cH(J)I

    move-result v1

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 166
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture1:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picIconUrl:Ljava/lang/String;

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    if-eqz v1, :cond_5

    .line 174
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->logoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    long-to-int v1, v2

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    .line 176
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 178
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->shortDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    if-eqz v1, :cond_3

    .line 183
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    .line 188
    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    .line 189
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    .line 190
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumpUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumpUrl:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-boolean v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->ifSelected:Z

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->ifSelected:Z

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;->searchNum:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->searchNum:J

    .line 201
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;->searchWords:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->searchWords:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;II)Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;
    .locals 29

    .prologue
    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v2, 0x0

    .line 99
    :goto_0
    return-object v2

    .line 72
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/kingroot/kinguser/bur;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;)Ljava/util/List;

    move-result-object v14

    .line 73
    invoke-static {v14}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->showDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    move-object/from16 v26, v0

    .line 78
    const/4 v6, 0x5

    .line 79
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    move-wide/from16 v24, v0

    .line 80
    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->title:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->hasNextPage:Z

    move/from16 v27, v0

    .line 82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->nextBeginPos:I

    move/from16 v28, v0

    .line 83
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->categoryId:J

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bur;->cH(J)I

    move-result v7

    .line 84
    const/4 v5, 0x0

    move v5, v7

    .line 90
    new-instance v2, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;

    const-wide/16 v3, 0x0

    .line 91
    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    check-cast v14, Ljava/util/ArrayList;

    .line 92
    const-string v15, ""

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-string v19, ""

    .line 93
    const/16 v20, 0x0

    const-string v21, ""

    const-string v22, ""

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 90
    invoke-direct/range {v2 .. v25}, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;-><init>(JIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;JILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 94
    move/from16 v0, v27

    iput-boolean v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->hasNextPage:Z

    .line 95
    move/from16 v0, v28

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->nextPageIndex:I

    .line 96
    move/from16 v0, p1

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->pageId:I

    .line 97
    move/from16 v0, p2

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->index:I

    .line 98
    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->tagId:J

    iput-wide v4, v2, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->tagId:J

    goto :goto_0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;IILjava/lang/String;)Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/bur;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;II)Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iput-object p3, v0, Lcom/tencent/qqpimsecure/seachsdk/common/SoftwareAdvertiseEntity;->searchKeyWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_0
    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->vecSoftDetail:Ljava/util/ArrayList;

    .line 34
    invoke-static {v0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 38
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 47
    goto :goto_0

    .line 40
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 41
    invoke-static {v0}, Lcom/kingroot/kinguser/bur;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static cH(J)I
    .locals 2

    .prologue
    .line 310
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 311
    long-to-int v0, p0

    .line 314
    :goto_0
    return v0

    :cond_0
    long-to-int v0, p0

    goto :goto_0
.end method
