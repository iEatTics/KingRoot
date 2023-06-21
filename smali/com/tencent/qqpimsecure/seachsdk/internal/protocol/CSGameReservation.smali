.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public activityId:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public openid:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public reqSource:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->activityId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->qq:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->openid:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->pkgName:Ljava/lang/String;

    .line 14
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->reqSource:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->versionName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->lc:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->activityId:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->qq:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->openid:Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->pkgName:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->reqSource:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->reqSource:I

    .line 56
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->versionName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->lc:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->activityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->activityId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->qq:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->qq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->openid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->openid:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->pkgName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 38
    :cond_3
    const/16 v0, 0x3e8

    iget v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->reqSource:I

    if-eq v0, v1, :cond_4

    .line 39
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->reqSource:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->versionName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 44
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->lc:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 45
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CSGameReservation;->lc:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 47
    :cond_6
    return-void
.end method
