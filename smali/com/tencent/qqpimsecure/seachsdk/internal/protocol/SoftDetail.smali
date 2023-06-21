.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

.field static bQv:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

.field static bQw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;",
            ">;"
        }
    .end annotation
.end field

.field static bQx:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;


# instance fields
.field public authorName:Ljava/lang/String;

.field public averageRating:F

.field public description:Ljava/lang/String;

.field public newFeature:Ljava/lang/String;

.field public publishTime:Ljava/lang/String;

.field public ratingCount:J

.field public snapShotUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;",
            ">;"
        }
    .end annotation
.end field

.field public softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

.field public softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

.field public softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bPK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 67
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQv:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQw:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SnapShotPic;-><init>()V

    .line 71
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQx:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 11
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->publishTime:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->snapShotUrls:Ljava/util/ArrayList;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->averageRating:F

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->ratingCount:J

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->description:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->newFeature:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->authorName:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 78
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bPK:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    .line 79
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQv:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->publishTime:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQw:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->snapShotUrls:Ljava/util/ArrayList;

    .line 82
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->averageRating:F

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->averageRating:F

    .line 83
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->ratingCount:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->ratingCount:J

    .line 84
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->description:Ljava/lang/String;

    .line 85
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->newFeature:Ljava/lang/String;

    .line 86
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->authorName:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->bQx:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    .line 88
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softKey:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 30
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softCommon:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftCommon;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->publishTime:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->publishTime:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->snapShotUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->snapShotUrls:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 39
    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->averageRating:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 40
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->averageRating:F

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 42
    :cond_3
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->ratingCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 43
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->ratingCount:J

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->description:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->description:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->newFeature:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->newFeature:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 51
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->authorName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 52
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->authorName:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    if-eqz v0, :cond_8

    .line 55
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;->softSearchInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftSearchInfo;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 57
    :cond_8
    return-void
.end method
