.class public final Lcom/kingroot/kinguser/di;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static lw:Lcom/kingroot/kinguser/df;

.field static nj:[B


# instance fields
.field public apkFileMd5:Ljava/lang/String;

.field public appParentCategory:I

.field public appSubCategoryName:Ljava/lang/String;

.field public break_fileurl:Ljava/lang/String;

.field public break_mini_os:Ljava/lang/String;

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

.field public softkey:Lcom/kingroot/kinguser/df;

.field public strExtend:Ljava/lang/String;

.field public strSource:Ljava/lang/String;

.field public subSoftTitle:Ljava/lang/String;

.field public suser:I

.field public topsign:I

.field public type:Ljava/lang/String;

.field public updatetime:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v3, p0, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->type:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->softclass:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->nick_name:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->logourl:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/kingroot/kinguser/di;->filesize:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->publishtime:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/kingroot/kinguser/di;->downloadtimes:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->fileurl:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/kingroot/kinguser/di;->score:I

    .line 20
    iput v2, p0, Lcom/kingroot/kinguser/di;->suser:I

    .line 21
    iput v2, p0, Lcom/kingroot/kinguser/di;->iProductID:I

    .line 22
    iput v2, p0, Lcom/kingroot/kinguser/di;->iSoftID:I

    .line 23
    iput v2, p0, Lcom/kingroot/kinguser/di;->iFileID:I

    .line 24
    iput v2, p0, Lcom/kingroot/kinguser/di;->feetype:I

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/di;->fee:F

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->pname:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->pageurl:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/kingroot/kinguser/di;->lfee:F

    .line 29
    iput v1, p0, Lcom/kingroot/kinguser/di;->cn_fee:F

    .line 30
    iput v1, p0, Lcom/kingroot/kinguser/di;->cn_lfee:F

    .line 31
    iput-object v3, p0, Lcom/kingroot/kinguser/di;->expand:[B

    .line 32
    iput v2, p0, Lcom/kingroot/kinguser/di;->safeType:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->strSource:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->break_fileurl:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->break_mini_os:Ljava/lang/String;

    .line 36
    iput v2, p0, Lcom/kingroot/kinguser/di;->sign:I

    .line 37
    iput v2, p0, Lcom/kingroot/kinguser/di;->updatetime:I

    .line 38
    iput v2, p0, Lcom/kingroot/kinguser/di;->topsign:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->diffFileUrl:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/di;->diffFileSizeByte:J

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->apkFileMd5:Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/kingroot/kinguser/di;->plugintype:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->likepercent:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->channelId:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->short_desc:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->softTitle:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->subSoftTitle:Ljava/lang/String;

    .line 48
    iput v2, p0, Lcom/kingroot/kinguser/di;->jumptype:I

    .line 49
    iput v2, p0, Lcom/kingroot/kinguser/di;->appParentCategory:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->appSubCategoryName:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->strExtend:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/kingroot/kinguser/di;->position:I

    .line 55
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 185
    sget-object v0, Lcom/kingroot/kinguser/di;->lw:Lcom/kingroot/kinguser/df;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/kingroot/kinguser/df;

    invoke-direct {v0}, Lcom/kingroot/kinguser/df;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/di;->lw:Lcom/kingroot/kinguser/df;

    .line 188
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/di;->lw:Lcom/kingroot/kinguser/df;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/df;

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    .line 189
    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->type:Ljava/lang/String;

    .line 190
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->softclass:Ljava/lang/String;

    .line 191
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->nick_name:Ljava/lang/String;

    .line 192
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->logourl:Ljava/lang/String;

    .line 193
    iget v0, p0, Lcom/kingroot/kinguser/di;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->filesize:I

    .line 194
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->publishtime:Ljava/lang/String;

    .line 195
    iget v0, p0, Lcom/kingroot/kinguser/di;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->downloadtimes:I

    .line 196
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->fileurl:Ljava/lang/String;

    .line 197
    iget v0, p0, Lcom/kingroot/kinguser/di;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->score:I

    .line 198
    iget v0, p0, Lcom/kingroot/kinguser/di;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->suser:I

    .line 199
    iget v0, p0, Lcom/kingroot/kinguser/di;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->iProductID:I

    .line 200
    iget v0, p0, Lcom/kingroot/kinguser/di;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->iSoftID:I

    .line 201
    iget v0, p0, Lcom/kingroot/kinguser/di;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->iFileID:I

    .line 202
    iget v0, p0, Lcom/kingroot/kinguser/di;->feetype:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->feetype:I

    .line 203
    iget v0, p0, Lcom/kingroot/kinguser/di;->fee:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->fee:F

    .line 204
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->pname:Ljava/lang/String;

    .line 205
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->pageurl:Ljava/lang/String;

    .line 206
    iget v0, p0, Lcom/kingroot/kinguser/di;->lfee:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->lfee:F

    .line 207
    iget v0, p0, Lcom/kingroot/kinguser/di;->cn_fee:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->cn_fee:F

    .line 208
    iget v0, p0, Lcom/kingroot/kinguser/di;->cn_lfee:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->cn_lfee:F

    .line 209
    sget-object v0, Lcom/kingroot/kinguser/di;->nj:[B

    if-nez v0, :cond_1

    .line 210
    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/di;->nj:[B

    .line 212
    sget-object v0, Lcom/kingroot/kinguser/di;->nj:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 214
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/di;->nj:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->expand:[B

    .line 215
    iget v0, p0, Lcom/kingroot/kinguser/di;->safeType:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->safeType:I

    .line 216
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->strSource:Ljava/lang/String;

    .line 217
    const/16 v0, 0x18

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->break_fileurl:Ljava/lang/String;

    .line 218
    const/16 v0, 0x19

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->break_mini_os:Ljava/lang/String;

    .line 219
    iget v0, p0, Lcom/kingroot/kinguser/di;->sign:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->sign:I

    .line 220
    iget v0, p0, Lcom/kingroot/kinguser/di;->updatetime:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->updatetime:I

    .line 221
    iget v0, p0, Lcom/kingroot/kinguser/di;->topsign:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->topsign:I

    .line 222
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->diffFileUrl:Ljava/lang/String;

    .line 223
    iget-wide v0, p0, Lcom/kingroot/kinguser/di;->diffFileSizeByte:J

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/di;->diffFileSizeByte:J

    .line 224
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->apkFileMd5:Ljava/lang/String;

    .line 225
    iget v0, p0, Lcom/kingroot/kinguser/di;->plugintype:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->plugintype:I

    .line 226
    const/16 v0, 0x21

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->likepercent:Ljava/lang/String;

    .line 227
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->channelId:Ljava/lang/String;

    .line 228
    const/16 v0, 0x23

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->short_desc:Ljava/lang/String;

    .line 229
    const/16 v0, 0x24

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->softTitle:Ljava/lang/String;

    .line 230
    const/16 v0, 0x25

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->subSoftTitle:Ljava/lang/String;

    .line 231
    iget v0, p0, Lcom/kingroot/kinguser/di;->jumptype:I

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->jumptype:I

    .line 232
    iget v0, p0, Lcom/kingroot/kinguser/di;->appParentCategory:I

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->appParentCategory:I

    .line 233
    const/16 v0, 0x28

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->appSubCategoryName:Ljava/lang/String;

    .line 234
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/di;->strExtend:Ljava/lang/String;

    .line 235
    iget v0, p0, Lcom/kingroot/kinguser/di;->position:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/di;->position:I

    .line 236
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->softkey:Lcom/kingroot/kinguser/df;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->softclass:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->nick_name:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->logourl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 71
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/di;->filesize:I

    if-eqz v0, :cond_4

    .line 72
    iget v0, p0, Lcom/kingroot/kinguser/di;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->publishtime:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/di;->downloadtimes:I

    if-eqz v0, :cond_6

    .line 78
    iget v0, p0, Lcom/kingroot/kinguser/di;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 80
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->fileurl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 83
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/di;->score:I

    if-eqz v0, :cond_8

    .line 84
    iget v0, p0, Lcom/kingroot/kinguser/di;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 86
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/di;->suser:I

    if-eqz v0, :cond_9

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/di;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 89
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/di;->iProductID:I

    if-eqz v0, :cond_a

    .line 90
    iget v0, p0, Lcom/kingroot/kinguser/di;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 92
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/di;->iSoftID:I

    if-eqz v0, :cond_b

    .line 93
    iget v0, p0, Lcom/kingroot/kinguser/di;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 95
    :cond_b
    iget v0, p0, Lcom/kingroot/kinguser/di;->iFileID:I

    if-eqz v0, :cond_c

    .line 96
    iget v0, p0, Lcom/kingroot/kinguser/di;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 98
    :cond_c
    iget v0, p0, Lcom/kingroot/kinguser/di;->feetype:I

    if-eqz v0, :cond_d

    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/di;->feetype:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 101
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/di;->fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    .line 102
    iget v0, p0, Lcom/kingroot/kinguser/di;->fee:F

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 104
    :cond_e
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->pname:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->pname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 107
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->pageurl:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->pageurl:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 110
    :cond_10
    iget v0, p0, Lcom/kingroot/kinguser/di;->lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_11

    .line 111
    iget v0, p0, Lcom/kingroot/kinguser/di;->lfee:F

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 113
    :cond_11
    iget v0, p0, Lcom/kingroot/kinguser/di;->cn_fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_12

    .line 114
    iget v0, p0, Lcom/kingroot/kinguser/di;->cn_fee:F

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 116
    :cond_12
    iget v0, p0, Lcom/kingroot/kinguser/di;->cn_lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_13

    .line 117
    iget v0, p0, Lcom/kingroot/kinguser/di;->cn_lfee:F

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 119
    :cond_13
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->expand:[B

    if-eqz v0, :cond_14

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->expand:[B

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 122
    :cond_14
    iget v0, p0, Lcom/kingroot/kinguser/di;->safeType:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->strSource:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->strSource:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 126
    :cond_15
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->break_fileurl:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->break_fileurl:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 129
    :cond_16
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->break_mini_os:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->break_mini_os:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 132
    :cond_17
    iget v0, p0, Lcom/kingroot/kinguser/di;->sign:I

    if-eqz v0, :cond_18

    .line 133
    iget v0, p0, Lcom/kingroot/kinguser/di;->sign:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 135
    :cond_18
    iget v0, p0, Lcom/kingroot/kinguser/di;->updatetime:I

    if-eqz v0, :cond_19

    .line 136
    iget v0, p0, Lcom/kingroot/kinguser/di;->updatetime:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 138
    :cond_19
    iget v0, p0, Lcom/kingroot/kinguser/di;->topsign:I

    if-eqz v0, :cond_1a

    .line 139
    iget v0, p0, Lcom/kingroot/kinguser/di;->topsign:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 141
    :cond_1a
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->diffFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->diffFileUrl:Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 144
    :cond_1b
    iget-wide v0, p0, Lcom/kingroot/kinguser/di;->diffFileSizeByte:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 145
    iget-wide v0, p0, Lcom/kingroot/kinguser/di;->diffFileSizeByte:J

    const/16 v2, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 147
    :cond_1c
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->apkFileMd5:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->apkFileMd5:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 150
    :cond_1d
    iget v0, p0, Lcom/kingroot/kinguser/di;->plugintype:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->likepercent:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->likepercent:Ljava/lang/String;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 154
    :cond_1e
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->channelId:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 157
    :cond_1f
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->short_desc:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 160
    :cond_20
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->softTitle:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->softTitle:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 163
    :cond_21
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->subSoftTitle:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->subSoftTitle:Ljava/lang/String;

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 166
    :cond_22
    iget v0, p0, Lcom/kingroot/kinguser/di;->jumptype:I

    if-eqz v0, :cond_23

    .line 167
    iget v0, p0, Lcom/kingroot/kinguser/di;->jumptype:I

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 169
    :cond_23
    iget v0, p0, Lcom/kingroot/kinguser/di;->appParentCategory:I

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->appSubCategoryName:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->appSubCategoryName:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 173
    :cond_24
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->strExtend:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/di;->strExtend:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 176
    :cond_25
    iget v0, p0, Lcom/kingroot/kinguser/di;->position:I

    if-eqz v0, :cond_26

    .line 177
    iget v0, p0, Lcom/kingroot/kinguser/di;->position:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 179
    :cond_26
    return-void
.end method
