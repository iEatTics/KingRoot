.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPR:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

.field static bQs:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;


# instance fields
.field public buttonNextAction:I

.field public groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

.field public groupId:J

.field public groupPicUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

.field public showType:I

.field public subTitle:Ljava/lang/String;

.field public tagId:J

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->bQs:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 57
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->bPR:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->title:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->subTitle:Ljava/lang/String;

    .line 13
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupPicUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 14
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->showType:I

    .line 15
    iput-object v3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    .line 16
    iput v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->buttonNextAction:I

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->tagId:J

    .line 20
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->title:Ljava/lang/String;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->subTitle:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->bQs:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupPicUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    .line 66
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->showType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->showType:I

    .line 67
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->bPR:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    .line 68
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->buttonNextAction:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->buttonNextAction:I

    .line 69
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->tagId:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->tagId:J

    .line 70
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 28
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->title:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->subTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->subTitle:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupPicUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupPicUrl:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/PictureUrl;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 39
    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->showType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    if-eqz v0, :cond_4

    .line 41
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 43
    :cond_4
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->buttonNextAction:I

    if-eqz v0, :cond_5

    .line 44
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->buttonNextAction:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 46
    :cond_5
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->tagId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 47
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ShowDetail;->tagId:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 49
    :cond_6
    return-void
.end method
