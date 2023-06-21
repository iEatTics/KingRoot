.class public Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;
.super Lcom/tencent/qqpimsecure/seachsdk/common/AppEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;,
        Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;
    }
.end annotation


# instance fields
.field public activityID:Ljava/lang/String;

.field public apkFileMd5:Ljava/lang/String;

.field public apkPath:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public transient bOr:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public transient bOs:Ljava/lang/String;

.field public bannerId:J

.field public browserUrl:Ljava/lang/String;

.field public busiData:[B

.field public businessType:I

.field public categoryid:I

.field public certMD5:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public defaultShowType:I

.field public describe:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public downFilePath:Ljava/lang/String;

.field public downloadCount:I

.field public downloadSize:J

.field public expirationTime:Ljava/lang/String;

.field public fee:F

.field public fileUrl:Ljava/lang/String;

.field public hprice:Ljava/lang/String;

.field public ifSelected:Z

.field public itemType:I

.field public jumpUrl:Ljava/lang/String;

.field public jumptype:I

.field public likepercent:Ljava/lang/String;

.field public logoUrl:Ljava/lang/String;

.field public logourls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mComeFrom:I

.field public mDestCategoryId:I

.field public mErrorCode:I

.field public mErrorRssi:I

.field public mExtraInfo:Ljava/lang/String;

.field public mFileId:I

.field public mFunction:Ljava/lang/String;

.field public mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

.field public mNetworkName:Ljava/lang/String;

.field public mPos:I

.field public mProductId:I

.field public mPublishTime:Ljava/lang/String;

.field public mSize:J

.field public mSnaShotPicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;",
            ">;"
        }
    .end annotation
.end field

.field public mSoftId:I

.field public mSoftwareSourceAppID:I

.field public mSoftwareSourceContent:Ljava/lang/String;

.field public mSoftwareSourceUrl:Ljava/lang/String;

.field public mSource:I

.field public mSpeed:I

.field public mStartTime:J

.field public mSubTitle:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUpdateUseMd5:Ljava/lang/String;

.field public newVersion:Ljava/lang/String;

.field public newVersionCode:I

.field public official:I

.field public oldVersion:Ljava/lang/String;

.field public oldVersionCode:I

.field public picBtnUrl:Ljava/lang/String;

.field public picIconUrl:Ljava/lang/String;

.field public picurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pkgName:Ljava/lang/String;

.field public plugintype:I

.field public pname:Ljava/lang/String;

.field public publishtime:Ljava/lang/String;

.field public recPicUrl:Ljava/lang/String;

.field public safeType:I

.field public score:I

.field public searchNum:J

.field public searchWords:Ljava/lang/String;

.field public sign:I

.field public srcpicurls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public strExtend:Ljava/lang/String;

.field public suser:I

.field public sw_type:I

.field public tagId:J

.field public top_flag:I

.field public transData:[B

.field public uid:Ljava/lang/String;

.field public versionType:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppEntity;-><init>()V

    .line 27
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->categoryid:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->uid:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fileUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logoUrl:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->newVersion:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->oldVersion:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mUpdateUseMd5:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->jumptype:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->browserUrl:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->businessType:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->strExtend:Ljava/lang/String;

    .line 54
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->busiData:[B

    .line 56
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->transData:[B

    .line 59
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mErrorCode:I

    .line 60
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadCount:I

    .line 61
    iput-wide v6, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->downloadSize:J

    .line 63
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->itemType:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->recPicUrl:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->sw_type:I

    .line 79
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->top_flag:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->likepercent:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mTitle:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSubTitle:Ljava/lang/String;

    .line 92
    iput v3, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->versionType:I

    .line 98
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->defaultShowType:I

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picBtnUrl:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picIconUrl:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->activityID:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mNetworkName:Ljava/lang/String;

    .line 122
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPT:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOr:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 124
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSize:J

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->bOs:Ljava/lang/String;

    .line 128
    iput v3, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mErrorRssi:I

    .line 130
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mStartTime:J

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mExtraInfo:Ljava/lang/String;

    .line 135
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mComeFrom:I

    .line 140
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSource:I

    .line 145
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->score:I

    .line 146
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->suser:I

    .line 147
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->picurls:Ljava/util/ArrayList;

    .line 148
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->logourls:Ljava/util/ArrayList;

    .line 149
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->srcpicurls:Ljava/util/ArrayList;

    .line 150
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->comments:Ljava/util/ArrayList;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->publishtime:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->description:Ljava/lang/String;

    .line 158
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->plugintype:I

    .line 159
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->sign:I

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->hprice:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->fee:F

    .line 163
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->tagId:J

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->searchWords:Ljava/lang/String;

    .line 165
    iput-wide v6, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->searchNum:J

    .line 194
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSnaShotPicList:Ljava/util/ArrayList;

    .line 196
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, ""

    return-object v0
.end method
