.class public final Lcom/kingroot/kinguser/dt;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static lw:Lcom/kingroot/kinguser/df;

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

.field public softkey:Lcom/kingroot/kinguser/df;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nProductId:I

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nSoftId:I

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nFileId:I

    .line 13
    iput-byte v1, p0, Lcom/kingroot/kinguser/dt;->nSuccess:B

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nDownSize:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nUsedTime:I

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nMaxSpeed:I

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nAvgSpeed:I

    .line 18
    iput v1, p0, Lcom/kingroot/kinguser/dt;->nRetryTimes:I

    .line 19
    iput-byte v1, p0, Lcom/kingroot/kinguser/dt;->nDownType:B

    .line 20
    iput-object v3, p0, Lcom/kingroot/kinguser/dt;->softkey:Lcom/kingroot/kinguser/df;

    .line 21
    iput v1, p0, Lcom/kingroot/kinguser/dt;->categoryid:I

    .line 22
    iput v1, p0, Lcom/kingroot/kinguser/dt;->pos:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->url:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/kingroot/kinguser/dt;->errorcode:I

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/dt;->downnettype:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->downnetname:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/dt;->reportnettype:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->reportnetname:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->errormsg:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/kingroot/kinguser/dt;->rssi:I

    .line 31
    iput v2, p0, Lcom/kingroot/kinguser/dt;->sdcardstatus:I

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/dt;->filesize:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->hostaddress:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/kingroot/kinguser/dt;->isvalid:I

    .line 35
    iput v1, p0, Lcom/kingroot/kinguser/dt;->Networkstandard:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->channelId:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->realPkgName:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->redirectUrl:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/dt;->come_from:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->ext_str:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/kingroot/kinguser/dt;->businessType:I

    .line 42
    iput v1, p0, Lcom/kingroot/kinguser/dt;->silentType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/dt;->downloadStartTime:J

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->realChannelId:Ljava/lang/String;

    .line 45
    iput-object v3, p0, Lcom/kingroot/kinguser/dt;->backendExtendInfo:[B

    .line 46
    iput-object v3, p0, Lcom/kingroot/kinguser/dt;->frontendExtendInfo:[B

    .line 49
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nProductId:I

    invoke-virtual {p1, v0, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nProductId:I

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nSoftId:I

    invoke-virtual {p1, v0, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nSoftId:I

    .line 150
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nFileId:I

    .line 151
    iget-byte v0, p0, Lcom/kingroot/kinguser/dt;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/kingroot/kinguser/dt;->nSuccess:B

    .line 152
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nDownSize:I

    .line 153
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nUsedTime:I

    .line 154
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nMaxSpeed:I

    .line 155
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nAvgSpeed:I

    .line 156
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->nRetryTimes:I

    .line 157
    iget-byte v0, p0, Lcom/kingroot/kinguser/dt;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/kingroot/kinguser/dt;->nDownType:B

    .line 158
    sget-object v0, Lcom/kingroot/kinguser/dt;->lw:Lcom/kingroot/kinguser/df;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/kingroot/kinguser/df;

    invoke-direct {v0}, Lcom/kingroot/kinguser/df;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/dt;->lw:Lcom/kingroot/kinguser/df;

    .line 161
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/dt;->lw:Lcom/kingroot/kinguser/df;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/df;

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->softkey:Lcom/kingroot/kinguser/df;

    .line 162
    iget v0, p0, Lcom/kingroot/kinguser/dt;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->categoryid:I

    .line 163
    iget v0, p0, Lcom/kingroot/kinguser/dt;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->pos:I

    .line 164
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->url:Ljava/lang/String;

    .line 165
    iget v0, p0, Lcom/kingroot/kinguser/dt;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->errorcode:I

    .line 166
    iget v0, p0, Lcom/kingroot/kinguser/dt;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->downnettype:I

    .line 167
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->downnetname:Ljava/lang/String;

    .line 168
    iget v0, p0, Lcom/kingroot/kinguser/dt;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->reportnettype:I

    .line 169
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->reportnetname:Ljava/lang/String;

    .line 170
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->errormsg:Ljava/lang/String;

    .line 171
    iget v0, p0, Lcom/kingroot/kinguser/dt;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->rssi:I

    .line 172
    iget v0, p0, Lcom/kingroot/kinguser/dt;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->sdcardstatus:I

    .line 173
    iget v0, p0, Lcom/kingroot/kinguser/dt;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->filesize:I

    .line 174
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->hostaddress:Ljava/lang/String;

    .line 175
    iget v0, p0, Lcom/kingroot/kinguser/dt;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->isvalid:I

    .line 176
    iget v0, p0, Lcom/kingroot/kinguser/dt;->Networkstandard:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->Networkstandard:I

    .line 177
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->channelId:Ljava/lang/String;

    .line 178
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->realPkgName:Ljava/lang/String;

    .line 179
    const/16 v0, 0x1c

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->redirectUrl:Ljava/lang/String;

    .line 180
    iget v0, p0, Lcom/kingroot/kinguser/dt;->come_from:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->come_from:I

    .line 181
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->ext_str:Ljava/lang/String;

    .line 182
    iget v0, p0, Lcom/kingroot/kinguser/dt;->businessType:I

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->businessType:I

    .line 183
    iget v0, p0, Lcom/kingroot/kinguser/dt;->silentType:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/dt;->silentType:I

    .line 184
    iget-wide v0, p0, Lcom/kingroot/kinguser/dt;->downloadStartTime:J

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/dt;->downloadStartTime:J

    .line 185
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->realChannelId:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/kingroot/kinguser/dt;->nL:[B

    if-nez v0, :cond_1

    .line 187
    new-array v0, v4, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/dt;->nL:[B

    .line 189
    sget-object v0, Lcom/kingroot/kinguser/dt;->nL:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 191
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/dt;->nL:[B

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->backendExtendInfo:[B

    .line 192
    sget-object v0, Lcom/kingroot/kinguser/dt;->nM:[B

    if-nez v0, :cond_2

    .line 193
    new-array v0, v4, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/dt;->nM:[B

    .line 195
    sget-object v0, Lcom/kingroot/kinguser/dt;->nM:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 197
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/dt;->nM:[B

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/dt;->frontendExtendInfo:[B

    .line 198
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nProductId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nSoftId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 54
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 55
    iget-byte v0, p0, Lcom/kingroot/kinguser/dt;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 56
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/dt;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 61
    iget-byte v0, p0, Lcom/kingroot/kinguser/dt;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->softkey:Lcom/kingroot/kinguser/df;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 63
    iget v0, p0, Lcom/kingroot/kinguser/dt;->categoryid:I

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/dt;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 66
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/dt;->pos:I

    if-eqz v0, :cond_1

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/dt;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->url:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 72
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/dt;->errorcode:I

    if-eqz v0, :cond_3

    .line 73
    iget v0, p0, Lcom/kingroot/kinguser/dt;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 75
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/dt;->downnettype:I

    if-eqz v0, :cond_4

    .line 76
    iget v0, p0, Lcom/kingroot/kinguser/dt;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->downnetname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->downnetname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 81
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/dt;->reportnettype:I

    if-eqz v0, :cond_6

    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/dt;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->reportnetname:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->reportnetname:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->errormsg:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->errormsg:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 90
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/dt;->rssi:I

    if-eq v0, v2, :cond_9

    .line 91
    iget v0, p0, Lcom/kingroot/kinguser/dt;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 93
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/dt;->sdcardstatus:I

    if-eq v0, v2, :cond_a

    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/dt;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 96
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/dt;->filesize:I

    if-eqz v0, :cond_b

    .line 97
    iget v0, p0, Lcom/kingroot/kinguser/dt;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->hostaddress:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->hostaddress:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 102
    :cond_c
    iget v0, p0, Lcom/kingroot/kinguser/dt;->isvalid:I

    if-eq v0, v2, :cond_d

    .line 103
    iget v0, p0, Lcom/kingroot/kinguser/dt;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 105
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/dt;->Networkstandard:I

    if-eqz v0, :cond_e

    .line 106
    iget v0, p0, Lcom/kingroot/kinguser/dt;->Networkstandard:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 108
    :cond_e
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->channelId:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 111
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->realPkgName:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->realPkgName:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 114
    :cond_10
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->redirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->redirectUrl:Ljava/lang/String;

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 117
    :cond_11
    iget v0, p0, Lcom/kingroot/kinguser/dt;->come_from:I

    if-eqz v0, :cond_12

    .line 118
    iget v0, p0, Lcom/kingroot/kinguser/dt;->come_from:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 120
    :cond_12
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->ext_str:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->ext_str:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 123
    :cond_13
    iget v0, p0, Lcom/kingroot/kinguser/dt;->businessType:I

    if-eqz v0, :cond_14

    .line 124
    iget v0, p0, Lcom/kingroot/kinguser/dt;->businessType:I

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 126
    :cond_14
    iget v0, p0, Lcom/kingroot/kinguser/dt;->silentType:I

    if-eqz v0, :cond_15

    .line 127
    iget v0, p0, Lcom/kingroot/kinguser/dt;->silentType:I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 129
    :cond_15
    iget-wide v0, p0, Lcom/kingroot/kinguser/dt;->downloadStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 130
    iget-wide v0, p0, Lcom/kingroot/kinguser/dt;->downloadStartTime:J

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 132
    :cond_16
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->realChannelId:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->realChannelId:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 135
    :cond_17
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->backendExtendInfo:[B

    if-eqz v0, :cond_18

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->backendExtendInfo:[B

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 138
    :cond_18
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->frontendExtendInfo:[B

    if-eqz v0, :cond_19

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/dt;->frontendExtendInfo:[B

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 141
    :cond_19
    return-void
.end method
