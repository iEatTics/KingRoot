.class public final Lcom/kingroot/kinguser/ca;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static lw:Lcom/kingroot/kinguser/df;


# instance fields
.field public Networkstandard:I

.field public categoryid:I

.field public downnetname:Ljava/lang/String;

.field public downnettype:I

.field public errorcode:I

.field public errormsg:Ljava/lang/String;

.field public filesize:I

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

.field public reportnetname:Ljava/lang/String;

.field public reportnettype:I

.field public rssi:I

.field public sdcardstatus:I

.field public softkey:Lcom/kingroot/kinguser/df;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nProductId:I

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nSoftId:I

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nFileId:I

    .line 13
    iput-byte v1, p0, Lcom/kingroot/kinguser/ca;->nSuccess:B

    .line 14
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nDownSize:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nUsedTime:I

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nMaxSpeed:I

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nAvgSpeed:I

    .line 18
    iput v1, p0, Lcom/kingroot/kinguser/ca;->nRetryTimes:I

    .line 19
    iput-byte v1, p0, Lcom/kingroot/kinguser/ca;->nDownType:B

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->softkey:Lcom/kingroot/kinguser/df;

    .line 21
    iput v1, p0, Lcom/kingroot/kinguser/ca;->categoryid:I

    .line 22
    iput v1, p0, Lcom/kingroot/kinguser/ca;->pos:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->url:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/kingroot/kinguser/ca;->errorcode:I

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/ca;->downnettype:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->downnetname:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/ca;->reportnettype:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->reportnetname:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->errormsg:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/kingroot/kinguser/ca;->rssi:I

    .line 31
    iput v2, p0, Lcom/kingroot/kinguser/ca;->sdcardstatus:I

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/ca;->filesize:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->hostaddress:Ljava/lang/String;

    .line 34
    iput v2, p0, Lcom/kingroot/kinguser/ca;->isvalid:I

    .line 35
    iput v1, p0, Lcom/kingroot/kinguser/ca;->Networkstandard:I

    .line 38
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nProductId:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nProductId:I

    .line 103
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nSoftId:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nSoftId:I

    .line 104
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nFileId:I

    .line 105
    iget-byte v0, p0, Lcom/kingroot/kinguser/ca;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/kingroot/kinguser/ca;->nSuccess:B

    .line 106
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nDownSize:I

    .line 107
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nUsedTime:I

    .line 108
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nMaxSpeed:I

    .line 109
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nAvgSpeed:I

    .line 110
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->nRetryTimes:I

    .line 111
    iget-byte v0, p0, Lcom/kingroot/kinguser/ca;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/kingroot/kinguser/ca;->nDownType:B

    .line 112
    sget-object v0, Lcom/kingroot/kinguser/ca;->lw:Lcom/kingroot/kinguser/df;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/kingroot/kinguser/df;

    invoke-direct {v0}, Lcom/kingroot/kinguser/df;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ca;->lw:Lcom/kingroot/kinguser/df;

    .line 115
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ca;->lw:Lcom/kingroot/kinguser/df;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/df;

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->softkey:Lcom/kingroot/kinguser/df;

    .line 116
    iget v0, p0, Lcom/kingroot/kinguser/ca;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->categoryid:I

    .line 117
    iget v0, p0, Lcom/kingroot/kinguser/ca;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->pos:I

    .line 118
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->url:Ljava/lang/String;

    .line 119
    iget v0, p0, Lcom/kingroot/kinguser/ca;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->errorcode:I

    .line 120
    iget v0, p0, Lcom/kingroot/kinguser/ca;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->downnettype:I

    .line 121
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->downnetname:Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/kingroot/kinguser/ca;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->reportnettype:I

    .line 123
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->reportnetname:Ljava/lang/String;

    .line 124
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->errormsg:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/kingroot/kinguser/ca;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->rssi:I

    .line 126
    iget v0, p0, Lcom/kingroot/kinguser/ca;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->sdcardstatus:I

    .line 127
    iget v0, p0, Lcom/kingroot/kinguser/ca;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->filesize:I

    .line 128
    const/16 v0, 0x17

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ca;->hostaddress:Ljava/lang/String;

    .line 129
    iget v0, p0, Lcom/kingroot/kinguser/ca;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->isvalid:I

    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/ca;->Networkstandard:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ca;->Networkstandard:I

    .line 131
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nProductId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nSoftId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 44
    iget-byte v0, p0, Lcom/kingroot/kinguser/ca;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/ca;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 50
    iget-byte v0, p0, Lcom/kingroot/kinguser/ca;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->softkey:Lcom/kingroot/kinguser/df;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/ca;->categoryid:I

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/ca;->categoryid:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 55
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ca;->pos:I

    if-eqz v0, :cond_1

    .line 56
    iget v0, p0, Lcom/kingroot/kinguser/ca;->pos:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->url:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 61
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ca;->errorcode:I

    if-eqz v0, :cond_3

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/ca;->errorcode:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 64
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/ca;->downnettype:I

    if-eqz v0, :cond_4

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/ca;->downnettype:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->downnetname:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->downnetname:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 70
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/ca;->reportnettype:I

    if-eqz v0, :cond_6

    .line 71
    iget v0, p0, Lcom/kingroot/kinguser/ca;->reportnettype:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 73
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->reportnetname:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->reportnetname:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 76
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->errormsg:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->errormsg:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 79
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/ca;->rssi:I

    if-eq v0, v2, :cond_9

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/ca;->rssi:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 82
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/ca;->sdcardstatus:I

    if-eq v0, v2, :cond_a

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/ca;->sdcardstatus:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 85
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/ca;->filesize:I

    if-eqz v0, :cond_b

    .line 86
    iget v0, p0, Lcom/kingroot/kinguser/ca;->filesize:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->hostaddress:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/ca;->hostaddress:Ljava/lang/String;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 91
    :cond_c
    iget v0, p0, Lcom/kingroot/kinguser/ca;->isvalid:I

    if-eq v0, v2, :cond_d

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/ca;->isvalid:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 94
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/ca;->Networkstandard:I

    if-eqz v0, :cond_e

    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ca;->Networkstandard:I

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 97
    :cond_e
    return-void
.end method
