.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activityId:Ljava/lang/String;

.field public busiRetCode:I

.field public openid:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public reservationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->busiRetCode:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->activityId:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->qq:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->openid:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->busiRetCode:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->activityId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->qq:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->openid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->busiRetCode:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->activityId:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->qq:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->openid:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->busiRetCode:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->busiRetCode:I

    .line 26
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->activityId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->activityId:Ljava/lang/String;

    .line 27
    iget v0, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->reservationType:I

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    .line 28
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->qq:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->qq:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/GetGameReservationResp;->openid:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->openid:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public Iv()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->busiRetCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->activityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->qq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->openid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    return-void
.end method
