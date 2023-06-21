.class public final Lcom/kingroot/kinguser/de;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static lw:Lcom/kingroot/kinguser/df;

.field static ne:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cu;",
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
            "Lcom/kingroot/kinguser/bs;",
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

.field public asopt:I

.field public autostart:I

.field public break_fileurl:Ljava/lang/String;

.field public break_mini_os:Ljava/lang/String;

.field public cn_fee:F

.field public cn_lfee:F

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bs;",
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
            "Lcom/kingroot/kinguser/cu;",
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

.field public softkey:Lcom/kingroot/kinguser/df;

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

.field public strLinkContent:Ljava/lang/String;

.field public strLinkUrl:Ljava/lang/String;

.field public strSource:Ljava/lang/String;

.field public suser:I

.field public type:Ljava/lang/String;

.field public update:I

.field public version_break:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->softkey:Lcom/kingroot/kinguser/df;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->short_desc:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->description:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->type:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->softclass:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->procinfo:Ljava/util/ArrayList;

    .line 16
    iput v2, p0, Lcom/kingroot/kinguser/de;->smsmonitor:I

    .line 17
    iput v2, p0, Lcom/kingroot/kinguser/de;->phonemonitor:I

    .line 18
    iput v2, p0, Lcom/kingroot/kinguser/de;->netaccess:I

    .line 19
    iput v2, p0, Lcom/kingroot/kinguser/de;->autostart:I

    .line 20
    iput v2, p0, Lcom/kingroot/kinguser/de;->asopt:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->nick_name:Ljava/lang/String;

    .line 22
    iput v2, p0, Lcom/kingroot/kinguser/de;->reportFeature:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->logourl:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/kingroot/kinguser/de;->filesize:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->publishtime:Ljava/lang/String;

    .line 26
    iput v2, p0, Lcom/kingroot/kinguser/de;->downloadtimes:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->function:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->fileurl:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->picurls:Ljava/util/ArrayList;

    .line 30
    iput v2, p0, Lcom/kingroot/kinguser/de;->official:I

    .line 31
    iput v2, p0, Lcom/kingroot/kinguser/de;->update:I

    .line 32
    iput v2, p0, Lcom/kingroot/kinguser/de;->score:I

    .line 33
    iput v2, p0, Lcom/kingroot/kinguser/de;->suser:I

    .line 34
    iput v2, p0, Lcom/kingroot/kinguser/de;->softDescTimestamp:I

    .line 35
    iput v2, p0, Lcom/kingroot/kinguser/de;->iProductID:I

    .line 36
    iput v2, p0, Lcom/kingroot/kinguser/de;->iSoftID:I

    .line 37
    iput v2, p0, Lcom/kingroot/kinguser/de;->iFileID:I

    .line 38
    iput v2, p0, Lcom/kingroot/kinguser/de;->feetype:I

    .line 39
    iput v3, p0, Lcom/kingroot/kinguser/de;->fee:F

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->pname:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->hprice:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->comments:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->logourls:Ljava/util/ArrayList;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->pageurl:Ljava/lang/String;

    .line 45
    iput v3, p0, Lcom/kingroot/kinguser/de;->lfee:F

    .line 46
    iput v2, p0, Lcom/kingroot/kinguser/de;->isoftclass:I

    .line 47
    iput v3, p0, Lcom/kingroot/kinguser/de;->cn_fee:F

    .line 48
    iput v3, p0, Lcom/kingroot/kinguser/de;->cn_lfee:F

    .line 49
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->srcpicurls:Ljava/util/ArrayList;

    .line 50
    iput-object v1, p0, Lcom/kingroot/kinguser/de;->expand:[B

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->strSource:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkContent:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkUrl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->break_fileurl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->version_break:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->break_mini_os:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->diffFileUrl:Ljava/lang/String;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/de;->diffFileSizeByte:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->apkFileMd5:Ljava/lang/String;

    .line 60
    iput v2, p0, Lcom/kingroot/kinguser/de;->plugintype:I

    .line 61
    iput v2, p0, Lcom/kingroot/kinguser/de;->sign:I

    .line 64
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 230
    sget-object v0, Lcom/kingroot/kinguser/de;->lw:Lcom/kingroot/kinguser/df;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/kingroot/kinguser/df;

    invoke-direct {v0}, Lcom/kingroot/kinguser/df;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/de;->lw:Lcom/kingroot/kinguser/df;

    .line 233
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/de;->lw:Lcom/kingroot/kinguser/df;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/df;

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->softkey:Lcom/kingroot/kinguser/df;

    .line 234
    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->short_desc:Ljava/lang/String;

    .line 235
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->description:Ljava/lang/String;

    .line 236
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->type:Ljava/lang/String;

    .line 237
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->softclass:Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/kingroot/kinguser/de;->ne:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/de;->ne:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Lcom/kingroot/kinguser/cu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cu;-><init>()V

    .line 241
    sget-object v1, Lcom/kingroot/kinguser/de;->ne:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/de;->ne:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->procinfo:Ljava/util/ArrayList;

    .line 244
    iget v0, p0, Lcom/kingroot/kinguser/de;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->smsmonitor:I

    .line 245
    iget v0, p0, Lcom/kingroot/kinguser/de;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->phonemonitor:I

    .line 246
    iget v0, p0, Lcom/kingroot/kinguser/de;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->netaccess:I

    .line 247
    iget v0, p0, Lcom/kingroot/kinguser/de;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->autostart:I

    .line 248
    iget v0, p0, Lcom/kingroot/kinguser/de;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->asopt:I

    .line 249
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->nick_name:Ljava/lang/String;

    .line 250
    iget v0, p0, Lcom/kingroot/kinguser/de;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->reportFeature:I

    .line 251
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->logourl:Ljava/lang/String;

    .line 252
    iget v0, p0, Lcom/kingroot/kinguser/de;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->filesize:I

    .line 253
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->publishtime:Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/kingroot/kinguser/de;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->downloadtimes:I

    .line 255
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->function:Ljava/lang/String;

    .line 256
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->fileurl:Ljava/lang/String;

    .line 257
    sget-object v0, Lcom/kingroot/kinguser/de;->nf:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/de;->nf:Ljava/util/ArrayList;

    .line 259
    const-string v0, ""

    .line 260
    sget-object v1, Lcom/kingroot/kinguser/de;->nf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/de;->nf:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->picurls:Ljava/util/ArrayList;

    .line 263
    iget v0, p0, Lcom/kingroot/kinguser/de;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->official:I

    .line 264
    iget v0, p0, Lcom/kingroot/kinguser/de;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->update:I

    .line 265
    iget v0, p0, Lcom/kingroot/kinguser/de;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->score:I

    .line 266
    iget v0, p0, Lcom/kingroot/kinguser/de;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->suser:I

    .line 267
    iget v0, p0, Lcom/kingroot/kinguser/de;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->softDescTimestamp:I

    .line 268
    iget v0, p0, Lcom/kingroot/kinguser/de;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->iProductID:I

    .line 269
    iget v0, p0, Lcom/kingroot/kinguser/de;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->iSoftID:I

    .line 270
    iget v0, p0, Lcom/kingroot/kinguser/de;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->iFileID:I

    .line 271
    iget v0, p0, Lcom/kingroot/kinguser/de;->feetype:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->feetype:I

    .line 272
    iget v0, p0, Lcom/kingroot/kinguser/de;->fee:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->fee:F

    .line 273
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->pname:Ljava/lang/String;

    .line 274
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->hprice:Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/kingroot/kinguser/de;->ng:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/de;->ng:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Lcom/kingroot/kinguser/bs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bs;-><init>()V

    .line 278
    sget-object v1, Lcom/kingroot/kinguser/de;->ng:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/de;->ng:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->comments:Ljava/util/ArrayList;

    .line 281
    sget-object v0, Lcom/kingroot/kinguser/de;->nh:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/de;->nh:Ljava/util/ArrayList;

    .line 283
    const-string v0, ""

    .line 284
    sget-object v1, Lcom/kingroot/kinguser/de;->nh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/de;->nh:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->logourls:Ljava/util/ArrayList;

    .line 287
    const/16 v0, 0x22

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->pageurl:Ljava/lang/String;

    .line 288
    iget v0, p0, Lcom/kingroot/kinguser/de;->lfee:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->lfee:F

    .line 289
    iget v0, p0, Lcom/kingroot/kinguser/de;->isoftclass:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->isoftclass:I

    .line 290
    iget v0, p0, Lcom/kingroot/kinguser/de;->cn_fee:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->cn_fee:F

    .line 291
    iget v0, p0, Lcom/kingroot/kinguser/de;->cn_lfee:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->cn_lfee:F

    .line 292
    sget-object v0, Lcom/kingroot/kinguser/de;->ni:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/de;->ni:Ljava/util/ArrayList;

    .line 294
    const-string v0, ""

    .line 295
    sget-object v1, Lcom/kingroot/kinguser/de;->ni:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/de;->ni:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->srcpicurls:Ljava/util/ArrayList;

    .line 298
    sget-object v0, Lcom/kingroot/kinguser/de;->nj:[B

    if-nez v0, :cond_6

    .line 299
    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/de;->nj:[B

    .line 301
    sget-object v0, Lcom/kingroot/kinguser/de;->nj:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 303
    :cond_6
    sget-object v0, Lcom/kingroot/kinguser/de;->nj:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->expand:[B

    .line 304
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->strSource:Ljava/lang/String;

    .line 305
    const/16 v0, 0x2a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkContent:Ljava/lang/String;

    .line 306
    const/16 v0, 0x2b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkUrl:Ljava/lang/String;

    .line 307
    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->break_fileurl:Ljava/lang/String;

    .line 308
    const/16 v0, 0x2d

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->version_break:Ljava/lang/String;

    .line 309
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->break_mini_os:Ljava/lang/String;

    .line 310
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->diffFileUrl:Ljava/lang/String;

    .line 311
    iget-wide v0, p0, Lcom/kingroot/kinguser/de;->diffFileSizeByte:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/de;->diffFileSizeByte:J

    .line 312
    const/16 v0, 0x31

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/de;->apkFileMd5:Ljava/lang/String;

    .line 313
    iget v0, p0, Lcom/kingroot/kinguser/de;->plugintype:I

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->plugintype:I

    .line 314
    iget v0, p0, Lcom/kingroot/kinguser/de;->sign:I

    const/16 v1, 0x33

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/de;->sign:I

    .line 315
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->softkey:Lcom/kingroot/kinguser/df;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->short_desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->short_desc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->description:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->type:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->type:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->softclass:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->procinfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->procinfo:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 83
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/de;->smsmonitor:I

    if-eqz v0, :cond_5

    .line 84
    iget v0, p0, Lcom/kingroot/kinguser/de;->smsmonitor:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 86
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/de;->phonemonitor:I

    if-eqz v0, :cond_6

    .line 87
    iget v0, p0, Lcom/kingroot/kinguser/de;->phonemonitor:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 89
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/de;->netaccess:I

    if-eqz v0, :cond_7

    .line 90
    iget v0, p0, Lcom/kingroot/kinguser/de;->netaccess:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 92
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/de;->autostart:I

    if-eqz v0, :cond_8

    .line 93
    iget v0, p0, Lcom/kingroot/kinguser/de;->autostart:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 95
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/de;->asopt:I

    if-eqz v0, :cond_9

    .line 96
    iget v0, p0, Lcom/kingroot/kinguser/de;->asopt:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 98
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->nick_name:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 101
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/de;->reportFeature:I

    if-eqz v0, :cond_b

    .line 102
    iget v0, p0, Lcom/kingroot/kinguser/de;->reportFeature:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 104
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->logourl:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 107
    :cond_c
    iget v0, p0, Lcom/kingroot/kinguser/de;->filesize:I

    if-eqz v0, :cond_d

    .line 108
    iget v0, p0, Lcom/kingroot/kinguser/de;->filesize:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->publishtime:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 113
    :cond_e
    iget v0, p0, Lcom/kingroot/kinguser/de;->downloadtimes:I

    if-eqz v0, :cond_f

    .line 114
    iget v0, p0, Lcom/kingroot/kinguser/de;->downloadtimes:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 116
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->function:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->function:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 119
    :cond_10
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->fileurl:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 122
    :cond_11
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->picurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->picurls:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 125
    :cond_12
    iget v0, p0, Lcom/kingroot/kinguser/de;->official:I

    if-eqz v0, :cond_13

    .line 126
    iget v0, p0, Lcom/kingroot/kinguser/de;->official:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 128
    :cond_13
    iget v0, p0, Lcom/kingroot/kinguser/de;->update:I

    if-eqz v0, :cond_14

    .line 129
    iget v0, p0, Lcom/kingroot/kinguser/de;->update:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 131
    :cond_14
    iget v0, p0, Lcom/kingroot/kinguser/de;->score:I

    if-eqz v0, :cond_15

    .line 132
    iget v0, p0, Lcom/kingroot/kinguser/de;->score:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 134
    :cond_15
    iget v0, p0, Lcom/kingroot/kinguser/de;->suser:I

    if-eqz v0, :cond_16

    .line 135
    iget v0, p0, Lcom/kingroot/kinguser/de;->suser:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 137
    :cond_16
    iget v0, p0, Lcom/kingroot/kinguser/de;->softDescTimestamp:I

    if-eqz v0, :cond_17

    .line 138
    iget v0, p0, Lcom/kingroot/kinguser/de;->softDescTimestamp:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 140
    :cond_17
    iget v0, p0, Lcom/kingroot/kinguser/de;->iProductID:I

    if-eqz v0, :cond_18

    .line 141
    iget v0, p0, Lcom/kingroot/kinguser/de;->iProductID:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 143
    :cond_18
    iget v0, p0, Lcom/kingroot/kinguser/de;->iSoftID:I

    if-eqz v0, :cond_19

    .line 144
    iget v0, p0, Lcom/kingroot/kinguser/de;->iSoftID:I

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 146
    :cond_19
    iget v0, p0, Lcom/kingroot/kinguser/de;->iFileID:I

    if-eqz v0, :cond_1a

    .line 147
    iget v0, p0, Lcom/kingroot/kinguser/de;->iFileID:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 149
    :cond_1a
    iget v0, p0, Lcom/kingroot/kinguser/de;->feetype:I

    if-eqz v0, :cond_1b

    .line 150
    iget v0, p0, Lcom/kingroot/kinguser/de;->feetype:I

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 152
    :cond_1b
    iget v0, p0, Lcom/kingroot/kinguser/de;->fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1c

    .line 153
    iget v0, p0, Lcom/kingroot/kinguser/de;->fee:F

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 155
    :cond_1c
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->pname:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->pname:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 158
    :cond_1d
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->hprice:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->hprice:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 161
    :cond_1e
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->comments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->comments:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 164
    :cond_1f
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->logourls:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->logourls:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 167
    :cond_20
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->pageurl:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->pageurl:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 170
    :cond_21
    iget v0, p0, Lcom/kingroot/kinguser/de;->lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_22

    .line 171
    iget v0, p0, Lcom/kingroot/kinguser/de;->lfee:F

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 173
    :cond_22
    iget v0, p0, Lcom/kingroot/kinguser/de;->isoftclass:I

    if-eqz v0, :cond_23

    .line 174
    iget v0, p0, Lcom/kingroot/kinguser/de;->isoftclass:I

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 176
    :cond_23
    iget v0, p0, Lcom/kingroot/kinguser/de;->cn_fee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_24

    .line 177
    iget v0, p0, Lcom/kingroot/kinguser/de;->cn_fee:F

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 179
    :cond_24
    iget v0, p0, Lcom/kingroot/kinguser/de;->cn_lfee:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_25

    .line 180
    iget v0, p0, Lcom/kingroot/kinguser/de;->cn_lfee:F

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 182
    :cond_25
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->srcpicurls:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->srcpicurls:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 185
    :cond_26
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->expand:[B

    if-eqz v0, :cond_27

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->expand:[B

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 188
    :cond_27
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->strSource:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->strSource:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 191
    :cond_28
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkContent:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkContent:Ljava/lang/String;

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 194
    :cond_29
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkUrl:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->strLinkUrl:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 197
    :cond_2a
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->break_fileurl:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->break_fileurl:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 200
    :cond_2b
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->version_break:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->version_break:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 203
    :cond_2c
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->break_mini_os:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->break_mini_os:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 206
    :cond_2d
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->diffFileUrl:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->diffFileUrl:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 209
    :cond_2e
    iget-wide v0, p0, Lcom/kingroot/kinguser/de;->diffFileSizeByte:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 210
    iget-wide v0, p0, Lcom/kingroot/kinguser/de;->diffFileSizeByte:J

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 212
    :cond_2f
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->apkFileMd5:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/de;->apkFileMd5:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 215
    :cond_30
    iget v0, p0, Lcom/kingroot/kinguser/de;->plugintype:I

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 216
    iget v0, p0, Lcom/kingroot/kinguser/de;->sign:I

    if-eqz v0, :cond_31

    .line 217
    iget v0, p0, Lcom/kingroot/kinguser/de;->sign:I

    const/16 v1, 0x33

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 219
    :cond_31
    return-void
.end method
