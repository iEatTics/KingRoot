.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bQt:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

.field static bQu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field static nL:[B

.field static nM:[B


# instance fields
.field public backendExtendInfo:[B

.field public businessType:I

.field public downloadTimes:J

.field public fileMd5:Ljava/lang/String;

.field public fileSize:J

.field public fileUrl:Ljava/lang/String;

.field public flag:J

.field public frontendExtendInfo:[B

.field public ifSelected:Z

.field public jumpUrl:Ljava/lang/String;

.field public jumptype:I

.field public logoUrl:Ljava/lang/String;

.field public parentCategory:I

.field public shortDesc:Ljava/lang/String;

.field public softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

.field public softTitle:Ljava/lang/String;

.field public subCategoryName:Ljava/lang/String;

.field public videoInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->nL:[B

    .line 102
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->nL:[B

    aput-byte v1, v0, v1

    .line 104
    new-array v0, v2, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->nM:[B

    .line 106
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->nM:[B

    aput-byte v1, v0, v1

    .line 108
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->bQt:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->bQu:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/VideoInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/VideoInfo;-><init>()V

    .line 112
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->bQu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->logoUrl:Ljava/lang/String;

    .line 14
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileUrl:Ljava/lang/String;

    .line 16
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileMd5:Ljava/lang/String;

    .line 18
    iput-wide v4, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->flag:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softTitle:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->shortDesc:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->parentCategory:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->subCategoryName:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    .line 24
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    .line 25
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    .line 26
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    .line 27
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 28
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->ifSelected:Z

    .line 29
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->videoInfo:Ljava/util/ArrayList;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumpUrl:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->logoUrl:Ljava/lang/String;

    .line 118
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileUrl:Ljava/lang/String;

    .line 120
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    .line 121
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileMd5:Ljava/lang/String;

    .line 122
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->flag:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->flag:J

    .line 123
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softTitle:Ljava/lang/String;

    .line 124
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->shortDesc:Ljava/lang/String;

    .line 125
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->parentCategory:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->parentCategory:I

    .line 126
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->subCategoryName:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    .line 128
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    .line 129
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->nL:[B

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    .line 130
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->nM:[B

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    .line 131
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->bQt:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 132
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->ifSelected:Z

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->ifSelected:Z

    .line 133
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->bQu:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->videoInfo:Ljava/util/ArrayList;

    .line 134
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumpUrl:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 40
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->logoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->logoUrl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 43
    :cond_0
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 44
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->downloadTimes:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileUrl:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 49
    :cond_2
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 50
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileSize:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileMd5:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->fileMd5:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 55
    :cond_4
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->flag:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 56
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->flag:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 58
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softTitle:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 59
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softTitle:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->shortDesc:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 62
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->shortDesc:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 64
    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->parentCategory:I

    if-eqz v0, :cond_8

    .line 65
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->parentCategory:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 67
    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->subCategoryName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->subCategoryName:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 70
    :cond_9
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    if-eqz v0, :cond_a

    .line 71
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumptype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 73
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    if-eqz v0, :cond_b

    .line 74
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->businessType:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 76
    :cond_b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    if-eqz v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->backendExtendInfo:[B

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    if-eqz v0, :cond_d

    .line 80
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->frontendExtendInfo:[B

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 82
    :cond_d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v0, :cond_e

    .line 83
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->softBackgroundPic:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 85
    :cond_e
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->ifSelected:Z

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 86
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->videoInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->videoInfo:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 89
    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumpUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 90
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;->jumpUrl:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 92
    :cond_10
    return-void
.end method
