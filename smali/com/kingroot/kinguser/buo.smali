.class public Lcom/kingroot/kinguser/buo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static B(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bvq;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    return-object v1

    .line 296
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bvq;

    .line 297
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->a(Lcom/kingroot/kinguser/bvq;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 298
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/bvq;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 27
    iget-object v1, p0, Lcom/kingroot/kinguser/bvq;->softSimpleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    .line 28
    new-instance v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 29
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 30
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 31
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    mul-int/lit16 v0, v0, 0x400

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 32
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    if-eqz v0, :cond_3

    .line 35
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->score:I

    iget v3, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    div-int/2addr v0, v3

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    .line 39
    :goto_0
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 40
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 41
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 42
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 43
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->uid:Ljava/lang/String;

    .line 44
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 45
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->downloadtimes:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    .line 46
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mPublishTime:Ljava/lang/String;

    .line 47
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->apkFileMd5:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    .line 48
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->safeType:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->safeType:I

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bvq;->bQJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bvq;->bQJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bvq;->bQJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/bvq;->bQJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->recPicUrl:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvq;->bQJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/bvq;->bQJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/AndroidSimpleInfoExpand;->recommend:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->recPicUrl:Ljava/lang/String;

    .line 55
    :cond_1
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    .line 56
    if-nez v0, :cond_2

    .line 57
    const-string v0, ""

    .line 58
    :cond_2
    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 60
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strSource:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceContent:Ljava/lang/String;

    .line 61
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceAppID:I

    .line 64
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->plugintype:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->plugintype:I

    .line 66
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSource:I

    .line 67
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->channelId:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 68
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mProductId:I

    .line 69
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFileId:I

    .line 70
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftId:I

    .line 71
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->category:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 72
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->short_desc:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    .line 80
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strExtend:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    .line 81
    iget v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->businessType:I

    iput v0, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    .line 82
    return-object v2

    .line 37
    :cond_3
    iput v6, v2, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    goto/16 :goto_0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 5

    .prologue
    .line 409
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    if-nez v0, :cond_1

    .line 410
    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v1

    .line 414
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->activityId:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->activityID:Ljava/lang/String;

    .line 415
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->activityId:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->activityId:Ljava/lang/String;

    .line 416
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationId:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationId:J

    .line 417
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationUrl:Ljava/lang/String;

    .line 418
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->publicDesc:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->publicDesc:Ljava/lang/String;

    .line 419
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationCount:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationCount:J

    .line 420
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    iget-wide v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;->startTime:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->beginTime:J

    .line 421
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    iget-wide v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;->finishTime:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->endTime:J

    .line 422
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->qq:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->qq:Ljava/lang/String;

    .line 423
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->wx:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->wx:Ljava/lang/String;

    .line 424
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    iget v2, v2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;->reservationType:I

    iput v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationStatus:I

    .line 425
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->onlineFlag:Z

    iput-boolean v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->onlineFlag:Z

    .line 426
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSnaShotPicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSnaShotPicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ltz v0, :cond_2

    .line 427
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSnaShotPicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->snapShotUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 436
    goto :goto_0

    .line 428
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;

    .line 429
    new-instance v3, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;-><init>()V

    .line 430
    iget-object v4, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;->rawUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;->rawUrl:Ljava/lang/String;

    .line 431
    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;->miniUrl:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;->miniUrl:Ljava/lang/String;

    .line 432
    iget-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSnaShotPicList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 4

    .prologue
    .line 341
    if-nez p0, :cond_1

    .line 342
    const/4 v0, 0x0

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 345
    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 346
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->publishTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mPublishTime:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 352
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 353
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/buo;->cH(J)I

    move-result v1

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 356
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;->picture1:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picIconUrl:Ljava/lang/String;

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    if-eqz v1, :cond_5

    .line 364
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->logoUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    long-to-int v1, v2

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    .line 366
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 369
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->shortDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    if-eqz v1, :cond_4

    .line 376
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    .line 378
    :cond_4
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    .line 379
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    iput v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    .line 380
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumpUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumpUrl:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iget-boolean v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->ifSelected:Z

    iput-boolean v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->ifSelected:Z

    .line 384
    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;->searchNum:J

    iput-wide v2, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->searchNum:J

    .line 386
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;->searchWords:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->searchWords:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
    .locals 4

    .prologue
    .line 123
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;-><init>()V

    .line 124
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 209
    :goto_0
    return-object v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    .line 144
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->filesize:I

    mul-int/lit16 v0, v0, 0x400

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 148
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->score:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    .line 149
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->suser:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->suser:I

    .line 150
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->official:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->official:I

    .line 151
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->sign:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->sign:I

    .line 152
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fee:F

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fee:F

    .line 153
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->hprice:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->hprice:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->hprice:Ljava/lang/String;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pname:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pname:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pname:Ljava/lang/String;

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourl:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fileurl:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersionCode:I

    .line 167
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    .line 169
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->downloadtimes:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    .line 170
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->publishtime:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mPublishTime:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->description:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->describe:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->function:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFunction:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->srcpicurls:Ljava/util/ArrayList;

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picurls:Ljava/util/ArrayList;

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->description:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->description:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->newest_version:Ljava/lang/String;

    .line 189
    if-nez v0, :cond_6

    .line 190
    const-string v0, ""

    .line 191
    :cond_6
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strSource:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceContent:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->appid:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftwareSourceAppID:I

    .line 197
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->plugintype:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->plugintype:I

    .line 199
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iget v0, v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->source:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSource:I

    .line 200
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->channelId:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->channelId:Ljava/lang/String;

    .line 201
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iProductID:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mProductId:I

    .line 202
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iFileID:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mFileId:I

    .line 203
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iSoftID:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSoftId:I

    .line 205
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strExtend:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    .line 206
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->businessType:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    move-object v0, v1

    .line 209
    goto/16 :goto_0
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

    .line 319
    if-nez p0, :cond_0

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    :goto_0
    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftListResp;->vecSoftDetail:Ljava/util/ArrayList;

    .line 324
    invoke-static {v0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 328
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 337
    goto :goto_0

    .line 330
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 331
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static cH(J)I
    .locals 2

    .prologue
    .line 442
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 443
    long-to-int v0, p0

    .line 446
    :goto_0
    return v0

    :cond_0
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static co(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    return-object v1

    .line 281
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 282
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->e(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    move-result-object v0

    .line 283
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static cp(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {p0}, Lcom/kingroot/kinguser/buq;->q(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    :goto_0
    return-object v0

    .line 396
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 404
    goto :goto_0

    .line 398
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;

    .line 399
    invoke-static {v0}, Lcom/kingroot/kinguser/buo;->a(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 401
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static e(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;
    .locals 4

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 255
    :goto_0
    return-object v0

    .line 245
    :cond_0
    new-instance v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    .line 246
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->softname:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->name:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersion:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->version:Ljava/lang/String;

    .line 249
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersionCode:I

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->versioncode:I

    .line 250
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->uid:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->uid:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->cert:Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->isbuildin:I

    .line 253
    iget-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    long-to-int v0, v2

    iput v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->filesize:I

    .line 254
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->apkFileMd5:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;->apkFileMd5:Ljava/lang/String;

    move-object v0, v1

    .line 255
    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->pkgName:Ljava/lang/String;

    goto :goto_1

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->appName:Ljava/lang/String;

    goto :goto_2

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersion:Ljava/lang/String;

    goto :goto_3

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->uid:Ljava/lang/String;

    goto :goto_4

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->certMD5:Ljava/lang/String;

    goto :goto_5
.end method
