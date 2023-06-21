.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

.field static nL:[B

.field static nM:[B


# instance fields
.field public Networkstandard:I

.field public backendExtendInfo:[B

.field public businessType:I

.field public categoryid:I

.field public channelId:Ljava/lang/String;

.field public come_from:I

.field public downloadStartTime:J

.field public downnetname:Ljava/lang/String;

.field public downnettype:I

.field public errorcode:I

.field public errormsg:Ljava/lang/String;

.field public ext_str:Ljava/lang/String;

.field public filesize:I

.field public frontendExtendInfo:[B

.field public hostaddress:Ljava/lang/String;

.field public isvalid:I

.field public nAvgSpeed:I

.field public nDownSize:I

.field public nDownType:B

.field public nFileId:I

.field public nMaxSpeed:I

.field public nProductId:I

.field public nRetryTimes:I

.field public nSoftId:I

.field public nSuccess:B

.field public nUsedTime:I

.field public pos:I

.field public realChannelId:Ljava/lang/String;

.field public realPkgName:Ljava/lang/String;

.field public redirectUrl:Ljava/lang/String;

.field public reportnetname:Ljava/lang/String;

.field public reportnettype:I

.field public rssi:I

.field public sdcardstatus:I

.field public silentType:I

.field public softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 154
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nL:[B

    .line 156
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nL:[B

    aput-byte v1, v0, v1

    .line 158
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nM:[B

    .line 160
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nM:[B

    aput-byte v1, v0, v1

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nProductId:I

    .line 11
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSoftId:I

    .line 12
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nFileId:I

    .line 13
    iput-byte v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSuccess:B

    .line 14
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownSize:I

    .line 15
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nUsedTime:I

    .line 16
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nMaxSpeed:I

    .line 17
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nAvgSpeed:I

    .line 18
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nRetryTimes:I

    .line 19
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 20
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->categoryid:I

    .line 21
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->pos:I

    .line 22
    iput-byte v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownType:B

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->url:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errorcode:I

    .line 25
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnettype:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnetname:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnettype:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnetname:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errormsg:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->rssi:I

    .line 31
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->sdcardstatus:I

    .line 32
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->filesize:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->hostaddress:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->isvalid:I

    .line 35
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->Networkstandard:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->channelId:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realPkgName:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->redirectUrl:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->come_from:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->ext_str:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->businessType:I

    .line 42
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->silentType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downloadStartTime:J

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realChannelId:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->backendExtendInfo:[B

    .line 46
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->frontendExtendInfo:[B

    .line 49
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nProductId:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nProductId:I

    .line 166
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSoftId:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSoftId:I

    .line 167
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nFileId:I

    .line 168
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSuccess:B

    .line 169
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownSize:I

    .line 170
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nUsedTime:I

    .line 171
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nMaxSpeed:I

    .line 172
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nAvgSpeed:I

    .line 173
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nRetryTimes:I

    .line 174
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownType:B

    .line 175
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->bPZ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    .line 176
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->categoryid:I

    .line 177
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->pos:I

    .line 178
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->url:Ljava/lang/String;

    .line 179
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errorcode:I

    .line 180
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnettype:I

    .line 181
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnetname:Ljava/lang/String;

    .line 182
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnettype:I

    .line 183
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnetname:Ljava/lang/String;

    .line 184
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errormsg:Ljava/lang/String;

    .line 185
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->rssi:I

    .line 186
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->sdcardstatus:I

    .line 187
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->filesize:I

    .line 188
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->hostaddress:Ljava/lang/String;

    .line 189
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->isvalid:I

    .line 190
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->Networkstandard:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->Networkstandard:I

    .line 191
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->channelId:Ljava/lang/String;

    .line 192
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realPkgName:Ljava/lang/String;

    .line 193
    const/16 v0, 0x1c

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->redirectUrl:Ljava/lang/String;

    .line 194
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->come_from:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->come_from:I

    .line 195
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->ext_str:Ljava/lang/String;

    .line 196
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->businessType:I

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->businessType:I

    .line 197
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->silentType:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->silentType:I

    .line 198
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downloadStartTime:J

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downloadStartTime:J

    .line 199
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realChannelId:Ljava/lang/String;

    .line 200
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nL:[B

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->backendExtendInfo:[B

    .line 201
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nM:[B

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->frontendExtendInfo:[B

    .line 202
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 56
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nProductId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 57
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSoftId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 58
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 59
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 60
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 61
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 62
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 63
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 64
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 65
    iget-byte v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 66
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->softkey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKey;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 67
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->categoryid:I

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 70
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->pos:I

    if-eqz v0, :cond_1

    .line 71
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->url:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 76
    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errorcode:I

    if-eqz v0, :cond_3

    .line 77
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 79
    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnettype:I

    if-eqz v0, :cond_4

    .line 80
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnetname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 83
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downnetname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 85
    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnettype:I

    if-eqz v0, :cond_6

    .line 86
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnetname:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 89
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->reportnetname:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errormsg:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->errormsg:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 94
    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->rssi:I

    if-eq v0, v2, :cond_9

    .line 95
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 97
    :cond_9
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->sdcardstatus:I

    if-eq v0, v2, :cond_a

    .line 98
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 100
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->filesize:I

    if-eqz v0, :cond_b

    .line 101
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->hostaddress:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 104
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->hostaddress:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 106
    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->isvalid:I

    if-eq v0, v2, :cond_d

    .line 107
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 109
    :cond_d
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->Networkstandard:I

    if-eqz v0, :cond_e

    .line 110
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->Networkstandard:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 112
    :cond_e
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->channelId:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 115
    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realPkgName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 116
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realPkgName:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 118
    :cond_10
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->redirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 119
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->redirectUrl:Ljava/lang/String;

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 121
    :cond_11
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->come_from:I

    if-eqz v0, :cond_12

    .line 122
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->come_from:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 124
    :cond_12
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->ext_str:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 125
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->ext_str:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 127
    :cond_13
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->businessType:I

    if-eqz v0, :cond_14

    .line 128
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->businessType:I

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 130
    :cond_14
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->silentType:I

    if-eqz v0, :cond_15

    .line 131
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->silentType:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 133
    :cond_15
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downloadStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 134
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->downloadStartTime:J

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 136
    :cond_16
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realChannelId:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 137
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->realChannelId:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 139
    :cond_17
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->backendExtendInfo:[B

    if-eqz v0, :cond_18

    .line 140
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->backendExtendInfo:[B

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 142
    :cond_18
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->frontendExtendInfo:[B

    if-eqz v0, :cond_19

    .line 143
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/DownSoftInfo;->frontendExtendInfo:[B

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 145
    :cond_19
    return-void
.end method
