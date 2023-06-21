.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

.field static ne:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field static nf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static ng:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;",
            ">;"
        }
    .end annotation
.end field

.field static nh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static ni:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static nj:[B


# instance fields
.field public apkFileMd5:Ljava/lang/String;

.field public appParentCategory:I

.field public appSubCategoryName:Ljava/lang/String;

.field public asopt:I

.field public autostart:I

.field public break_fileurl:Ljava/lang/String;

.field public break_mini_os:Ljava/lang/String;

.field public businessType:I

.field public channelId:Ljava/lang/String;

.field public cn_fee:F

.field public cn_lfee:F

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

.field public diffFileSizeByte:J

.field public diffFileUrl:Ljava/lang/String;

.field public downloadtimes:I

.field public expand:[B

.field public fee:F

.field public feetype:I

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public function:Ljava/lang/String;

.field public hprice:Ljava/lang/String;

.field public iFileID:I

.field public iProductID:I

.field public iSoftID:I

.field public isoftclass:I

.field public jumptype:I

.field public lfee:F

.field public logourl:Ljava/lang/String;

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

.field public netaccess:I

.field public nick_name:Ljava/lang/String;

.field public official:I

.field public pageurl:Ljava/lang/String;

.field public phonemonitor:I

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

.field public procinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;",
            ">;"
        }
    .end annotation
.end field

.field public publishtime:Ljava/lang/String;

.field public reportFeature:I

.field public score:I

.field public short_desc:Ljava/lang/String;

.field public sign:I

.field public smsmonitor:I

.field public softDescTimestamp:I

.field public softclass:Ljava/lang/String;

.field public softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

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

.field public strLinkContent:Ljava/lang/String;

.field public strLinkUrl:Ljava/lang/String;

.field public strSource:Ljava/lang/String;

.field public suser:I

.field public type:Ljava/lang/String;

.field public update:I

.field public version_break:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ne:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ProcInfo;-><init>()V

    .line 260
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ne:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nf:Ljava/util/ArrayList;

    .line 263
    const-string v0, ""

    .line 264
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ng:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Comment;-><init>()V

    .line 268
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ng:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nh:Ljava/util/ArrayList;

    .line 271
    const-string v0, ""

    .line 272
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ni:Ljava/util/ArrayList;

    .line 275
    const-string v0, ""

    .line 276
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ni:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nj:[B

    .line 280
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nj:[B

    aput-byte v2, v0, v2

    .line 282
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->short_desc:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->description:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->type:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softclass:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->procinfo:Ljava/util/ArrayList;

    .line 16
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->smsmonitor:I

    .line 17
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->phonemonitor:I

    .line 18
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->netaccess:I

    .line 19
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->autostart:I

    .line 20
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->asopt:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nick_name:Ljava/lang/String;

    .line 22
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->reportFeature:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourl:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->filesize:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->publishtime:Ljava/lang/String;

    .line 26
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->downloadtimes:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->function:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fileurl:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    .line 30
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->official:I

    .line 31
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->update:I

    .line 32
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->score:I

    .line 33
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->suser:I

    .line 34
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softDescTimestamp:I

    .line 35
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iProductID:I

    .line 36
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iSoftID:I

    .line 37
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iFileID:I

    .line 38
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->feetype:I

    .line 39
    iput v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fee:F

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pname:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->hprice:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->comments:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourls:Ljava/util/ArrayList;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pageurl:Ljava/lang/String;

    .line 45
    iput v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->lfee:F

    .line 46
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->isoftclass:I

    .line 47
    iput v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_fee:F

    .line 48
    iput v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_lfee:F

    .line 49
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    .line 50
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->expand:[B

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strSource:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkContent:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkUrl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_fileurl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->version_break:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_mini_os:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileUrl:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileSizeByte:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->apkFileMd5:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->plugintype:I

    .line 61
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->sign:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->channelId:Ljava/lang/String;

    .line 63
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->jumptype:I

    .line 64
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appParentCategory:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appSubCategoryName:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strExtend:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->businessType:I

    .line 70
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 285
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 286
    invoke-virtual {p1, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->short_desc:Ljava/lang/String;

    .line 287
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->description:Ljava/lang/String;

    .line 288
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->type:Ljava/lang/String;

    .line 289
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softclass:Ljava/lang/String;

    .line 290
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ne:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->procinfo:Ljava/util/ArrayList;

    .line 291
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->smsmonitor:I

    .line 292
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->phonemonitor:I

    .line 293
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->netaccess:I

    .line 294
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->autostart:I

    .line 295
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->asopt:I

    .line 296
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nick_name:Ljava/lang/String;

    .line 297
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->reportFeature:I

    .line 298
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourl:Ljava/lang/String;

    .line 299
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->filesize:I

    .line 300
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->publishtime:Ljava/lang/String;

    .line 301
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->downloadtimes:I

    .line 302
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->function:Ljava/lang/String;

    .line 303
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fileurl:Ljava/lang/String;

    .line 304
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nf:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    .line 305
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->official:I

    .line 306
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->update:I

    .line 307
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->score:I

    .line 308
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->suser:I

    .line 309
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softDescTimestamp:I

    .line 310
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iProductID:I

    .line 311
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iSoftID:I

    .line 312
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iFileID:I

    .line 313
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->feetype:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->feetype:I

    .line 314
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fee:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fee:F

    .line 315
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pname:Ljava/lang/String;

    .line 316
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->hprice:Ljava/lang/String;

    .line 317
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ng:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->comments:Ljava/util/ArrayList;

    .line 318
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nh:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourls:Ljava/util/ArrayList;

    .line 319
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pageurl:Ljava/lang/String;

    .line 320
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->lfee:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->lfee:F

    .line 321
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->isoftclass:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->isoftclass:I

    .line 322
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_fee:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_fee:F

    .line 323
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_lfee:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_lfee:F

    .line 324
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->ni:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    .line 325
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nj:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->expand:[B

    .line 326
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strSource:Ljava/lang/String;

    .line 327
    const/16 v0, 0x2a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkContent:Ljava/lang/String;

    .line 328
    const/16 v0, 0x2b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkUrl:Ljava/lang/String;

    .line 329
    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_fileurl:Ljava/lang/String;

    .line 330
    const/16 v0, 0x2d

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->version_break:Ljava/lang/String;

    .line 331
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_mini_os:Ljava/lang/String;

    .line 332
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileUrl:Ljava/lang/String;

    .line 333
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileSizeByte:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileSizeByte:J

    .line 334
    const/16 v0, 0x31

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->apkFileMd5:Ljava/lang/String;

    .line 335
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->plugintype:I

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->plugintype:I

    .line 336
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->sign:I

    const/16 v1, 0x33

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->sign:I

    .line 337
    const/16 v0, 0x34

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->channelId:Ljava/lang/String;

    .line 338
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->jumptype:I

    const/16 v1, 0x35

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->jumptype:I

    .line 339
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appParentCategory:I

    const/16 v1, 0x36

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appParentCategory:I

    .line 340
    const/16 v0, 0x37

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appSubCategoryName:Ljava/lang/String;

    .line 341
    const/16 v0, 0x38

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strExtend:Ljava/lang/String;

    .line 342
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->businessType:I

    const/16 v1, 0x39

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->businessType:I

    .line 343
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 78
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->short_desc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->description:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->type:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->procinfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 93
    :cond_4
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->smsmonitor:I

    if-eqz v0, :cond_5

    .line 94
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 96
    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->phonemonitor:I

    if-eqz v0, :cond_6

    .line 97
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 99
    :cond_6
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->netaccess:I

    if-eqz v0, :cond_7

    .line 100
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 102
    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->autostart:I

    if-eqz v0, :cond_8

    .line 103
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 105
    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->asopt:I

    if-eqz v0, :cond_9

    .line 106
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 109
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->nick_name:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 111
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->reportFeature:I

    if-eqz v0, :cond_b

    .line 112
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 114
    :cond_b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourl:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 117
    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->filesize:I

    if-eqz v0, :cond_d

    .line 118
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 120
    :cond_d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 121
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->publishtime:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 123
    :cond_e
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->downloadtimes:I

    if-eqz v0, :cond_f

    .line 124
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 126
    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->function:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 127
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->function:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 129
    :cond_10
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 130
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fileurl:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 132
    :cond_11
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 133
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->picurls:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 135
    :cond_12
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->official:I

    if-eqz v0, :cond_13

    .line 136
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 138
    :cond_13
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->update:I

    if-eqz v0, :cond_14

    .line 139
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 141
    :cond_14
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->score:I

    if-eqz v0, :cond_15

    .line 142
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 144
    :cond_15
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->suser:I

    if-eqz v0, :cond_16

    .line 145
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 147
    :cond_16
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softDescTimestamp:I

    if-eqz v0, :cond_17

    .line 148
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 150
    :cond_17
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iProductID:I

    if-eqz v0, :cond_18

    .line 151
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 153
    :cond_18
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iSoftID:I

    if-eqz v0, :cond_19

    .line 154
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 156
    :cond_19
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iFileID:I

    if-eqz v0, :cond_1a

    .line 157
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 159
    :cond_1a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->feetype:I

    if-eqz v0, :cond_1b

    .line 160
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->feetype:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 162
    :cond_1b
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    .line 163
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->fee:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 165
    :cond_1c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pname:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 166
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pname:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 168
    :cond_1d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->hprice:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 169
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->hprice:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 171
    :cond_1e
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->comments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 172
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->comments:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 174
    :cond_1f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourls:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 175
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->logourls:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 177
    :cond_20
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pageurl:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 178
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->pageurl:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 180
    :cond_21
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_22

    .line 181
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->lfee:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 183
    :cond_22
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->isoftclass:I

    if-eqz v0, :cond_23

    .line 184
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->isoftclass:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 186
    :cond_23
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_24

    .line 187
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_fee:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 189
    :cond_24
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_25

    .line 190
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->cn_lfee:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 192
    :cond_25
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 193
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->srcpicurls:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 195
    :cond_26
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->expand:[B

    if-eqz v0, :cond_27

    .line 196
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->expand:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 198
    :cond_27
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strSource:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 199
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strSource:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 201
    :cond_28
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkContent:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 202
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkContent:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 204
    :cond_29
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 205
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strLinkUrl:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 207
    :cond_2a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_fileurl:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 208
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_fileurl:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 210
    :cond_2b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->version_break:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 211
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->version_break:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 213
    :cond_2c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_mini_os:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 214
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->break_mini_os:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 216
    :cond_2d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 217
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileUrl:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 219
    :cond_2e
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileSizeByte:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 220
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->diffFileSizeByte:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 222
    :cond_2f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->apkFileMd5:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 223
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->apkFileMd5:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 225
    :cond_30
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->plugintype:I

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 226
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->sign:I

    if-eqz v0, :cond_31

    .line 227
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->sign:I

    const/16 v1, 0x33

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 229
    :cond_31
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 230
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->channelId:Ljava/lang/String;

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 232
    :cond_32
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->jumptype:I

    if-eqz v0, :cond_33

    .line 233
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->jumptype:I

    const/16 v1, 0x35

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 235
    :cond_33
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appParentCategory:I

    const/16 v1, 0x36

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 236
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appSubCategoryName:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 237
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->appSubCategoryName:Ljava/lang/String;

    const/16 v1, 0x37

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 239
    :cond_34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strExtend:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 240
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->strExtend:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 242
    :cond_35
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->businessType:I

    if-eqz v0, :cond_36

    .line 243
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftInfo;->businessType:I

    const/16 v1, 0x39

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 245
    :cond_36
    return-void
.end method
