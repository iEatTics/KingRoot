.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPN:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

.field static bPP:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

.field static bQj:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;


# instance fields
.field public activityId:Ljava/lang/String;

.field public onlineFlag:Z

.field public publicDesc:Ljava/lang/String;

.field public reservationCount:J

.field public reservationId:J

.field public reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

.field public reservationUrl:Ljava/lang/String;

.field public softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

.field public validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->bPN:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 62
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->bQj:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    .line 64
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->bPP:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationId:J

    .line 11
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->activityId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationUrl:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->publicDesc:Ljava/lang/String;

    .line 16
    iput-wide v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationCount:J

    .line 17
    iput-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->onlineFlag:Z

    .line 21
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationId:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationId:J

    .line 70
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->bPN:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->activityId:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationUrl:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->bQj:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    .line 74
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->publicDesc:Ljava/lang/String;

    .line 75
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationCount:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationCount:J

    .line 76
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->bPP:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    .line 77
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->onlineFlag:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->onlineFlag:Z

    .line 78
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 28
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 29
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationId:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->softDetail:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SoftDetail;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->activityId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->activityId:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationUrl:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationUrl:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    if-eqz v0, :cond_4

    .line 41
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationStatus:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationStatus;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->publicDesc:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 44
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->publicDesc:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 46
    :cond_5
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationCount:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 47
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->reservationCount:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 49
    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    if-eqz v0, :cond_7

    .line 50
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->validTime:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TimeInfo;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 52
    :cond_7
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ReservationGame;->onlineFlag:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 53
    return-void
.end method
