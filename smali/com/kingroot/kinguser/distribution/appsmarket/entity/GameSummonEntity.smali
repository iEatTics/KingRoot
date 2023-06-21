.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;
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
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

.field public id:J

.field public orderId:J

.field public pkgName:Ljava/lang/String;

.field public timeEnd:J

.field public timeStart:J

.field public tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->versionCode:I

    .line 25
    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->id:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->orderId:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->versionCode:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->timeStart:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->timeEnd:J

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/buz;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->versionCode:I

    .line 25
    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 31
    iget-wide v0, p1, Lcom/kingroot/kinguser/buz;->id:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->id:J

    .line 32
    iget-wide v0, p1, Lcom/kingroot/kinguser/buz;->orderId:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->orderId:J

    .line 33
    iget-object v0, p1, Lcom/kingroot/kinguser/buz;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    .line 34
    iget v0, p1, Lcom/kingroot/kinguser/buz;->versionCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->versionCode:I

    .line 35
    iget-object v0, p1, Lcom/kingroot/kinguser/buz;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 36
    iget-object v0, p1, Lcom/kingroot/kinguser/buz;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 37
    iget-wide v0, p1, Lcom/kingroot/kinguser/buz;->timeStart:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->timeStart:J

    .line 38
    iget-wide v0, p1, Lcom/kingroot/kinguser/buz;->timeEnd:J

    iput-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->timeEnd:J

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->orderId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 65
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->timeStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameSummonEntity;->timeEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method
