.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

.field static bPK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;


# instance fields
.field public activityId:Ljava/lang/String;

.field public bannerId:J

.field public bannerShowType:I

.field public categoryId:J

.field public expireTime:J

.field public groupId:J

.field public jumpType:I

.field public jumpUrl:Ljava/lang/String;

.field public pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

.field public showType:I

.field public softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bPJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 63
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bPK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerId:J

    .line 11
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    .line 12
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 13
    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    .line 15
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    .line 16
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    .line 17
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->activityId:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerShowType:I

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->groupId:J

    .line 23
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerId:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerId:J

    .line 69
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    .line 70
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bPJ:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 71
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bPK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 72
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    .line 73
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    .line 74
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    .line 75
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    .line 76
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->activityId:Ljava/lang/String;

    .line 77
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerShowType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerShowType:I

    .line 78
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->groupId:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->groupId:J

    .line 79
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 30
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 31
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->pictureUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 33
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->jumpUrl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 39
    :cond_1
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 40
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->categoryId:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 42
    :cond_2
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 43
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->expireTime:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 45
    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    if-eqz v0, :cond_4

    .line 46
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->showType:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->activityId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->activityId:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 51
    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->bannerShowType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 52
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->groupId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 53
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/BannerDetail;->groupId:J

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 55
    :cond_6
    return-void
.end method
