.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public activityId:Ljava/lang/String;

.field public busiRetCode:I

.field public openid:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public reservationType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->busiRetCode:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->activityId:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->reservationType:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->qq:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->openid:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->busiRetCode:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->busiRetCode:I

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->activityId:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->reservationType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->reservationType:I

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->qq:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->openid:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->busiRetCode:I

    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->busiRetCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->activityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->activityId:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->reservationType:I

    if-eqz v0, :cond_2

    .line 31
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->reservationType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->qq:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->qq:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->openid:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->openid:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 39
    :cond_4
    return-void
.end method
