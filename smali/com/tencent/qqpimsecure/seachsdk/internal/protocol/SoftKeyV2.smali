.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public categoryId:J

.field public certMd5:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public manifestMd5:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public softName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->manifestMd5:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    .line 20
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-virtual {p1, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    .line 56
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    .line 58
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->manifestMd5:Ljava/lang/String;

    .line 59
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    .line 60
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    .line 61
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->pkgName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 28
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    if-eqz v0, :cond_1

    .line 32
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->versionCode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->softName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->certMd5:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->manifestMd5:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 41
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->manifestMd5:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 44
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->channelId:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 46
    :cond_5
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 47
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftKeyV2;->categoryId:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 49
    :cond_6
    return-void
.end method
