.class public Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public apkFileMd5:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public categoryid:I

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

.field public description:Ljava/lang/String;

.field public fee:F

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public function:Ljava/lang/String;

.field public hprice:Ljava/lang/String;

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

.field public official:I

.field public packageName:Ljava/lang/String;

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

.field public plugintype:I

.field public pname:Ljava/lang/String;

.field public publishtime:Ljava/lang/String;

.field public score:I

.field public sign:I

.field public softDescTimestamp:I

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

.field public suser:I

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->packageName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->channelId:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->appName:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->version:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->versionCode:I

    .line 21
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->categoryid:I

    .line 22
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->score:I

    .line 23
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->suser:I

    .line 24
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->picurls:Ljava/util/ArrayList;

    .line 25
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->logourls:Ljava/util/ArrayList;

    .line 26
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->srcpicurls:Ljava/util/ArrayList;

    .line 27
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->comments:Ljava/util/ArrayList;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->fileurl:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->filesize:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->publishtime:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->description:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->softDescTimestamp:I

    .line 35
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->plugintype:I

    .line 36
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->sign:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->hprice:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->fee:F

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppDeatailInfo;->function:Ljava/lang/String;

    .line 14
    return-void
.end method
