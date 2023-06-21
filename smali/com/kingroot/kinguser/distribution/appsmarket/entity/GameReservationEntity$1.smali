.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public am(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity$1;->am(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    move-result-object v0

    return-object v0
.end method

.method public fz(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;
    .locals 1

    .prologue
    .line 92
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity$1;->fz(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/GameReservationEntity;

    move-result-object v0

    return-object v0
.end method
