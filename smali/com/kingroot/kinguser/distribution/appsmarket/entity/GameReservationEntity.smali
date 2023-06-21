.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public activityId:Ljava/lang/String;

.field public beginTime:J

.field public endTime:J

.field public onlineFlag:Z

.field public publicDesc:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public reservationCount:J

.field public reservationId:J

.field public reservationStatus:I

.field public reservationUrl:Ljava/lang/String;

.field public wx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    .line 25
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    .line 26
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationId:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationCount:J

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->beginTime:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->endTime:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationStatus:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    .line 48
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method public static b(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->activityId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationId:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationId:J

    .line 101
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->publicDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationCount:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationCount:J

    .line 104
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->beginTime:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->beginTime:J

    .line 105
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-wide v2, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->endTime:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->endTime:J

    .line 106
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->qq:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->wx:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->reservationStatus:I

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationStatus:I

    .line 109
    iget-object v1, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mGameReservationInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;

    iget-boolean v1, v1, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$GameReservationInfo;->onlineFlag:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    .line 111
    :cond_0
    return-object v0
.end method


# virtual methods
.method public Iu()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->activityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->publicDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->beginTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
