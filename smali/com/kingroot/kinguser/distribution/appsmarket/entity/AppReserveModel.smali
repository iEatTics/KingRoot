.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
.super Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/16 v1, 0xc

    const/16 v0, 0xa

    .line 16
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Landroid/os/Parcel;)V

    .line 17
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const/16 v0, 0xb

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    if-eqz v0, :cond_2

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 30
    :cond_2
    :goto_0
    return-void

    .line 28
    :cond_3
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 4

    .prologue
    const/16 v1, 0xc

    const/16 v0, 0xa

    .line 37
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 38
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    if-eqz v2, :cond_3

    .line 39
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->reservationStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->qq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->wx:Ljava/lang/String;

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/16 v0, 0xb

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->reservationEntity:Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;->onlineFlag:Z

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 51
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 39
    goto :goto_0

    .line 49
    :cond_3
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    goto :goto_1
.end method

.method public static ag(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public Ip()Z
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;)V
    .locals 4

    .prologue
    const/16 v1, 0xc

    const/16 v0, 0xa

    .line 91
    if-eqz p1, :cond_2

    .line 92
    iget v2, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->reservationType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->qq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationState;->openid:Ljava/lang/String;

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const/16 v0, 0xb

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x6

    return v0
.end method
