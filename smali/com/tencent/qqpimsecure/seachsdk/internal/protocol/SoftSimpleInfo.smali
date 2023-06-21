.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

.field static nj:[B


# instance fields
.field public apkFileMd5:Ljava/lang/String;

.field public appParentCategory:I

.field public appSubCategoryName:Ljava/lang/String;

.field public break_fileurl:Ljava/lang/String;

.field public break_mini_os:Ljava/lang/String;

.field public businessType:I

.field public channelId:Ljava/lang/String;

.field public cn_fee:F

.field public cn_lfee:F

.field public diffFileSizeByte:J

.field public diffFileUrl:Ljava/lang/String;

.field public downloadtimes:I

.field public expand:[B

.field public fee:F

.field public feetype:I

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public iFileID:I

.field public iProductID:I

.field public iSoftID:I

.field public jumptype:I

.field public lfee:F

.field public likepercent:Ljava/lang/String;

.field public logourl:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public pageurl:Ljava/lang/String;

.field public plugintype:I

.field public pname:Ljava/lang/String;

.field public position:I

.field public publishtime:Ljava/lang/String;

.field public safeType:I

.field public score:I

.field public short_desc:Ljava/lang/String;

.field public sign:I

.field public softTitle:Ljava/lang/String;

.field public softclass:Ljava/lang/String;

.field public softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

.field public strExtend:Ljava/lang/String;

.field public strSource:Ljava/lang/String;

.field public subSoftTitle:Ljava/lang/String;

.field public suser:I

.field public topsign:I

.field public type:Ljava/lang/String;

.field public updatetime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nj:[B

    .line 198
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nj:[B

    aput-byte v1, v0, v1

    .line 200
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 11
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->type:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softclass:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->logourl:Ljava/lang/String;

    .line 16
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->downloadtimes:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    .line 20
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->score:I

    .line 21
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    .line 22
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    .line 23
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    .line 24
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    .line 25
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->feetype:I

    .line 26
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fee:F

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pname:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->lfee:F

    .line 30
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_fee:F

    .line 31
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_lfee:F

    .line 32
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->expand:[B

    .line 33
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->safeType:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strSource:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_fileurl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_mini_os:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->sign:I

    .line 38
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->updatetime:I

    .line 39
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->topsign:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileUrl:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->apkFileMd5:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->plugintype:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->likepercent:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->channelId:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->short_desc:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softTitle:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->subSoftTitle:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->jumptype:I

    .line 50
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appParentCategory:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appSubCategoryName:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strExtend:Ljava/lang/String;

    .line 53
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->position:I

    .line 54
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->businessType:I

    .line 57
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 203
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 204
    invoke-virtual {p1, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->type:Ljava/lang/String;

    .line 205
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softclass:Ljava/lang/String;

    .line 206
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    .line 207
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->logourl:Ljava/lang/String;

    .line 208
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    .line 209
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    .line 210
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->downloadtimes:I

    .line 211
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    .line 212
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->score:I

    .line 213
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    .line 214
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    .line 215
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    .line 216
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    .line 217
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->feetype:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->feetype:I

    .line 218
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fee:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fee:F

    .line 219
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pname:Ljava/lang/String;

    .line 220
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    .line 221
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->lfee:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->lfee:F

    .line 222
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_fee:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_fee:F

    .line 223
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_lfee:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_lfee:F

    .line 224
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nj:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->expand:[B

    .line 225
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->safeType:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->safeType:I

    .line 226
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strSource:Ljava/lang/String;

    .line 227
    const/16 v0, 0x18

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_fileurl:Ljava/lang/String;

    .line 228
    const/16 v0, 0x19

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_mini_os:Ljava/lang/String;

    .line 229
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->sign:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->sign:I

    .line 230
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->updatetime:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->updatetime:I

    .line 231
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->topsign:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->topsign:I

    .line 232
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileUrl:Ljava/lang/String;

    .line 233
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    .line 234
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->apkFileMd5:Ljava/lang/String;

    .line 235
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->plugintype:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->plugintype:I

    .line 236
    const/16 v0, 0x21

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->likepercent:Ljava/lang/String;

    .line 237
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->channelId:Ljava/lang/String;

    .line 238
    const/16 v0, 0x23

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->short_desc:Ljava/lang/String;

    .line 239
    const/16 v0, 0x24

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softTitle:Ljava/lang/String;

    .line 240
    const/16 v0, 0x25

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->subSoftTitle:Ljava/lang/String;

    .line 241
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->jumptype:I

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->jumptype:I

    .line 242
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appParentCategory:I

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appParentCategory:I

    .line 243
    const/16 v0, 0x28

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appSubCategoryName:Ljava/lang/String;

    .line 244
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strExtend:Ljava/lang/String;

    .line 245
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->position:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->position:I

    .line 246
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->businessType:I

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->businessType:I

    .line 247
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 65
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    if-eqz v0, :cond_4

    .line 78
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 83
    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->downloadtimes:I

    if-eqz v0, :cond_6

    .line 84
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 89
    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->score:I

    if-eqz v0, :cond_8

    .line 90
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 92
    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    if-eqz v0, :cond_9

    .line 93
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 95
    :cond_9
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    if-eqz v0, :cond_a

    .line 96
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 98
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    if-eqz v0, :cond_b

    .line 99
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 101
    :cond_b
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    if-eqz v0, :cond_c

    .line 102
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 104
    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->feetype:I

    if-eqz v0, :cond_d

    .line 105
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->feetype:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 107
    :cond_d
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    .line 108
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->fee:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 110
    :cond_e
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pname:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 111
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 113
    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 114
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->pageurl:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 116
    :cond_10
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_11

    .line 117
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->lfee:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 119
    :cond_11
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_12

    .line 120
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_fee:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 122
    :cond_12
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_13

    .line 123
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->cn_lfee:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 125
    :cond_13
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->expand:[B

    if-eqz v0, :cond_14

    .line 126
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->expand:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 128
    :cond_14
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->safeType:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 129
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strSource:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 130
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strSource:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 132
    :cond_15
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_fileurl:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 133
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_fileurl:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 135
    :cond_16
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_mini_os:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 136
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->break_mini_os:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 138
    :cond_17
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->sign:I

    if-eqz v0, :cond_18

    .line 139
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->sign:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 141
    :cond_18
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->updatetime:I

    if-eqz v0, :cond_19

    .line 142
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->updatetime:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 144
    :cond_19
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->topsign:I

    if-eqz v0, :cond_1a

    .line 145
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->topsign:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 147
    :cond_1a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 148
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileUrl:Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 150
    :cond_1b
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 151
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->diffFileSizeByte:J

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 153
    :cond_1c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->apkFileMd5:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 154
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->apkFileMd5:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 156
    :cond_1d
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->plugintype:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 157
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->likepercent:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 158
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->likepercent:Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 160
    :cond_1e
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 161
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->channelId:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 163
    :cond_1f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 164
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->short_desc:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 166
    :cond_20
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softTitle:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 167
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->softTitle:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 169
    :cond_21
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->subSoftTitle:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 170
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->subSoftTitle:Ljava/lang/String;

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 172
    :cond_22
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->jumptype:I

    if-eqz v0, :cond_23

    .line 173
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->jumptype:I

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 175
    :cond_23
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appParentCategory:I

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 176
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appSubCategoryName:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 177
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->appSubCategoryName:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 179
    :cond_24
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strExtend:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 180
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->strExtend:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 182
    :cond_25
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->position:I

    if-eqz v0, :cond_26

    .line 183
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->position:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 185
    :cond_26
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->businessType:I

    if-eqz v0, :cond_27

    .line 186
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSimpleInfo;->businessType:I

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 188
    :cond_27
    return-void
.end method
